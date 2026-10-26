import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/meta/enum_labels.dart';
import '../../../../core/meta/enums_service.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/app_tokens.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../../../core/utils/formatters.dart';
import '../../../../core/widgets/app_card.dart';
import '../../../../core/widgets/badges.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/stat_card.dart';
import '../../../../l10n/gen/app_localizations.dart';
import '../../domain/entities/player_stats.dart';

/// Verified record grid. Null win rate (0 matches) renders "—".
class StatsSummaryGrid extends StatelessWidget {
  final PlayerStats stats;

  const StatsSummaryGrid({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final streak = stats.currentStreak;
    final streakValue = streak.type == null || streak.count == 0
        ? null
        : streak.type == StreakType.win
            ? l10n.streakWins(streak.count)
            : l10n.streakLosses(streak.count);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StatGrid(
          children: [
            StatCard(label: l10n.statMatches, value: '${stats.matchesPlayed}', icon: Icons.sports_tennis_rounded),
            StatCard(
              label: l10n.statWinRate,
              value: Formatters.percent(stats.winRate),
              icon: Icons.percent_rounded,
              accent: context.tokens.highlight,
            ),
            StatCard(label: l10n.statWins, value: '${stats.wins}', icon: Icons.trending_up_rounded, accent: AppColors.success),
            StatCard(label: l10n.statLosses, value: '${stats.losses}', icon: Icons.trending_down_rounded),
            StatCard(
              label: l10n.statWinners,
              value: stats.winners?.toString(),
              icon: Icons.bolt_rounded,
              accent: AppColors.success,
              caption: l10n.statWinnersHint,
            ),
            StatCard(
              label: l10n.statErrors,
              value: stats.errors?.toString(),
              icon: Icons.error_outline_rounded,
              accent: AppColors.danger,
              caption: l10n.statErrorsHint,
            ),
            StatCard(label: l10n.statStreak, value: streakValue, icon: Icons.local_fire_department_rounded),
            StatCard(label: l10n.statBestStreak, value: '${stats.bestWinStreak}', icon: Icons.whatshot_rounded),
            StatCard(label: l10n.statSets, value: '${stats.setsWon}–${stats.setsLost}', icon: Icons.grid_view_rounded),
            StatCard(label: l10n.statGames, value: '${stats.gamesWon}–${stats.gamesLost}', icon: Icons.apps_rounded),
            StatCard(label: l10n.statTournaments, value: '${stats.tournamentsPlayed}', icon: Icons.emoji_events_outlined),
            StatCard(label: l10n.statTitles, value: '${stats.titles}', icon: Icons.emoji_events_rounded, accent: AppColors.premiumGold),
            StatCard(label: l10n.statFinals, value: '${stats.finalsReached}', icon: Icons.military_tech_rounded),
            StatCard(
              label: l10n.statWalkovers,
              value: '${stats.walkoverWins}–${stats.walkoverLosses}',
              icon: Icons.directions_walk_rounded,
            ),
          ],
        ),
        if (stats.lastPlayedAt != null) ...[
          Gap.sm,
          Text(l10n.statLastPlayed(DateFormatter.fullDate(stats.lastPlayedAt!)), style: context.text.bodySmall),
        ],
      ],
    );
  }
}

/// Premium-owner analytics. Point analytics always show their coverage and
/// are labelled "limited data" below ~30%.
class AdvancedStatsView extends StatelessWidget {
  final AdvancedStats stats;

