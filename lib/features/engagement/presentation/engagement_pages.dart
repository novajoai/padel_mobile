import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/di/injection.dart';
import '../../../core/error/failure.dart';
import '../../../core/routing/app_routes.dart';
import '../../../core/state/view_state.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_tokens.dart';
import '../../../core/utils/date_formatter.dart';
import '../../../core/utils/formatters.dart';
import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/empty_state.dart';
import '../../../core/widgets/feedback.dart';
import '../../../core/widgets/payment_webview.dart';
import '../../../core/widgets/player_avatar.dart';
import '../../../core/widgets/section_header.dart';
import '../../../core/widgets/state_builders.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../../premium/domain/entities/premium.dart';
import '../../tournaments/domain/entities/match.dart';
import '../domain/engagement_entities.dart';
import 'engagement_cubits.dart';

/// Green gem colour — popularity is always shown in green, apart from coins (gold).
const Color kGemGreen = Color(0xFF35C97A);

/// Coins gold.
const Color kCoinGold = AppColors.premiumGold;

/// Opens the MEPS page for [payment], then its status page; [after] runs when back.
Future<void> _payThenTrack(BuildContext context, Payment payment, {VoidCallback? after}) async {
  if (payment.checkoutUrl != null) await openPaymentPage(context, payment.checkoutUrl!);
  if (context.mounted) await context.push(AppRoutes.payment(payment.reference));
  after?.call();
}

void _showActionFailure(BuildContext context, ActionState state) {
  if (state is! ActionFailure) return;
  final l10n = AppLocalizations.of(context);
  if (state.failure is ProviderUnavailableFailure) {
    showAppSnack(context, l10n.premiumCheckoutSoon, icon: Icons.rocket_launch_rounded);
  } else {
    showFailure(context, state.failure);
  }
}

// ═══ Predictions ══════════════════════════════════════════════════════════

class PredictionsPage extends StatelessWidget {
  const PredictionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<PredictionMatchesCubit>()..load()),
        BlocProvider(create: (_) => sl<MyPredictionsCubit>()..load()),
        BlocProvider(create: (_) => sl<PredictionLeaderboardCubit>()..load()),
      ],
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(l10n.predictionsTitle),
            bottom: TabBar(
              isScrollable: true,
              padding: const EdgeInsetsDirectional.symmetric(horizontal: AppSpacing.md),
              tabs: [
                Tab(text: l10n.predictionsTabOpen),
                Tab(text: l10n.predictionsTabMine),
                Tab(text: l10n.predictionsTabLeaderboard),
              ],
            ),
          ),
          body: const TabBarView(children: [_OpenMatches(), _MyPredictions(), _PredictionLeaderboard()]),
        ),
      ),
    );
  }
}

class _OpenMatches extends StatelessWidget {
  const _OpenMatches();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BlocBuilder<PredictionMatchesCubit, PagedState<PredictionMatch>>(
      builder: (context, state) {
        final cubit = context.read<PredictionMatchesCubit>();
        return PagedStateView<PredictionMatch>(
          state: state,
          onLoadMore: cubit.loadMore,
          onRefresh: cubit.refresh,
          onRetry: cubit.load,
          header: Padding(
            padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.md),
            child: Text(l10n.predictionsRules(3, 2), style: context.text.bodySmall),
          ),
          empty: EmptyState(icon: Icons.insights_rounded, title: l10n.predictionsEmpty, message: l10n.predictionsRules(3, 2)),
          separator: Gap.md,
          itemBuilder: (context, item, _) => _PredictionCard(
            item: item,
            onChanged: () {
              cubit.refresh();
              context.read<MyPredictionsCubit>().refresh();
            },
          ),
        );
      },
    );
  }
}

