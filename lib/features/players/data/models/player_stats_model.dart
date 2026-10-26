import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/json_utils.dart';
import '../../../../core/models/player_summary_model.dart';
import '../../domain/entities/player_stats.dart';

part 'player_stats_model.freezed.dart';
part 'player_stats_model.g.dart';

@freezed
abstract class PlayerStatsModel with _$PlayerStatsModel {
  const factory PlayerStatsModel({
    @JsonKey(name: 'matches_played') @Default(0) int matchesPlayed,
    @Default(0) int wins,
    @Default(0) int losses,
    @JsonKey(name: 'win_rate') num? winRate,
    @JsonKey(name: 'walkover_wins') @Default(0) int walkoverWins,
    @JsonKey(name: 'walkover_losses') @Default(0) int walkoverLosses,
    @JsonKey(name: 'sets_won') @Default(0) int setsWon,
    @JsonKey(name: 'sets_lost') @Default(0) int setsLost,
    @JsonKey(name: 'games_won') @Default(0) int gamesWon,
    @JsonKey(name: 'games_lost') @Default(0) int gamesLost,
    @JsonKey(name: 'current_streak') Map<String, dynamic>? currentStreak,
    @JsonKey(name: 'best_win_streak') @Default(0) int bestWinStreak,
    @JsonKey(name: 'tournaments_played') @Default(0) int tournamentsPlayed,
    @Default(0) int titles,
    @JsonKey(name: 'finals_reached') @Default(0) int finalsReached,
    @JsonKey(name: 'last_played_at') DateTime? lastPlayedAt,
    int? winners,
    int? errors,
  }) = _PlayerStatsModel;

  factory PlayerStatsModel.fromJson(Map<String, dynamic> json) => _$PlayerStatsModelFromJson(json);
}

extension PlayerStatsModelX on PlayerStatsModel {
  PlayerStats toEntity() => PlayerStats(
        matchesPlayed: matchesPlayed,
        wins: wins,
        losses: losses,
        winRate: matchesPlayed == 0 ? null : winRate?.toDouble(),
        walkoverWins: walkoverWins,
        walkoverLosses: walkoverLosses,
        setsWon: setsWon,
        setsLost: setsLost,
        gamesWon: gamesWon,
        gamesLost: gamesLost,
        currentStreak: StreakInfo(
          type: switch (currentStreak?['type']) {
            'win' => StreakType.win,
            'loss' => StreakType.loss,
            _ => null,
          },
          count: Json.integer(currentStreak?['count']) ?? 0,
        ),
        bestWinStreak: bestWinStreak,
        tournamentsPlayed: tournamentsPlayed,
        titles: titles,
        finalsReached: finalsReached,
        lastPlayedAt: lastPlayedAt,
        winners: winners,
        errors: errors,
      );
}

PlayerStats playerStatsFromJson(Map<String, dynamic> json) =>
    PlayerStatsModel.fromJson(json).toEntity();

WinRecord _winRecord(dynamic raw) {
  final m = Json.map(raw);
  return WinRecord(matches: Json.integer(m?['matches']) ?? 0, wins: Json.integer(m?['wins']) ?? 0);
}

Map<String, WinRecord> _winRecordMap(dynamic raw) {
  final m = Json.map(raw);
  if (m == null) return const {};
  return {for (final e in m.entries) e.key: _winRecord(e.value)};
}

/// `advanced` has open-ended keys (stages, shot types), so it is parsed by
/// hand rather than through a generated model.
AdvancedStats advancedStatsFromJson(Map<String, dynamic> json) {
  final points = Json.map(json['point_stats']);
  return AdvancedStats(
    byStage: _winRecordMap(json['by_stage']),
    decidingSets: _winRecord(json['deciding_sets']),
    byCompetition: _winRecordMap(json['by_competition']),
    pointStats: PointStats(
      totalPoints: Json.integer(points?['total_points']) ?? 0,
      coverage: Json.decimal(points?['coverage']),
      attributedPoints: Json.integer(points?['attributed_points']) ?? 0,
      winnersByShot: Json.intMap(points?['winners_by_shot']),
      errorsByType: Json.intMap(points?['errors_by_type']),
    ),
    ratingTimeline: Json.listOfMaps(json['rating_timeline'])
        .where((e) => Json.date(e['date']) != null)
        .map((e) => RatingPoint(rating: Json.integer(e['rating']) ?? 0, date: Json.date(e['date'])!))
        .toList(),
    deepDive: Json.map(json['deep_dive']) == null ? null : _deepDive(Json.map(json['deep_dive'])!),
  );
}

DeepDive _deepDive(Map<String, dynamic> j) {
  final form = Json.map(j['form']);
  final first = Json.map(j['first_set']);
  final serve = Json.map(j['serve']);
  final points = Json.map(j['points']);
  return DeepDive(
    byRound: _winRecordMap(j['by_round']),
    form: Json.strings(form?['last']),
    last10: _winRecord(form?['last_10']),
    overall: _winRecord(form?['overall']),
    tiebreaks: _winRecord(j['tiebreaks']),
    wonFirstSet: _winRecord(first?['won_first']),
    lostFirstSet: _winRecord(first?['lost_first']),
    comebacks: Json.integer(first?['comebacks']) ?? 0,
    byPartner: [
      for (final p in Json.listOfMaps(j['by_partner']))
        if (Json.map(p['player']) != null) PartnerRecord(PlayerSummaryModel.fromJson(Json.map(p['player'])!).toEntity(), _winRecord(p)),
    ],
    byOpponent: [for (final o in Json.listOfMaps(j['by_opponent'])) OpponentRecord(Json.string(o['label']) ?? '?', _winRecord(o))],
    aces: Json.integer(serve?['aces']) ?? 0,
    doubleFaults: Json.integer(serve?['double_faults']) ?? 0,
    pointsWon: Json.integer(points?['won']) ?? 0,
    pointsLost: Json.integer(points?['lost']) ?? 0,
    pointsShare: Json.decimal(points?['share']),
    perMatch: [
      for (final m in Json.listOfMaps(j['per_match']))
        MatchLine(
          date: Json.date(m['date']),
          tournament: Json.string(m['tournament']),
          won: Json.boolean(m['won']),
          score: Json.string(m['score']) ?? '',
          winners: Json.integer(m['winners']),
          errors: Json.integer(m['errors']),
        ),
    ],
  );
}

PlayerStatsBundle playerStatsBundleFromJson(Map<String, dynamic> json) {
  final advanced = Json.map(json['advanced']);
  return PlayerStatsBundle(
    summary: playerStatsFromJson(Json.map(json['summary']) ?? const {}),
    advancedAvailable: Json.boolean(json['advanced_available']),
    advanced: advanced == null ? null : advancedStatsFromJson(advanced),
  );
}