  const AdvancedStatsView({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final ps = stats.pointStats;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(eyebrow: l10n.premiumLabel, title: l10n.statsAdvanced, eyebrowColor: AppColors.premiumGold),
        Gap.md,
        if (stats.ratingTimeline.length >= 2) ...[
          AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.statsRatingTimeline, style: context.text.titleSmall),
                Gap.md,
                SizedBox(height: 160, child: RatingTimelineChart(points: stats.ratingTimeline)),
              ],
            ),
          ),
          Gap.md,
        ],
        AppCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l10n.statsByStage, style: context.text.titleSmall),
              Gap.sm,
              for (final e in stats.byStage.entries)
                _RecordBar(
                  label: switch (e.key) {
                    'group' => l10n.statsGroupStage,
                    'knockout' => l10n.statsKnockout,
                    _ => EnumsService.humanize(e.key),
                  },
                  record: e.value,
                ),
              _RecordBar(label: l10n.statsDecidingSets, record: stats.decidingSets),
              if (stats.byCompetition.isNotEmpty) ...[
                Gap.md,
                Text(l10n.statsByCompetition, style: context.text.titleSmall),
                Gap.sm,
                for (final e in stats.byCompetition.entries)
                  _RecordBar(
                    label: e.key == 'ranked' ? l10n.resultRanked : l10n.resultUnranked,
                    record: e.value,
                  ),
              ],
            ],
          ),
        ),
        Gap.md,
        AppCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: Text(l10n.statsPointAnalytics, style: context.text.titleSmall)),
                  StatusChip(
                    label: l10n.statsCoverage(Formatters.percent(ps.coverage) ?? l10n.valueDash),
                    color: ps.isLimited ? AppColors.warning : AppColors.success,
                  ),
                ],
              ),
              if (ps.isLimited) ...[
                Gap.xs,
                Text(l10n.statsLimitedData, style: context.text.labelMedium?.copyWith(color: AppColors.warning)),
              ],
              Gap.md,
              _Breakdown(title: l10n.statsWinnersByShot, values: ps.winnersByShot, group: EnumGroup.shotTypes, color: AppColors.success),
              Gap.md,
              _Breakdown(title: l10n.statsErrorsByType, values: ps.errorsByType, group: EnumGroup.errorTypes, color: AppColors.danger),
            ],
          ),
        ),
        if (stats.deepDive != null) ...[
          Gap.md,
          DeepDiveView(deep: stats.deepDive!),
        ],
      ],
    );
  }
}

/// Premium deep dive: form, rounds, sets, partners, opponents, serve, points, match by match.
class DeepDiveView extends StatelessWidget {
  final DeepDive deep;

