import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/meta/enum_labels.dart';
import '../../../../core/meta/enums_service.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/state/view_state.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_tokens.dart';
import '../../../../core/widgets/empty_state.dart';
import '../../../../core/widgets/state_builders.dart';
import '../../../../l10n/gen/app_localizations.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_state.dart';
import '../../../players/domain/entities/player.dart';
import '../../domain/entities/ranking_entry.dart';
import '../bloc/rankings_cubits.dart';
import '../widgets/ranking_row.dart';

/// Season · Skill · XP boards with season picker, level chips, search,
/// podium, movement arrows, trends and a sticky "you" row.
class RankingsPage extends StatelessWidget {
  const RankingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<SeasonsCubit>()..load()),
        BlocProvider(create: (_) => sl<MyRankingCubit>()..load()),
      ],
      child: const _RankingsView(),
    );
  }
}

class _RankingsView extends StatefulWidget {
  const _RankingsView();

  @override
  State<_RankingsView> createState() => _RankingsViewState();
}

class _RankingsViewState extends State<_RankingsView> with SingleTickerProviderStateMixin {
  late final TabController _tabs = TabController(length: 3, vsync: this)..addListener(() => setState(() {}));
  final Map<RankingType, RankingBoardCubit> _boards = {
    for (final type in RankingType.values) type: RankingBoardCubit(sl(), type),
  };
  String? _level;
  Map<String, String> _filters = const {};
  String? _season;
  Timer? _debounce;
  bool _searching = false;

  RankingType get _type => RankingType.values[_tabs.index];

