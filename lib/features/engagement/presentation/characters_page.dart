import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/di/injection.dart';
import '../../../core/state/view_state.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_tokens.dart';
import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/empty_state.dart';
import '../../../core/widgets/feedback.dart';
import '../../../core/widgets/state_builders.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../premium/presentation/widgets/three_d_viewer.dart';
import '../data/engagement_repository.dart';
import '../domain/engagement_entities.dart';
import 'engagement_cubits.dart';

/// Free 3D characters: preview one, pick it for the profile (no Premium).
/// Pops `true` when the choice changed.
class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BlocProvider(
      create: (_) => sl<CharacterCatalogCubit>()..load(),
      child: Scaffold(
        appBar: AppBar(title: Text(l10n.characterTitle)),
        body: BlocBuilder<CharacterCatalogCubit, ViewState<CharacterCatalog>>(
          builder: (context, state) => ViewStateView<CharacterCatalog>(
            state: state,
            onRetry: () => context.read<CharacterCatalogCubit>().load(),
            empty: EmptyState(
              icon: Icons.accessibility_new_rounded,
              title: l10n.characterEmpty,
              message: l10n.characterPickHint,
            ),
            builder: (context, catalog) => _CharacterPicker(catalog: catalog),
          ),
        ),
      ),
    );
  }
}

class _CharacterPicker extends StatefulWidget {
  final CharacterCatalog catalog;

  const _CharacterPicker({required this.catalog});

  @override
  State<_CharacterPicker> createState() => _CharacterPickerState();
}

class _CharacterPickerState extends State<_CharacterPicker> {
  late AvatarCharacter _shown = widget.catalog.characters.firstWhere(
    (c) => c.id == widget.catalog.selectedId,
    orElse: () => widget.catalog.characters.first,
  );
  bool _saving = false;

  Future<void> _save(int? id) async {
    setState(() => _saving = true);
    final result = await sl<EngagementRepository>().chooseCharacter(id);
    if (!mounted) return;
    setState(() => _saving = false);
    result.match(
      (failure) => showFailure(context, failure),
      (_) {
        showAppSnack(context, AppLocalizations.of(context).characterSaved, icon: Icons.check_circle_rounded);
        context.pop(true);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final selectedId = widget.catalog.selectedId;
    final isCurrent = _shown.id == selectedId;
    return ListView(
      padding: AppSpacing.page,
      children: [
        ThreeDViewer(key: ValueKey(_shown.id), assetUrl: _shown.modelUrl, alt: _shown.name, height: 340),
        Gap.md,
        Text(_shown.name, style: context.text.titleMedium, textAlign: TextAlign.center),
        Gap.md,
        FilledButton.icon(
          onPressed: _saving || isCurrent ? null : () => _save(_shown.id),
          icon: Icon(isCurrent ? Icons.check_rounded : Icons.person_pin_rounded),
          label: Text(isCurrent ? l10n.characterCurrent : l10n.characterUse),
        ),
        if (selectedId != null)
          TextButton(
            onPressed: _saving ? null : () => _save(null),
            child: Text(l10n.characterRemove),
          ),
        Gap.lg,
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: AppSpacing.md,
          crossAxisSpacing: AppSpacing.md,
          childAspectRatio: 0.8,
          children: [
            for (final c in widget.catalog.characters)
              AppCard(
                onTap: () => setState(() => _shown = c),
                borderColor: c.id == _shown.id ? context.tokens.highlight : null,
                child: Column(
                  children: [
                    Expanded(
                      child: c.thumbnailUrl == null
                          ? Icon(Icons.accessibility_new_rounded, size: 40, color: context.tokens.highlight)
                          : Image.network(
                              c.thumbnailUrl!,
                              fit: BoxFit.contain,
                              errorBuilder: (_, _, _) => Icon(Icons.accessibility_new_rounded, size: 40, color: context.tokens.highlight),
                            ),
                    ),
                    Gap.xs,
                    Text(c.name, style: context.text.labelMedium, maxLines: 1, overflow: TextOverflow.ellipsis),
                    if (c.id == selectedId) Icon(Icons.check_circle_rounded, size: 16, color: context.tokens.highlight),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