class _MyPredictions extends StatelessWidget {
  const _MyPredictions();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BlocBuilder<MyPredictionsCubit, PagedState<PredictionMatch>>(
      builder: (context, state) {
        final cubit = context.read<MyPredictionsCubit>();
        final meta = state.extra ?? const {};
        final points = (meta['points'] as num?)?.toInt() ?? 0;
        final position = (meta['position'] as num?)?.toInt();
        final won = (meta['won'] as num?)?.toInt() ?? 0;
        final settled = won + ((meta['lost'] as num?)?.toInt() ?? 0);
        return PagedStateView<PredictionMatch>(
          state: state,
          onLoadMore: cubit.loadMore,
          onRefresh: cubit.refresh,
          onRetry: cubit.load,
          header: Padding(
            padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.md),
            child: AppCard(
              child: Row(
                children: [
                  const Icon(Icons.insights_rounded, color: kCoinGold, size: 32),
                  Gap.md,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(l10n.predictionPointsLabel, style: context.text.bodySmall),
                        Text('$points', style: AppTypography.number(context, size: 28, color: context.tokens.highlight)),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (position != null) Text(l10n.predictionPosition(position), style: context.text.titleSmall),
                      Text(l10n.predictionWonCount(won, settled), style: context.text.bodySmall),
                    ],
                  ),
                ],
              ),
            ),
          ),
          empty: EmptyState(icon: Icons.insights_rounded, title: l10n.predictionsMineEmpty, message: l10n.predictionsRules(3, 2)),
          separator: Gap.md,
          itemBuilder: (context, item, _) => _PredictionCard(item: item, onChanged: cubit.refresh),
        );
      },
    );
  }
}