  const DeepDiveView({super.key, required this.deep});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    Widget card(String title, List<Widget> children) => Padding(
          padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.md),
          child: AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(title, style: context.text.titleSmall), Gap.sm, ...children],
            ),
          ),
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        card(l10n.statsForm, [
          if (deep.form.isNotEmpty)
            Wrap(
              spacing: AppSpacing.xs,
              runSpacing: AppSpacing.xs,
              children: [
                for (final r in deep.form)
                  Container(
                    width: 28,
                    height: 28,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: (r == 'W' ? AppColors.success : AppColors.danger).withValues(alpha: 0.18),
                      borderRadius: AppRadius.smAll,
                    ),
                    child: Text(r == 'W' ? l10n.resultWon : l10n.resultLost, style: AppTypography.number(context, size: 13, color: r == 'W' ? AppColors.success : AppColors.danger)),
                  ),
              ],
            ),
          Gap.sm,
          _RecordBar(label: l10n.statsLast10, record: deep.last10),
          _RecordBar(label: l10n.statsOverall, record: deep.overall),
        ]),
        if (deep.byRound.isNotEmpty)
          card(l10n.statsByRound, [
            for (final e in deep.byRound.entries) _RecordBar(label: context.enums.label(EnumGroup.matchRounds, e.key), record: e.value),
          ]),
        card(l10n.statsSetsAnalysis, [
          _RecordBar(label: l10n.statsWonFirstSet, record: deep.wonFirstSet),
          _RecordBar(label: l10n.statsLostFirstSet, record: deep.lostFirstSet),
          _RecordBar(label: l10n.statsTiebreaks, record: deep.tiebreaks),
          _InlineValue(label: l10n.statsComebacks, value: '${deep.comebacks}'),
        ]),
        card(l10n.statsServeAndPoints, [
          _InlineValue(label: l10n.statsAces, value: '${deep.aces}', color: AppColors.success),
          _InlineValue(label: l10n.statsDoubleFaults, value: '${deep.doubleFaults}', color: AppColors.danger),
          _InlineValue(label: l10n.statsPointsWon, value: '${deep.pointsWon} / ${deep.pointsWon + deep.pointsLost}'),
          _InlineValue(label: l10n.statsPointsShare, value: Formatters.percent(deep.pointsShare) ?? l10n.valueDash, color: context.tokens.highlight),
        ]),
        if (deep.byPartner.isNotEmpty)
          card(l10n.statsByPartner, [for (final p in deep.byPartner) _RecordBar(label: p.player.name, record: p.record)]),
        if (deep.byOpponent.isNotEmpty)
          card(l10n.statsByOpponent, [for (final o in deep.byOpponent) _RecordBar(label: o.label, record: o.record)]),
        if (deep.perMatch.isNotEmpty)
          card(l10n.statsPerMatch, [
            Row(
              children: [
                const Expanded(child: SizedBox.shrink()),
                SizedBox(width: 56, child: Text(l10n.statWinners, style: context.text.labelSmall, textAlign: TextAlign.center)),
                SizedBox(width: 56, child: Text(l10n.statErrors, style: context.text.labelSmall, textAlign: TextAlign.center)),
              ],
            ),
            for (final m in deep.perMatch)
              Padding(
                padding: const EdgeInsetsDirectional.only(top: AppSpacing.xs),
                child: Row(
                  children: [
                    Text(m.won ? l10n.resultWon : l10n.resultLost, style: AppTypography.number(context, size: 14, color: m.won ? AppColors.success : AppColors.danger)),
                    Gap.sm,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(m.score.isEmpty ? (m.tournament ?? '') : m.score, style: context.text.bodyMedium),
                          Text(
                            [m.tournament, if (m.date != null) DateFormatter.dayMonth(m.date!)].whereType<String>().join(' · '),
                            style: context.text.labelSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 56, child: Text(m.winners?.toString() ?? l10n.valueDash, textAlign: TextAlign.center, style: AppTypography.number(context, size: 15, color: AppColors.success))),
                    SizedBox(width: 56, child: Text(m.errors?.toString() ?? l10n.valueDash, textAlign: TextAlign.center, style: AppTypography.number(context, size: 15, color: AppColors.danger))),
                  ],
                ),
              ),
          ]),
      ],
    );
  }
}

class _InlineValue extends StatelessWidget {
  final String label;
  final String value;
  final Color? color;

  const _InlineValue({required this.label, required this.value, this.color});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.sm),
        child: Row(
          children: [
            Expanded(child: Text(label, style: context.text.bodySmall)),
            Text(value, style: AppTypography.number(context, size: 15, color: color)),
          ],
        ),
      );
}

/// The key numbers on the front of the profile; tap to open the full stats.
class ProfileStatsStrip extends StatelessWidget {
  final PlayerStats stats;
  final VoidCallback? onTap;