  @override
  void initState() {
    super.initState();
    for (final b in _boards.values) {
      b.load();
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _tabs.dispose();
    for (final b in _boards.values) {
      b.close();
    }
    super.dispose();
  }

  void _applyAll({String? level, bool clearLevel = false, String? query, Map<String, String>? filters}) {
    for (final b in _boards.values) {
      b.apply(level: level, clearLevel: clearLevel, query: query, filters: filters);
    }
  }

  Future<void> _openFilters() async {
    final picked = await showRankingFiltersSheet(context, _filters);
    if (picked == null || !mounted) return;
    setState(() => _filters = picked);
    _applyAll(filters: picked);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final myId = context.select<AuthBloc, String?>((b) => b.state.currentPlayer?.playerId);
    return Scaffold(
      appBar: AppBar(
        title: _searching
            ? TextField(
                autofocus: true,
                decoration: InputDecoration(hintText: l10n.rankingsSearchHint, prefixIcon: const Icon(Icons.search_rounded)),
                onChanged: (value) {
                  _debounce?.cancel();
                  _debounce = Timer(const Duration(milliseconds: 400), () => _applyAll(query: value.trim()));
                },
              )
            : Text(l10n.rankingsTitle),
        actions: [
          IconButton(
            tooltip: AppLocalizations.of(context).rankingsFilters,
            icon: Badge(
              isLabelVisible: _filters.isNotEmpty,
              label: Text('${_filters.length}'),
              child: const Icon(Icons.tune_rounded),
            ),
            onPressed: _openFilters,
          ),
          IconButton(
            icon: Icon(_searching ? Icons.close_rounded : Icons.search_rounded),
            onPressed: () {
              if (_searching) _applyAll(query: '');
              setState(() => _searching = !_searching);
            },
          ),
          _SeasonPicker(
            selected: _season,
            onSelected: (code) {
              setState(() => _season = code);
              _boards[RankingType.season]!.apply(season: code);
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabs,
          isScrollable: true,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: AppSpacing.md),
          tabs: [Tab(text: l10n.rankingsTabSeason), Tab(text: l10n.rankingsTabSkill), Tab(text: l10n.rankingsTabXp)],
        ),
      ),
      body: Column(
        children: [
          Gap.sm,
          _LevelChips(
            selected: _level,
            onSelected: (level) {
              setState(() => _level = level);
              _applyAll(level: level, clearLevel: level == null);
            },
          ),
          if (_filters.isNotEmpty)
            _ActiveFilters(
              filters: _filters,
              onRemove: (key) {
                final next = Map<String, String>.of(_filters)..remove(key);
                setState(() => _filters = next);
                _applyAll(filters: next);
              },
            ),
          Expanded(
            child: TabBarView(
              controller: _tabs,
              children: [
                for (final type in RankingType.values)
                  BlocProvider.value(
                    value: _boards[type]!,
                    child: _Board(type: type, myId: myId, showPodium: !_searching && _level == null && _filters.isEmpty),
                  ),
              ],
            ),
          ),
          BlocBuilder<MyRankingCubit, ViewState<MyRanking>>(
            builder: (context, state) {
              final me = state.dataOrNull;
              if (me == null || myId == null) return const SizedBox.shrink();
              return MyRankingBar(me: me, type: _type, onTap: () => context.push(AppRoutes.player(myId)));
            },
          ),
        ],
      ),
    );
  }
}

class _Board extends StatelessWidget {
  final RankingType type;
  final String? myId;
  final bool showPodium;

  const _Board({required this.type, required this.myId, required this.showPodium});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final note = switch (type) {
      RankingType.season => l10n.rankingsSeasonNote,
      RankingType.skill => l10n.rankingsSkillNote,
      RankingType.xp => l10n.rankingsXpNote,
    };
    return BlocBuilder<RankingBoardCubit, PagedState<RankingEntry>>(
      builder: (context, state) {
        final cubit = context.read<RankingBoardCubit>();
        final podium = showPodium && state.items.length >= 3;
        final rows = podium ? state.items.sublist(3) : state.items;
        return PagedStateView<RankingEntry>(
          state: state.copyWith(items: rows),
          onLoadMore: cubit.loadMore,
          onRefresh: cubit.refresh,
          onRetry: cubit.load,
          separator: Gap.sm,
          header: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(note, style: context.text.bodySmall),
              if (podium) ...[
                Gap.lg,
                RankingPodium(
                  top: state.items.take(3).toList(),
                  type: type,
                  onTap: (e) => context.push(AppRoutes.player(e.playerId)),
                ),
              ],
            ],
          ),
          empty: EmptyState(
            icon: Icons.leaderboard_outlined,
            title: l10n.emptyRankingsTitle,
            message: l10n.emptyRankingsMessage,
          ),
          itemBuilder: (context, entry, index) => RankingRow(
            entry: entry,
            type: type,
            fallbackPosition: index + (podium ? 4 : 1),
            isMe: entry.playerId == myId,
            onTap: () => context.push(AppRoutes.player(entry.playerId)),
          ),
        );
      },
    );
  }
}

class _LevelChips extends StatelessWidget {
  final String? selected;
  final ValueChanged<String?> onSelected;

  const _LevelChips({required this.selected, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final options = context.enums.options(EnumGroup.playerLevels);
    final levels = options.isNotEmpty
        ? options
        : PlayerLevelX.codes.map((l) => EnumOption(l, l)).toList();
    return SizedBox(
      height: AppSizes.chipHeight + 8,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: AppSpacing.pageH,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: AppSpacing.sm),
            child: ChoiceChip(label: Text(l10n.filterAll), selected: selected == null, onSelected: (_) => onSelected(null)),
          ),
          for (final o in levels)
            Padding(
              padding: const EdgeInsetsDirectional.only(end: AppSpacing.sm),
              child: ChoiceChip(label: Text(o.label), selected: selected == o.value, onSelected: (_) => onSelected(o.value)),
            ),
        ],
      ),
    );
  }
}

class _SeasonPicker extends StatelessWidget {
  final String? selected;
  final ValueChanged<String> onSelected;