class _PredictionLeaderboard extends StatelessWidget {
  const _PredictionLeaderboard();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BlocBuilder<PredictionLeaderboardCubit, PagedState<PredictionLeader>>(
      builder: (context, state) {
        final cubit = context.read<PredictionLeaderboardCubit>();
        return PagedStateView<PredictionLeader>(
          state: state,
          onLoadMore: cubit.loadMore,
          onRefresh: cubit.refresh,
          onRetry: cubit.load,
          empty: EmptyState(icon: Icons.leaderboard_rounded, title: l10n.predictionsLeaderboardEmpty, message: l10n.predictionsRules(3, 2)),
          separator: Gap.sm,
          itemBuilder: (context, r, _) => AppCard(
            onTap: () => context.push(AppRoutes.player(r.player.playerId)),
            padding: AppSpacing.cardDense,
            child: Row(
              children: [
                SizedBox(width: 32, child: Text('${r.position}', style: AppTypography.number(context, size: 18))),
                PlayerAvatar.fromSummary(r.player, size: AppSizes.avatarSm),
                Gap.md,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(r.player.name, style: context.text.titleSmall, maxLines: 1, overflow: TextOverflow.ellipsis),
                      Text(l10n.predictionWonCount(r.won, r.settled), style: context.text.bodySmall),
                    ],
                  ),
                ),
                Text('${r.points}', style: AppTypography.number(context, size: 20, color: context.tokens.highlight)),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _PredictionCard extends StatelessWidget {
  final PredictionMatch item;
  final VoidCallback onChanged;

  const _PredictionCard({required this.item, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final m = item.match;
    final mine = item.mine;
    final crowd = item.crowd;
    Widget team(MatchTeam? t, int? percent) {
      final picked = mine != null && t != null && mine.winnerTeamId == t.id;
      return Expanded(
        child: Container(
          padding: AppSpacing.cardDense,
          decoration: BoxDecoration(
            borderRadius: AppRadius.mdAll,
            color: picked ? context.tokens.highlight.withValues(alpha: 0.14) : null,
            border: Border.all(color: picked ? context.tokens.highlight : context.tokens.outline),
          ),
          child: Column(
            children: [
              Text(t?.label ?? l10n.matchTbd, style: context.text.titleSmall, textAlign: TextAlign.center, maxLines: 2, overflow: TextOverflow.ellipsis),
              if (percent != null) ...[
                Gap.xxs,
                Text('$percent%', style: AppTypography.number(context, size: 14, color: context.tokens.textMuted)),
              ],
            ],
          ),
        ),
      );
    }

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  [item.tournamentName, m.roundLabel].whereType<String>().join(' · '),
                  style: context.text.labelMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (m.scheduledAt != null) Text(DateFormatter.matchTime(m.scheduledAt!), style: context.text.labelSmall),
            ],
          ),
          Gap.sm,
          Row(
            children: [
              team(m.teamOne, crowd?.teamOnePercent),
              Padding(padding: const EdgeInsetsDirectional.symmetric(horizontal: AppSpacing.sm), child: Text('VS', style: context.text.labelSmall)),
              team(m.teamTwo, crowd?.teamTwoPercent),
            ],
          ),
          if (crowd != null) ...[
            Gap.xs,
            Text(l10n.predictionCrowdCount(crowd.total), style: context.text.labelSmall, textAlign: TextAlign.center),
          ],
          Gap.sm,
          Row(
            children: [
              Expanded(child: _PredictionStatus(item: item)),
              if (item.open)
                FilledButton.tonal(
                  onPressed: () async {
                    final saved = await showPredictionSheet(context, item);
                    if (saved == true) onChanged();
                  },
                  child: Text(mine == null ? l10n.predictionPredict : l10n.predictionEdit),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PredictionStatus extends StatelessWidget {
  final PredictionMatch item;

  const _PredictionStatus({required this.item});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final mine = item.mine;
    if (mine == null) {
      return Text(item.open ? '' : l10n.predictionClosed, style: context.text.bodySmall);
    }
    final m = item.match;
    final team = mine.winnerTeamId == m.teamOne?.id ? m.teamOne : m.teamTwo;
    final score = mine.hasScore ? ' (${mine.setsTeamOne}-${mine.setsTeamTwo})' : '';
    final (label, color) = switch (mine.status) {
      'won' => (l10n.predictionStatusWon(mine.points), AppColors.success),
      'lost' => (l10n.predictionStatusLost, AppColors.danger),
      'void' => (l10n.predictionStatusVoid, context.tokens.textMuted),
      _ => (l10n.predictionStatusPending, AppColors.info),
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${team?.label ?? ''}$score', style: context.text.bodyMedium, maxLines: 1, overflow: TextOverflow.ellipsis),
        Text(label, style: context.text.labelSmall?.copyWith(color: color)),
      ],
    );
  }
}

/// Pick the winner and, optionally, the exact sets. Returns true when saved.
Future<bool?> showPredictionSheet(BuildContext context, PredictionMatch item) {
  return showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (_) => BlocProvider(create: (_) => sl<EngagementActionCubit>(), child: _PredictionSheet(item: item)),
  );
}

class _PredictionSheet extends StatefulWidget {
  final PredictionMatch item;

  const _PredictionSheet({required this.item});

  @override
  State<_PredictionSheet> createState() => _PredictionSheetState();
}

class _PredictionSheetState extends State<_PredictionSheet> {
  int? _winner;
  (int, int)? _score;

  @override
  void initState() {
    super.initState();
    final mine = widget.item.mine;
    _winner = mine?.winnerTeamId;
    if (mine != null && mine.hasScore) _score = (mine.setsTeamOne!, mine.setsTeamTwo!);
  }

  /// Valid sets scores for the chosen winner (team one's sets first).
  List<(int, int)> _scores() {
    final m = widget.item.match;
    final toWin = widget.item.setsToWin;
    final oneWins = _winner == m.teamOne?.id;
    return [for (var lost = 0; lost < toWin; lost++) oneWins ? (toWin, lost) : (lost, toWin)];
  }

  Future<void> _save() async {
    final l10n = AppLocalizations.of(context);
    final cubit = context.read<EngagementActionCubit>();
    final ok = await cubit.predict(
      widget.item.match.id,
      winnerTeamId: _winner!,
      setsTeamOne: _score?.$1,
      setsTeamTwo: _score?.$2,
    );
    if (!mounted) return;
    if (ok) {
      showAppSnack(context, l10n.predictionSaved, icon: Icons.check_circle_rounded);
      Navigator.of(context).pop(true);
    } else {
      _showActionFailure(context, cubit.state);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final m = widget.item.match;
    final busy = context.watch<EngagementActionCubit>().state is ActionInProgress;
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(AppSpacing.xl, 0, AppSpacing.xl, MediaQuery.viewInsetsOf(context).bottom + AppSpacing.xl),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(l10n.predictionPick, style: context.text.titleLarge),
            Gap.md,
            for (final t in [m.teamOne, m.teamTwo])
              if (t != null)
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.sm),
                  child: _ChoiceTile(
                    title: t.label,
                    selected: _winner == t.id,
                    onTap: () => setState(() {
                      _winner = t.id;
                      _score = null;
                    }),
                  ),
                ),
            if (_winner != null) ...[
              Gap.sm,
              Text(l10n.predictionExactScore, style: context.text.titleSmall),
              Gap.sm,
              Wrap(
                spacing: AppSpacing.sm,
                children: [
                  for (final s in _scores())
                    ChoiceChip(
                      label: Text('${s.$1} - ${s.$2}'),
                      selected: _score == s,
                      onSelected: (on) => setState(() => _score = on ? s : null),
                    ),
                ],
              ),
            ],
            Gap.xl,
            FilledButton(
              onPressed: _winner == null || busy ? null : _save,
              child: busy ? const ButtonSpinner() : Text(l10n.predictionSave),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChoiceTile extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const _ChoiceTile({required this.title, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final t = context.tokens;
    return Material(
      color: selected ? t.highlight.withValues(alpha: 0.10) : Colors.transparent,
      borderRadius: AppRadius.mdAll,
      child: InkWell(
        borderRadius: AppRadius.mdAll,
        onTap: onTap,
        child: Container(
          padding: AppSpacing.cardDense,
          decoration: BoxDecoration(
            borderRadius: AppRadius.mdAll,
            border: Border.all(color: selected ? t.highlight : t.outline, width: selected ? 2 : 1),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: context.text.titleSmall),
                  ],
                ),
              ),
              Icon(selected ? Icons.radio_button_checked_rounded : Icons.radio_button_off_rounded, color: selected ? t.highlight : t.textMuted),
            ],
          ),
        ),
      ),
    );
  }
}

// ═══ My points — Playmaker Coins (B) ═════════════════════════════════════

class MyCoinsPage extends StatelessWidget {
  const MyCoinsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<CoinsWalletCubit>()..load()),
        BlocProvider(create: (_) => sl<EngagementActionCubit>()),
      ],
      child: Scaffold(
        appBar: AppBar(title: Text(l10n.coinsTitle)),
        body: BlocBuilder<CoinsWalletCubit, ViewState<CoinsWallet>>(
          builder: (context, state) => ViewStateView<CoinsWallet>(
            state: state,
            onRetry: () => context.read<CoinsWalletCubit>().load(),
            builder: (context, wallet) => RefreshIndicator(
              onRefresh: () => context.read<CoinsWalletCubit>().refresh(),
              child: ListView(
                padding: AppSpacing.page,
                children: [
                  _CoinBalanceCard(wallet: wallet),
                  SectionHeader(title: l10n.coinsStore, eyebrow: l10n.coinsRate(wallet.coinsPerJod)),
                  _CoinPackages(wallet: wallet),
                  SectionHeader(title: l10n.coinsHistory),
                  if (wallet.movements.isEmpty)
                    AppCard(child: Text(l10n.coinsHistoryEmpty, style: context.text.bodySmall))
                  else
                    for (final t in wallet.movements)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.sm),
                        child: AppCard(
                          padding: AppSpacing.cardDense,
                          child: Row(
                            children: [
                              Icon(t.amount >= 0 ? Icons.add_circle_rounded : Icons.remove_circle_rounded, color: t.amount >= 0 ? AppColors.success : AppColors.danger),
                              Gap.md,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(t.typeLabel ?? t.type, style: context.text.titleSmall),
                                    if (t.createdAt != null) Text(DateFormatter.fullDate(t.createdAt!), style: context.text.bodySmall),
                                  ],
                                ),
                              ),
                              CoinAmount(amount: t.amount, signed: true, style: AppTypography.number(context, size: 16)),
                            ],
                          ),
                        ),
                      ),
                  Gap.md,
                  Text(l10n.coinsSeparateNote, style: context.text.labelSmall, textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// A coin amount followed by the logo coin (instead of the letter B).
class CoinAmount extends StatelessWidget {
  final int amount;
  final bool signed;
  final TextStyle? style;

  const CoinAmount({super.key, required this.amount, this.signed = false, this.style});

  @override
  Widget build(BuildContext context) {
    final size = (style?.fontSize ?? 16) * 0.95;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('${signed && amount >= 0 ? '+' : ''}$amount', style: style),
        SizedBox(width: size * 0.25),
        CoinBadge(size: size),
      ],
    );
  }
}

/// The coin: the Playmaker Padel logo (assets/icon.png) in a gold ring.
class CoinBadge extends StatelessWidget {
  final double size;

