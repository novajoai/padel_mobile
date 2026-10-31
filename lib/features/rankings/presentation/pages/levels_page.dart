import 'package:flutter/material.dart';

import '../../../../core/meta/enum_labels.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/app_tokens.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/level_badge.dart';
import '../../../../l10n/gen/app_localizations.dart';

/// The level ladder D- → A+ with the Skill Rating each level needs, the
/// player's own level and how many points are left to the next one.
class LevelsPage extends StatelessWidget {
  /// The player's Skill Rating (null when opened without one).
  final int? rating;

  const LevelsPage({super.key, this.rating});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final mins = context.enums.levelMinRatings.entries.toList()..sort((a, b) => a.value.compareTo(b.value));
    final current = rating == null ? -1 : mins.lastIndexWhere((e) => rating! >= e.value);
    final next = current >= 0 && current + 1 < mins.length ? mins[current + 1] : null;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.levelsTitle)),
      body: ListView(
        padding: AppSpacing.page,
        children: [
          if (current >= 0)
            AppCard(
              borderColor: LevelColors.of(mins[current].key).withValues(alpha: 0.6),
              child: Row(
                children: [
                  LevelBadge(level: mins[current].key, large: true),
                  Gap.lg,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(l10n.levelsYourRating(rating!), style: context.text.titleMedium),
                        Gap.xxs,
                        Text(
                          next == null ? l10n.levelsTop : l10n.levelsToNext(next.value - rating!, next.key),
                          style: context.text.bodySmall?.copyWith(color: context.tokens.highlight),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          Gap.md,
          Text(l10n.levelsHint, style: context.text.bodySmall),
          Gap.md,
          AppCard(
            child: Column(
              children: [
                // Highest first, like a ladder.
                for (var k = mins.length - 1; k >= 0; k--)
                  Container(
                    padding: const EdgeInsetsDirectional.symmetric(horizontal: AppSpacing.sm, vertical: AppSpacing.sm),
                    decoration: k == current
                        ? BoxDecoration(
                            color: LevelColors.of(mins[k].key).withValues(alpha: 0.15),
                            borderRadius: AppRadius.smAll,
                          )
                        : null,
                    child: Row(
                      children: [
                        SizedBox(width: 56, child: Align(alignment: AlignmentDirectional.centerStart, child: LevelBadge(level: mins[k].key))),
                        Expanded(
                          child: Text(
                            k + 1 < mins.length
                                ? l10n.levelsRange(mins[k].value, mins[k + 1].value - 1)
                                : l10n.levelsFrom(mins[k].value),
                            style: AppTypography.number(context, size: 15, weight: k == current ? FontWeight.w700 : FontWeight.w500),
                          ),
                        ),
                        if (k == current) Icon(Icons.person_pin_circle_rounded, color: context.tokens.highlight, size: 20),
                        if (k < current) const Icon(Icons.check_circle_rounded, color: AppColors.success, size: 18),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