  const _SeasonPicker({required this.selected, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BlocBuilder<SeasonsCubit, ViewState<List<Season>>>(
      builder: (context, state) {
        final seasons = state.dataOrNull ?? const [];
        if (seasons.isEmpty) return const SizedBox.shrink();
        final active = selected ?? seasons.where((s) => s.isActive).map((s) => s.code).firstOrNull;
        return PopupMenuButton<String>(
          tooltip: l10n.rankingsSeasonPicker,
          initialValue: active,
          onSelected: onSelected,
          itemBuilder: (_) => [
            for (final s in seasons) PopupMenuItem(value: s.code, child: Text(s.name)),
          ],
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: AppSpacing.md),
            child: Row(
              children: [
                Text(seasons.firstWhere((s) => s.code == active, orElse: () => seasons.first).name,
                    style: context.text.labelLarge),
                const Icon(Icons.expand_more_rounded),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// Label of one ranking filter value, in the app language.
String rankingFilterLabel(AppLocalizations l10n, String key, String value) => switch ('$key:$value') {
      'gender:male' => l10n.filterGenderMale,
      'gender:female' => l10n.filterGenderFemale,
      'nationality:jordanian' => l10n.filterJordanian,
      'nationality:foreign' => l10n.filterForeign,
      'age_group:u12' => l10n.ageUnder(12),
      'age_group:u14' => l10n.ageUnder(14),
      'age_group:u16' => l10n.ageUnder(16),
      'age_group:u18' => l10n.ageUnder(18),
      'age_group:adults' => l10n.ageAdults,
      'age_group:over_35' => l10n.ageOver(35),
      'age_group:over_45' => l10n.ageOver(45),
      _ => value,
    };

const _filterGroups = {
  'gender': ['male', 'female'],
  'nationality': ['jordanian', 'foreign'],
  'age_group': ['u12', 'u14', 'u16', 'u18', 'adults', 'over_35', 'over_45'],
};

/// Gender · nationality · age group — any combination (e.g. girls + Jordanian + under 16).
Future<Map<String, String>?> showRankingFiltersSheet(BuildContext context, Map<String, String> current) {
  return showModalBottomSheet<Map<String, String>>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (_) => _RankingFiltersSheet(initial: current),
  );
}

class _RankingFiltersSheet extends StatefulWidget {
  final Map<String, String> initial;

  const _RankingFiltersSheet({required this.initial});

  @override
  State<_RankingFiltersSheet> createState() => _RankingFiltersSheetState();
}

class _RankingFiltersSheetState extends State<_RankingFiltersSheet> {
  late final Map<String, String> _picked = Map.of(widget.initial);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final titles = {
      'gender': l10n.rankingsFilterGender,
      'nationality': l10n.rankingsFilterNationality,
      'age_group': l10n.rankingsFilterAge,
    };
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(AppSpacing.xl, 0, AppSpacing.xl, AppSpacing.xl),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(l10n.rankingsFilters, style: Theme.of(context).textTheme.titleLarge),
            for (final group in _filterGroups.entries) ...[
              Gap.lg,
              Text(titles[group.key]!, style: Theme.of(context).textTheme.titleSmall),
              Gap.sm,
              Wrap(
                spacing: AppSpacing.sm,
                runSpacing: AppSpacing.sm,
                children: [
                  for (final v in group.value)
                    ChoiceChip(
                      label: Text(rankingFilterLabel(l10n, group.key, v)),
                      selected: _picked[group.key] == v,
                      onSelected: (on) => setState(() => on ? _picked[group.key] = v : _picked.remove(group.key)),
                    ),
                ],
              ),
            ],
            Gap.xl,
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(<String, String>{}),
                    child: Text(l10n.rankingsFiltersClear),
                  ),
                ),
                Gap.md,
                Expanded(
                  child: FilledButton(
                    onPressed: () => Navigator.of(context).pop(Map<String, String>.of(_picked)),
                    child: Text(l10n.rankingsFiltersApply),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ActiveFilters extends StatelessWidget {
  final Map<String, String> filters;
  final ValueChanged<String> onRemove;

  const _ActiveFilters({required this.filters, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return SizedBox(
      height: 44,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsetsDirectional.symmetric(horizontal: AppSpacing.md),
        children: [
          for (final e in filters.entries)
            Padding(
              padding: const EdgeInsetsDirectional.only(end: AppSpacing.sm),
              child: InputChip(
                label: Text(rankingFilterLabel(l10n, e.key, e.value)),
                onDeleted: () => onRemove(e.key),
              ),
            ),
        ],
      ),
    );
  }
}
