import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/api_endpoints.dart';
import '../../../core/routing/app_routes.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_tokens.dart';
import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/section_header.dart';
import '../../../l10n/gen/app_localizations.dart';
import 'avatar_stage.dart';

/// Profile: the player's modular character (seen by everyone), or — for the owner without
/// one — a card to create it. Separate from the Premium Meshy identity and the free characters.
class AvatarProfileSection extends StatelessWidget {
  /// Profile `avatar` (render spec) or null.
  final Map<String, dynamic>? spec;
  final bool isOwner;

  /// Called after the owner saved a new character (reload the profile).
  final VoidCallback? onChanged;

  const AvatarProfileSection({super.key, required this.spec, required this.isOwner, this.onChanged});

  /// The stage page lives next to the API: …/api/v1/ → …/avatar/stage.
  static String stageUrlFrom(String apiBase) => apiBase.replaceFirst(RegExp(r'api/v\d+/?$'), 'avatar/stage');

  Future<void> _edit(BuildContext context) async {
    final changed = await context.push<bool>(AppRoutes.avatarEditor);
    if (changed == true) onChanged?.call();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    if (spec == null) {
      if (!isOwner) return const SizedBox.shrink();
      return AppCard(
        onTap: () => _edit(context),
        child: Row(
          children: [
            Icon(Icons.face_retouching_natural_rounded, color: context.tokens.highlight),
            Gap.md,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.avatarCreate, style: context.text.titleSmall),
                  Text(l10n.avatarCreateHint, style: context.text.bodySmall),
                ],
              ),
            ),
            const Icon(Icons.chevron_right_rounded),
          ],
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.avatarTitle,
          actionLabel: isOwner ? l10n.avatarEdit : null,
          onAction: isOwner ? () => _edit(context) : null,
        ),
        Gap.md,
        AvatarStage(stageUrl: stageUrlFrom(ApiEndpoints.baseUrl), spec: spec, height: 360),
      ],
    );
  }
}