  const ProfileStatsStrip({super.key, required this.stats, this.onTap});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final streak = stats.currentStreak;
    final streakValue = streak.type == null || streak.count == 0
        ? l10n.valueDash
        : streak.type == StreakType.win
            ? l10n.streakWins(streak.count)
            : l10n.streakLosses(streak.count);
    Widget cell(String label, String value, {Color? color}) => Expanded(
          child: Column(
            children: [
              FittedBox(fit: BoxFit.scaleDown, child: Text(value, style: AppTypography.number(context, size: 20, color: color))),
              Gap.xxs,
              Text(label, style: context.text.labelSmall, textAlign: TextAlign.center, maxLines: 1, overflow: TextOverflow.ellipsis),
            ],
          ),
        );
    return AppCard(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              cell(l10n.statMatches, '${stats.matchesPlayed}'),
              cell(l10n.statWinRate, Formatters.percent(stats.winRate) ?? l10n.valueDash, color: context.tokens.highlight),
              cell('${l10n.statWins}–${l10n.statLosses}', '${stats.wins}–${stats.losses}'),
            ],
          ),
          Gap.md,
          Row(
            children: [
              cell(l10n.statWinners, stats.winners?.toString() ?? l10n.valueDash, color: AppColors.success),
              cell(l10n.statErrors, stats.errors?.toString() ?? l10n.valueDash, color: AppColors.danger),
              cell(l10n.statStreak, streakValue),
            ],
          ),
          if (onTap != null) ...[
            Gap.sm,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(l10n.statsSeeAll, style: context.text.labelMedium?.copyWith(color: context.tokens.highlight)),
                Icon(Icons.chevron_right_rounded, size: 18, color: context.tokens.highlight),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _RecordBar extends StatelessWidget {
  final String label;
  final WinRecord record;

  const _RecordBar({required this.label, required this.record});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final rate = record.rate;
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(label, style: context.text.bodySmall)),
              Text(l10n.statsRecord(record.wins, record.matches), style: AppTypography.number(context, size: 15)),
              Gap.sm,
              Text(
                Formatters.percent(rate) ?? l10n.valueDash,
                style: AppTypography.number(context, size: 15, color: context.tokens.highlight),
              ),
            ],
          ),
          Gap.xs,
          ClipRRect(
            borderRadius: AppRadius.pillAll,
            child: LinearProgressIndicator(value: rate ?? 0, minHeight: 6),
          ),
        ],
      ),
    );
  }
}

class _Breakdown extends StatelessWidget {
  final String title;
  final Map<String, int> values;
  final String group;
  final Color color;

  const _Breakdown({required this.title, required this.values, required this.group, required this.color});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final entries = values.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
    final max = entries.isEmpty ? 1 : entries.first.value.clamp(1, 1 << 30);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTypography.eyebrow(context)),
        Gap.sm,
        if (entries.isEmpty) Text(l10n.valueDash, style: context.text.bodySmall),
        for (final e in entries)
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.xs),
            child: Row(
              children: [
                SizedBox(width: 96, child: Text(context.enums.label(group, e.key), style: context.text.bodySmall)),
                Expanded(
                  child: ClipRRect(
                    borderRadius: AppRadius.pillAll,
                    child: LinearProgressIndicator(value: e.value / max, color: color, minHeight: 8),
                  ),
                ),
                Gap.sm,
                SizedBox(width: 28, child: Text('${e.value}', style: AppTypography.number(context, size: 14), textAlign: TextAlign.end)),
              ],
            ),
          ),
      ],
    );
  }
}

/// Skill Rating over time.
class RatingTimelineChart extends StatelessWidget {
  final List<RatingPoint> points;

  const RatingTimelineChart({super.key, required this.points});

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    final spots = [for (var i = 0; i < points.length; i++) FlSpot(i.toDouble(), points[i].rating.toDouble())];
    final ratings = points.map((p) => p.rating);
    final minY = ratings.reduce((a, b) => a < b ? a : b) - 10;
    final maxY = ratings.reduce((a, b) => a > b ? a : b) + 10;
    return LineChart(
      LineChartData(
        minY: minY.toDouble(),
        maxY: maxY.toDouble(),
        gridData: FlGridData(
          drawVerticalLine: false,
          getDrawingHorizontalLine: (_) => FlLine(color: t.outline, strokeWidth: 1),
        ),
        borderData: FlBorderData(show: false),
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(),
          rightTitles: AxisTitles(),
          bottomTitles: AxisTitles(),
        ),
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipColor: (_) => t.surface2,
            getTooltipItems: (spots) => [
              for (final s in spots)
                LineTooltipItem(
                  '${s.y.round()}\n${DateFormatter.dayMonth(points[s.x.round()].date)}',
                  AppTypography.number(context, size: 13),
                ),
            ],
          ),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            preventCurveOverShooting: true,
            color: t.highlight,
            barWidth: 3,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(show: true, color: t.highlight.withValues(alpha: 0.12)),
          ),
        ],
      ),
    );
  }
}
