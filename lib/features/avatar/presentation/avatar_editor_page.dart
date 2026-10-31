import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/di/injection.dart';
import '../../../core/routing/app_routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_tokens.dart';
import '../../../core/widgets/feedback.dart';
import '../../../core/widgets/state_views.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../domain/avatar_entities.dart';
import 'avatar_editor_cubit.dart';
import 'avatar_stage.dart';

/// Character editor: live 3D preview on top, one tab per part (from the server) + colors.
/// Pops `true` after a save.
class AvatarEditorPage extends StatelessWidget {
  const AvatarEditorPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => sl<AvatarEditorCubit>()..load(),
        child: const _EditorView(),
      );
}

class _EditorView extends StatefulWidget {
  const _EditorView();

  @override
  State<_EditorView> createState() => _EditorViewState();
}

class _EditorViewState extends State<_EditorView> {
  bool _debug = false;
  AvatarStageReport? _report;
  final List<AvatarStageReport> _history = [];
  Map<String, dynamic>? _live;

  void _onReport(AvatarStageReport r) => setState(() {
        _report = r;
        _history.add(r);
      });

  String _debugText() {
    final r = _report;
    final lines = <String>[
      if (_history.isNotEmpty && _history.first.firstPaintMs != null) 'first paint: ${_history.first.firstPaintMs} ms',
      if (r != null) ...[
        'last apply: ${r.timings['total']} ms',
        for (final e in r.timings.entries.where((e) => e.key != 'total')) '  ${e.key}: ${e.value is Map ? '${(e.value as Map)['ms']} ms · ${(e.value as Map)['kb']} KB' : e.value}',
        'triangles ${r.stats['triangles']} · draw calls ${r.stats['drawCalls']}',
        'GPU geometries ${r.stats['geometries']} · textures ${r.stats['textures']}',
        if (r.missingBones.isNotEmpty) 'MISSING BONES: ${r.missingBones.join(', ')}',
      ],
      if (_live != null) 'fps ${_live!['fps']} · JS heap ${_live!['jsHeapMb'] ?? 'n/a'} MB · cached ${_live!['cachedFiles']}',
      'switches ${_history.length}',
    ];
    return lines.join('\n');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BlocConsumer<AvatarEditorCubit, AvatarEditorState>(
      listenWhen: (a, b) => (b.lastFailure != null && a.lastFailure != b.lastFailure) || (!a.saved && b.saved),
      listener: (context, state) {
        if (state.saved) {
          showAppSnack(context, l10n.avatarSaved, icon: Icons.check_circle_rounded);
          context.pop(true);
        } else if (state.lastFailure != null) {
          showFailure(context, state.lastFailure!);
        }
      },
      builder: (context, state) {
        final catalog = state.catalog;
        return Scaffold(
          appBar: AppBar(
            title: Text(l10n.avatarTitle),
            actions: [
              IconButton(
                tooltip: l10n.avatarDebug,
                icon: Icon(_debug ? Icons.bug_report_rounded : Icons.bug_report_outlined),
                onPressed: () => setState(() => _debug = !_debug),
              ),
            ],
          ),
          body: state.loading
              ? const Center(child: CircularProgressIndicator())
              : state.loadFailure != null || catalog == null
                  ? ErrorState(failure: state.loadFailure!, onRetry: () => context.read<AvatarEditorCubit>().load())
                  : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(AppSpacing.gutter, AppSpacing.sm, AppSpacing.gutter, 0),
                          child: Stack(
                            children: [
                              AvatarStage(
                                stageUrl: catalog.stageUrl,
                                spec: state.spec,
                                height: MediaQuery.sizeOf(context).height * 0.42,
                                debug: _debug,
                                onReport: _onReport,
                                onStats: (s) => setState(() => _live = s),
                              ),
                              if (_debug)
                                PositionedDirectional(
                                  end: 8,
                                  bottom: 8,
                                  child: _DebugPanel(text: _debugText()),
                                ),
                            ],
                          ),
                        ),
                        Expanded(child: _Parts(catalog: catalog, state: state)),
                        SafeArea(
                          top: false,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(AppSpacing.gutter, AppSpacing.sm, AppSpacing.gutter, AppSpacing.sm),
                            child: state.hasLocked
                                ? FilledButton.icon(
                                    style: FilledButton.styleFrom(backgroundColor: AppColors.premiumGold, foregroundColor: AppColors.onPremium, minimumSize: const Size.fromHeight(48)),
                                    onPressed: () => context.push(AppRoutes.premium),
                                    icon: const Icon(Icons.workspace_premium_rounded),
                                    label: Text(l10n.avatarPremiumToSave),
                                  )
                                : FilledButton(
                                    style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(48)),
                                    onPressed: state.saving ? null : () => context.read<AvatarEditorCubit>().save(),
                                    child: state.saving
                                        ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                                        : Text(l10n.avatarSave),
                                  ),
                          ),
                        ),
                      ],
                    ),
        );
      },
    );
  }
}

class _DebugPanel extends StatelessWidget {
  final String text;

