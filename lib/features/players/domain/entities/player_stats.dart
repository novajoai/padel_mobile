import 'package:equatable/equatable.dart';

import '../../../../core/models/player_summary.dart';

enum StreakType { win, loss }

class StreakInfo extends Equatable {
  final StreakType? type;
  final int count;

  const StreakInfo({this.type, this.count = 0});

  @override
  List<Object?> get props => [type, count];
}

/// Verified competitive record. `winRate` is null with 0 matches — show "—".
class PlayerStats extends Equatable {
  final int matchesPlayed;
  final int wins;
  final int losses;
  final double? winRate;
  final int walkoverWins;
  final int walkoverLosses;
  final int setsWon;
  final int setsLost;
  final int gamesWon;
  final int gamesLost;
  final StreakInfo currentStreak;
  final int bestWinStreak;
  final int tournamentsPlayed;
  final int titles;
  final int finalsReached;
  final DateTime? lastPlayedAt;

  /// Winner: points the player ended with a direct winning shot (winner / ace). Null = not recorded yet.
  final int? winners;

  /// Loser: points the player lost with their own error. Null = not recorded yet.
  final int? errors;

  const PlayerStats({
    this.matchesPlayed = 0,
    this.wins = 0,
    this.losses = 0,
    this.winRate,
    this.walkoverWins = 0,
    this.walkoverLosses = 0,
    this.setsWon = 0,
    this.setsLost = 0,
    this.gamesWon = 0,
    this.gamesLost = 0,
    this.currentStreak = const StreakInfo(),
    this.bestWinStreak = 0,
    this.tournamentsPlayed = 0,
    this.titles = 0,
    this.finalsReached = 0,
    this.lastPlayedAt,
    this.winners,
    this.errors,
  });

  @override
  List<Object?> get props => [
        winners,
        errors,
        matchesPlayed,
        wins,
        losses,
        winRate,
        walkoverWins,
        walkoverLosses,
        setsWon,
        setsLost,
        gamesWon,
        gamesLost,
        currentStreak,
        bestWinStreak,
        tournamentsPlayed,
        titles,
        finalsReached,
        lastPlayedAt,
      ];
}

class WinRecord extends Equatable {
  final int matches;
  final int wins;

  const WinRecord({this.matches = 0, this.wins = 0});

  double? get rate => matches == 0 ? null : wins / matches;

  @override
  List<Object?> get props => [matches, wins];
}

class PointStats extends Equatable {
  final int totalPoints;

  /// 0–1 share of points with shot/error detail. Below ~0.3 = limited data.
  final double? coverage;
  final int attributedPoints;
  final Map<String, int> winnersByShot;
  final Map<String, int> errorsByType;

  const PointStats({
    this.totalPoints = 0,
    this.coverage,
    this.attributedPoints = 0,
    this.winnersByShot = const {},
    this.errorsByType = const {},
  });

  bool get isLimited => (coverage ?? 0) < 0.3;

  @override
  List<Object?> get props => [totalPoints, coverage, attributedPoints, winnersByShot, errorsByType];
}

class RatingPoint extends Equatable {
  final int rating;
  final DateTime date;

  const RatingPoint({required this.rating, required this.date});

  @override
  List<Object?> get props => [rating, date];
}

/// Premium-owner-only analytics block.
class AdvancedStats extends Equatable {
  final Map<String, WinRecord> byStage;
  final WinRecord decidingSets;
  final Map<String, WinRecord> byCompetition;
  final PointStats pointStats;
  final List<RatingPoint> ratingTimeline;
  final DeepDive? deepDive;

  const AdvancedStats({
    this.byStage = const {},
    this.decidingSets = const WinRecord(),
    this.byCompetition = const {},
    this.pointStats = const PointStats(),
    this.ratingTimeline = const [],
    this.deepDive,
  });

  @override
  List<Object?> get props => [byStage, decidingSets, byCompetition, pointStats, ratingTimeline, deepDive];
}

class PartnerRecord extends Equatable {
  final PlayerSummary player;
  final WinRecord record;

  const PartnerRecord(this.player, this.record);

  @override
  List<Object?> get props => [player, record];
}

class OpponentRecord extends Equatable {
  final String label;
  final WinRecord record;

  const OpponentRecord(this.label, this.record);

  @override
  List<Object?> get props => [label, record];
}

/// One of the last matches with the player's own Winner / Loser (null = not recorded).
class MatchLine extends Equatable {
  final DateTime? date;
  final String? tournament;
  final bool won;
  final String score;
  final int? winners;
  final int? errors;

  const MatchLine({this.date, this.tournament, required this.won, this.score = '', this.winners, this.errors});

  @override
  List<Object?> get props => [date, tournament, won, score, winners, errors];
}

/// Premium deep dive (`advanced.deep_dive`).
class DeepDive extends Equatable {
  final Map<String, WinRecord> byRound;

  /// Newest first: 'W' / 'L'.
  final List<String> form;
  final WinRecord last10;
  final WinRecord overall;
  final WinRecord tiebreaks;
  final WinRecord wonFirstSet;
  final WinRecord lostFirstSet;
  final int comebacks;
  final List<PartnerRecord> byPartner;
  final List<OpponentRecord> byOpponent;
  final int aces;
  final int doubleFaults;
  final int pointsWon;
  final int pointsLost;
  final double? pointsShare;
  final List<MatchLine> perMatch;

  const DeepDive({
    this.byRound = const {},
    this.form = const [],
    this.last10 = const WinRecord(),
    this.overall = const WinRecord(),
    this.tiebreaks = const WinRecord(),
    this.wonFirstSet = const WinRecord(),
    this.lostFirstSet = const WinRecord(),
    this.comebacks = 0,
    this.byPartner = const [],
    this.byOpponent = const [],
    this.aces = 0,
    this.doubleFaults = 0,
    this.pointsWon = 0,
    this.pointsLost = 0,
    this.pointsShare,
    this.perMatch = const [],
  });

  @override
  List<Object?> get props => [byRound, form, last10, overall, tiebreaks, wonFirstSet, lostFirstSet, comebacks, byPartner, byOpponent, aces, doubleFaults, pointsWon, pointsLost, pointsShare, perMatch];
}

/// `GET players/{id}/stats`.
class PlayerStatsBundle extends Equatable {
  final PlayerStats summary;
  final bool advancedAvailable;
  final AdvancedStats? advanced;

  const PlayerStatsBundle({required this.summary, required this.advancedAvailable, this.advanced});

  @override
  List<Object?> get props => [summary, advancedAvailable, advanced];
}