  const CoinBadge({super.key, this.size = 36});

  @override
  Widget build(BuildContext context) => Container(
        width: size,
        height: size,
        padding: EdgeInsets.all(size * 0.06),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(colors: [Color(0xFFF7D774), kCoinGold]),
          border: Border.all(color: const Color(0xFFB8860B), width: 2),
        ),
        child: ClipOval(
          child: ColoredBox(
            color: Colors.white,
            child: Image.asset('assets/icon.png', fit: BoxFit.cover, filterQuality: FilterQuality.medium),
          ),
        ),
      );
}

class _CoinBalanceCard extends StatelessWidget {
  final CoinsWallet wallet;

  const _CoinBalanceCard({required this.wallet});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return AppCard(
      borderColor: kCoinGold.withValues(alpha: 0.5),
      child: Row(
        children: [
          const CoinBadge(size: 56),
          Gap.lg,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.coinsBalance, style: context.text.bodySmall),
                CoinAmount(amount: wallet.balance, style: AppTypography.number(context, size: 32, color: kCoinGold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CoinPackages extends StatelessWidget {
  final CoinsWallet wallet;

  const _CoinPackages({required this.wallet});

  Future<void> _buy(BuildContext context, CoinPackage p) async {
    final actions = context.read<EngagementActionCubit>();
    final wallets = context.read<CoinsWalletCubit>();
    final payment = await actions.buyCoins(p.key);
    if (!context.mounted) return;
    if (payment == null) {
      _showActionFailure(context, actions.state);
      return;
    }
    await _payThenTrack(context, payment, after: wallets.refresh);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final busy = context.watch<EngagementActionCubit>().state is ActionInProgress;
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: AppSpacing.md,
      crossAxisSpacing: AppSpacing.md,
      childAspectRatio: 1.15,
      children: [
        for (final p in wallet.packages)
          AppCard(
            onTap: busy ? null : () => _buy(context, p),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CoinBadge(),
                Gap.sm,
                CoinAmount(amount: p.coins, style: AppTypography.number(context, size: 22)),
                Text(Formatters.money(p.price, p.currency), style: context.text.bodySmall),
                Gap.xs,
                Text(l10n.coinsBuy, style: context.text.labelMedium?.copyWith(color: context.tokens.highlight)),
              ],
            ),
          ),
      ],
    );
  }
}

// ═══ Popularity — green gems ═════════════════════════════════════════════

/// The green gem of the Playmaker football app (tajammu/art/gem.webp, bundled).
class GemIcon extends StatelessWidget {
  final double size;

  const GemIcon({super.key, this.size = 20});

  @override
  Widget build(BuildContext context) => Image.asset(
        'assets/fame/gem.webp',
        width: size,
        height: size,
        fit: BoxFit.contain,
        errorBuilder: (_, _, _) => Icon(Icons.diamond_rounded, color: kGemGreen, size: size),
      );
}

/// Rank badge 1..5 (rising → crowd star), same art as the football app.
class RankBadge extends StatelessWidget {
  final int rank;
  final double size;

  const RankBadge({super.key, required this.rank, this.size = 28});

  @override
  Widget build(BuildContext context) => Image.asset(
        'assets/fame/rank-${rank.clamp(1, 5)}.webp',
        width: size,
        height: size,
        fit: BoxFit.contain,
        errorBuilder: (_, _, _) => SizedBox(width: size, height: size),
      );
}

Color _rarityColor(BuildContext context, String rarity) => switch (rarity) {
      'legendary' => AppColors.premiumGold,
      'epic' => const Color(0xFF9B59B6),
      'rare' => AppColors.info,
      _ => context.tokens.outline,
    };

/// A player's popularity: gems, rank, gifts received, latest senders.
class PopularityPage extends StatelessWidget {
  final String playerId;

  const PopularityPage({super.key, required this.playerId});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BlocProvider(
      create: (_) => PopularityCubit(sl(), playerId)..load(),
      child: Scaffold(
        appBar: AppBar(title: Text(l10n.popularityTitle)),
        body: BlocBuilder<PopularityCubit, ViewState<Popularity>>(
          builder: (context, state) => ViewStateView<Popularity>(
            state: state,
            onRetry: () => context.read<PopularityCubit>().load(),
            builder: (context, p) => RefreshIndicator(
              onRefresh: () => context.read<PopularityCubit>().refresh(),
              child: ListView(
                padding: AppSpacing.page,
                children: [
                  PopularityCard(popularity: p),
                  Gap.md,
                  FilledButton.icon(
                    onPressed: () async {
                      await showSendGiftSheet(context, playerId: playerId);
                      if (context.mounted) context.read<PopularityCubit>().refresh();
                    },
                    icon: const Icon(Icons.card_giftcard_rounded),
                    label: Text(l10n.giftsSend),
                  ),
                  SectionHeader(title: l10n.popularityReceivedTitle),
                  if (p.byGift.isEmpty)
                    AppCard(child: Text(l10n.popularityEmpty, style: context.text.bodySmall))
                  else
                    Wrap(
                      spacing: AppSpacing.sm,
                      runSpacing: AppSpacing.sm,
                      children: [for (final g in p.byGift) _GiftChip(gift: g.gift, count: g.count)],
                    ),
                  if (p.latest.isNotEmpty) ...[
                    SectionHeader(title: l10n.popularityLatest),
                    for (final r in p.latest)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.sm),
                        child: AppCard(
                          padding: AppSpacing.cardDense,
                          onTap: r.sender == null ? null : () => context.push(AppRoutes.player(r.sender!.playerId)),
                          child: Row(
                            children: [
                              Text(r.gift.emoji, style: const TextStyle(fontSize: 26)),
                              Gap.md,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(r.gift.name, style: context.text.titleSmall),
                                    if (r.sender != null)
                                      Text(r.sender!.name, style: context.text.bodySmall)
                                    // A reward from Playmaker (a right prediction).
                                    else if (r.fromPlaymaker)
                                      Text(l10n.giftFromPlaymaker, style: context.text.bodySmall),
                                  ],
                                ),
                              ),
                              Text('+${r.gift.gems}', style: AppTypography.number(context, size: 15, color: kGemGreen)),
                              const GemIcon(size: 16),
                            ],
                          ),
                        ),
                      ),
                  ],
                  Gap.md,
                  Text(l10n.popularityNote, style: context.text.labelSmall, textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Gems + rank + progress to the next rank (also used on the profile).
class PopularityCard extends StatelessWidget {
  final Popularity popularity;
  final VoidCallback? onTap;

  const PopularityCard({super.key, required this.popularity, this.onTap});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final p = popularity;
    return AppCard(
      onTap: onTap,
      borderColor: kGemGreen.withValues(alpha: 0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const GemIcon(size: 40),
              Gap.md,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(l10n.popularityTitle, style: context.text.bodySmall),
                    Row(
                      children: [
                        Text('${p.gems}', style: AppTypography.number(context, size: 28, color: kGemGreen)),
                        Gap.sm,
                        Flexible(child: Text(l10n.popularityGems(p.gems), style: context.text.bodySmall, overflow: TextOverflow.ellipsis)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.xxs),
                decoration: BoxDecoration(color: kGemGreen.withValues(alpha: 0.15), borderRadius: AppRadius.pillAll),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RankBadge(rank: p.rank, size: 20),
                    Gap.xs,
                    Text(p.rankLabel, style: context.text.labelMedium?.copyWith(color: kGemGreen, fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
              if (onTap != null) const Icon(Icons.chevron_right_rounded),
            ],
          ),
          Gap.sm,
          ClipRRect(
            borderRadius: AppRadius.pillAll,
            child: LinearProgressIndicator(value: p.progress, minHeight: 6, color: kGemGreen, backgroundColor: kGemGreen.withValues(alpha: 0.15)),
          ),
          Gap.xs,
          Text(
            p.nextLabel == null || p.nextAt == null ? l10n.popularityTopRank : l10n.popularityNextRank(p.nextAt! - p.gems, p.nextLabel!),
            style: context.text.labelSmall,
          ),
          Text(l10n.popularityGifts(p.gifts), style: context.text.labelSmall),
        ],
      ),
    );
  }
}

class _GiftChip extends StatelessWidget {
  final Gift gift;
  final int count;

  const _GiftChip({required this.gift, required this.count});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.xs),
        decoration: BoxDecoration(
          borderRadius: AppRadius.pillAll,
          border: Border.all(color: _rarityColor(context, gift.rarity), width: 1.5),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(gift.emoji, style: const TextStyle(fontSize: 18)),
            Gap.xs,
            Text('${gift.name} ×$count', style: context.text.labelMedium),
          ],
        ),
      );
}

/// My gifts: daily claim, free stock, catalog and my popularity.
class GiftsPage extends StatelessWidget {
  const GiftsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<GiftCatalogCubit>()..load()),
        BlocProvider(create: (_) => sl<EngagementActionCubit>()),
      ],
      child: Scaffold(
        appBar: AppBar(title: Text(l10n.giftsTitle)),
        body: BlocBuilder<GiftCatalogCubit, ViewState<GiftCatalog>>(
          builder: (context, state) => ViewStateView<GiftCatalog>(
            state: state,
            onRetry: () => context.read<GiftCatalogCubit>().load(),
            builder: (context, c) {
              final busy = context.watch<EngagementActionCubit>().state is ActionInProgress;
              return RefreshIndicator(
                onRefresh: () => context.read<GiftCatalogCubit>().refresh(),
                child: ListView(
                  padding: AppSpacing.page,
                  children: [
                    PopularityCard(popularity: c.myPopularity),
                    Gap.md,
                    FilledButton.icon(
                      style: FilledButton.styleFrom(backgroundColor: kGemGreen),
                      onPressed: c.dailyClaimed || busy
                          ? null
                          : () async {
                              final actions = context.read<EngagementActionCubit>();
                              final ok = await actions.claimDaily();
                              if (!context.mounted) return;
                              if (ok) {
                                showAppSnack(context, l10n.giftsDailyClaimedSnack, icon: Icons.card_giftcard_rounded);
                                context.read<GiftCatalogCubit>().refresh();
                              } else {
                                _showActionFailure(context, actions.state);
                              }
                            },
                      icon: Icon(c.dailyClaimed ? Icons.check_circle_rounded : Icons.card_giftcard_rounded),
                      label: Text(c.dailyClaimed ? l10n.giftsDailyClaimed : l10n.giftsDailyClaim),
                    ),
                    SectionHeader(title: l10n.giftsMyStock),
                    if (c.free.every((g) => g.inStock == 0))
                      AppCard(child: Text(l10n.giftsStockEmpty, style: context.text.bodySmall))
                    else
                      Wrap(
                        spacing: AppSpacing.sm,
                        runSpacing: AppSpacing.sm,
                        children: [for (final g in c.free.where((g) => g.inStock > 0)) _GiftChip(gift: g, count: g.inStock)],
                      ),
                    Gap.md,
                    OutlinedButton.icon(
                      onPressed: () => context.push(AppRoutes.playerSearch),
                      icon: const Icon(Icons.person_search_rounded),
                      label: Text(l10n.giftsSendToPlayers),
                    ),
                    SectionHeader(title: l10n.giftsCatalog),
                    for (final g in c.gifts)
                      Padding(
                        padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.sm),
                        child: _GiftRow(gift: g),
                      ),
                    Gap.md,
                    Text(l10n.popularityNote, style: context.text.labelSmall, textAlign: TextAlign.center),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _GiftRow extends StatelessWidget {
  final Gift gift;
  final Widget? trailing;
  final VoidCallback? onTap;

  const _GiftRow({required this.gift, this.trailing, this.onTap});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return AppCard(
      onTap: onTap,
      padding: AppSpacing.cardDense,
      borderColor: _rarityColor(context, gift.rarity),
      child: Row(
        children: [
          Text(gift.emoji, style: const TextStyle(fontSize: 30)),
          Gap.md,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(gift.name, style: context.text.titleSmall),
                Text(
                  gift.isFree ? (gift.earnedBy ?? l10n.giftsFree) : Formatters.money(gift.price ?? 0, gift.currency),
                  style: context.text.bodySmall,
                ),
              ],
            ),
          ),
          Text('+${gift.gems}', style: AppTypography.number(context, size: 15, color: kGemGreen)),
          const GemIcon(size: 16),
          if (trailing != null) ...[Gap.sm, trailing!],
        ],
      ),
    );
  }
}

/// Send a gift to [playerId]: a free one from my stock, or buy a paid one (card).
Future<void> showSendGiftSheet(BuildContext context, {required String playerId, String? playerName}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (_) => MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<GiftCatalogCubit>()..load()),
        BlocProvider(create: (_) => sl<EngagementActionCubit>()),
      ],
      child: _SendGiftSheet(playerId: playerId, playerName: playerName),
    ),
  );
}