  const _DebugPanel({required this.text});

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.black.withValues(alpha: 0.75),
        borderRadius: AppRadius.smAll,
        child: InkWell(
          borderRadius: AppRadius.smAll,
          // Testers: long-press copies the numbers for the report.
          onLongPress: () {
            Clipboard.setData(ClipboardData(text: text));
            showAppSnack(context, AppLocalizations.of(context).avatarDebugCopied, icon: Icons.copy_rounded);
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(text, style: const TextStyle(color: Color(0xFFD7FFE6), fontSize: 10.5, fontFamily: 'monospace', height: 1.35)),
          ),
        ),
      );
}

class _Parts extends StatelessWidget {
  final AvatarCatalog catalog;
  final AvatarEditorState state;

  const _Parts({required this.catalog, required this.state});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final slots = catalog.slots.where((s) => s.items.isNotEmpty).toList();
    return DefaultTabController(
      length: slots.length + (catalog.channels.isEmpty ? 0 : 1),
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
              for (final s in slots) Tab(text: s.name, height: 40),
              if (catalog.channels.isNotEmpty) Tab(text: l10n.avatarColors, height: 40),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                for (final s in slots) _SlotGrid(slot: s, state: state),
                if (catalog.channels.isNotEmpty) _Colors(channels: catalog.channels, choice: state.choice),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SlotGrid extends StatelessWidget {
  final AvatarSlotOption slot;
  final AvatarEditorState state;

  const _SlotGrid({required this.slot, required this.state});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final items = slot.isBase ? slot.items : slot.itemsFor(state.baseKey);
    final selected = state.choice.items[slot.key];
    final cubit = context.read<AvatarEditorCubit>();
    final tiles = <Widget>[
      if (!slot.isRequired && !slot.isBase)
        _Tile(label: l10n.avatarNone, selected: selected == null, onTap: () => cubit.pickItem(slot.key, null), icon: Icons.block_rounded),
      for (final i in items)
        _Tile(
          label: i.name,
          imageUrl: i.thumbnailUrl,
          selected: selected == i.key,
          locked: i.locked,
          onTap: () => cubit.pickItem(slot.key, i.key),
          icon: switch (slot.kind) { 'base' => Icons.accessibility_new_rounded, 'attached' => Icons.sports_tennis_rounded, _ => Icons.checkroom_rounded },
        ),
    ];
    return GridView.count(
      padding: const EdgeInsets.all(AppSpacing.md),
      crossAxisCount: 3,
      mainAxisSpacing: AppSpacing.sm,
      crossAxisSpacing: AppSpacing.sm,
      childAspectRatio: 0.95,
      children: tiles,
    );
  }
}

class _Tile extends StatelessWidget {
  final String label;
  final String? imageUrl;
  final IconData icon;
  final bool selected;
  final bool locked;
  final VoidCallback onTap;

  const _Tile({required this.label, required this.icon, required this.selected, required this.onTap, this.imageUrl, this.locked = false});

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Material(
      color: t.surface,
      borderRadius: AppRadius.mdAll,
      child: InkWell(
        borderRadius: AppRadius.mdAll,
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: AppRadius.mdAll,
            border: Border.all(color: selected ? t.highlight : t.outline, width: selected ? 2 : 1),
          ),
          padding: const EdgeInsets.all(AppSpacing.sm),
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: imageUrl == null
                        ? Icon(icon, size: 34, color: selected ? t.highlight : t.textMuted)
                        : Image.network(imageUrl!, fit: BoxFit.contain, errorBuilder: (_, _, _) => Icon(icon, size: 34, color: t.textMuted)),
                  ),
                  Gap.xs,
                  Text(label, maxLines: 2, textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, style: context.text.labelMedium),
                ],
              ),
              if (locked) const PositionedDirectional(top: 0, end: 0, child: Icon(Icons.workspace_premium_rounded, size: 18, color: AppColors.premiumGold)),
            ],
          ),
        ),
      ),
    );
  }
}

class _Colors extends StatelessWidget {
  final List<AvatarChannel> channels;
  final AvatarChoice choice;

  const _Colors({required this.channels, required this.choice});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AvatarEditorCubit>();
    final t = context.tokens;
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.md),
      children: [
        for (final ch in channels) ...[
          Text(ch.name, style: context.text.titleSmall),
          Gap.sm,
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              for (final c in ch.colors)
                Semantics(
                  button: true,
                  label: c.name ?? c.hex,
                  selected: choice.colors[ch.key] == c.hex,
                  child: GestureDetector(
                    onTap: () => cubit.pickColor(ch.key, c.hex),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: _hex(c.hex),
                            shape: BoxShape.circle,
                            border: Border.all(color: choice.colors[ch.key] == c.hex ? t.highlight : t.outline, width: choice.colors[ch.key] == c.hex ? 3 : 1),
                          ),
                        ),
                        if (c.locked) const PositionedDirectional(top: -4, end: -4, child: Icon(Icons.workspace_premium_rounded, size: 16, color: AppColors.premiumGold)),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          Gap.lg,
        ],
      ],
    );
  }

  static Color _hex(String hex) => Color(int.parse('FF${hex.replaceFirst('#', '')}', radix: 16));
}