class _SendGiftSheet extends StatelessWidget {
  final String playerId;
  final String? playerName;

  const _SendGiftSheet({required this.playerId, this.playerName});

  Future<void> _send(BuildContext context, Gift gift) async {
    final l10n = AppLocalizations.of(context);
    final actions = context.read<EngagementActionCubit>();
    if (gift.isFree) {
      if (await actions.sendGift(playerId, gift.key)) {
        if (!context.mounted) return;
        showAppSnack(context, l10n.giftsSent, icon: Icons.card_giftcard_rounded);
        Navigator.of(context).pop();
      } else if (context.mounted) {
        _showActionFailure(context, actions.state);
      }
      return;
    }
    final payment = await actions.buyGift(playerId, gift.key);
    if (!context.mounted) return;
    if (payment == null) {
      _showActionFailure(context, actions.state);
      return;
    }
    final navigator = Navigator.of(context);
    await _payThenTrack(context, payment);
    if (navigator.mounted) navigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.8,
      child: BlocBuilder<GiftCatalogCubit, ViewState<GiftCatalog>>(
        builder: (context, state) => ViewStateView<GiftCatalog>(
          state: state,
          onRetry: () => context.read<GiftCatalogCubit>().load(),
          builder: (context, c) {
            final busy = context.watch<EngagementActionCubit>().state is ActionInProgress;
            return ListView(
              padding: AppSpacing.page,
              children: [
                Text(playerName == null ? l10n.giftsSend : l10n.giftsSendTitle(playerName!), style: context.text.titleLarge),
                Gap.xs,
                Text(l10n.popularityNote, style: context.text.bodySmall),
                SectionHeader(title: l10n.giftsMyStock),
                for (final g in c.free)
                  Padding(
                    padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.sm),
                    child: _GiftRow(
                      gift: g,
                      onTap: g.inStock > 0 && !busy ? () => _send(context, g) : null,
                      trailing: Text(g.inStock > 0 ? '×${g.inStock}' : l10n.giftsNoneLeft, style: context.text.labelMedium),
                    ),
                  ),
                SectionHeader(title: l10n.giftsPaidSection),
                if (!c.canBuy)
                  AppCard(child: Text(l10n.giftsMinorCantBuy, style: context.text.bodySmall))
                else
                  for (final g in c.paid)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(bottom: AppSpacing.sm),
                      child: _GiftRow(
                        gift: g,
                        onTap: busy ? null : () => _send(context, g),
                        trailing: Icon(Icons.credit_card_rounded, color: context.tokens.highlight),
                      ),
                    ),
              ],
            );
          },
        ),
      ),
    );
  }
}

// ═══ Home shortcuts ══════════════════════════════════════════════════════

/// Predictions · My points · Popularity — three tiles under the home hero.
class EngagementShortcuts extends StatelessWidget {
  const EngagementShortcuts({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    Widget tile(Widget icon, String label, String route) => Expanded(
          child: AppCard(
            onTap: () => context.push(route),
            padding: const EdgeInsetsDirectional.symmetric(vertical: AppSpacing.md, horizontal: AppSpacing.sm),
            child: Column(
              children: [
                icon,
                Gap.xs,
                Text(label, style: context.text.labelMedium, textAlign: TextAlign.center, maxLines: 1, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        );
    return Row(
      children: [
        tile(Icon(Icons.insights_rounded, color: context.tokens.highlight, size: 28), l10n.predictionsTitle, AppRoutes.predictions),
        Gap.sm,
        tile(const CoinBadge(size: 28), l10n.coinsTitle, AppRoutes.myCoins),
        Gap.sm,
        tile(const GemIcon(size: 28), l10n.popularityTitle, AppRoutes.gifts),
      ],
    );
  }
}
