import 'package:equatable/equatable.dart';

import '../../../core/models/player_summary.dart';
import '../../../core/models/player_summary_model.dart';
import '../../../core/utils/json_utils.dart';
import '../../tournaments/data/models/match_model.dart';
import '../../tournaments/domain/entities/match.dart';

// ─── Predictions (certified tournaments only) ─────────────────────────────

class MyPrediction extends Equatable {
  final int winnerTeamId;
  final int? setsTeamOne;
  final int? setsTeamTwo;

  /// pending | won | lost | void
  final String status;
  final int points;

  const MyPrediction({required this.winnerTeamId, this.setsTeamOne, this.setsTeamTwo, this.status = 'pending', this.points = 0});

  bool get hasScore => setsTeamOne != null && setsTeamTwo != null;

  factory MyPrediction.fromJson(Map<String, dynamic> j) => MyPrediction(
        winnerTeamId: Json.integer(j['winner_team_id']) ?? 0,
        setsTeamOne: Json.integer(j['sets_team_one']),
        setsTeamTwo: Json.integer(j['sets_team_two']),
        status: Json.string(j['status']) ?? 'pending',
        points: Json.integer(j['points']) ?? 0,
      );

  @override
  List<Object?> get props => [winnerTeamId, setsTeamOne, setsTeamTwo, status, points];
}

class PredictionCrowd extends Equatable {
  final int total;
  final int teamOnePercent;
  final int teamTwoPercent;

  const PredictionCrowd({required this.total, required this.teamOnePercent, required this.teamTwoPercent});

  @override
  List<Object?> get props => [total, teamOnePercent, teamTwoPercent];
}

/// One match with the viewer's prediction and how everyone else predicted.
class PredictionMatch extends Equatable {
  final Match match;
  final String? tournamentName;
  final bool open;
  final int setsToWin;
  final MyPrediction? mine;
  final PredictionCrowd? crowd;

  const PredictionMatch({required this.match, this.tournamentName, this.open = false, this.setsToWin = 2, this.mine, this.crowd});

  factory PredictionMatch.fromJson(Map<String, dynamic> j) {
    final crowd = Json.map(j['crowd']);
    final mine = Json.map(j['my_prediction']);
    return PredictionMatch(
      match: matchFromJson(Json.map(j['match']) ?? const {}),
      tournamentName: Json.string(Json.map(j['tournament'])?['name']),
      open: j['open'] == true,
      setsToWin: Json.integer(j['sets_to_win']) ?? 2,
      mine: mine == null ? null : MyPrediction.fromJson(mine),
      crowd: crowd == null
          ? null
          : PredictionCrowd(
              total: Json.integer(crowd['total']) ?? 0,
              teamOnePercent: Json.integer(crowd['team_one_percent']) ?? 0,
              teamTwoPercent: Json.integer(crowd['team_two_percent']) ?? 0,
            ),
    );
  }

  @override
  List<Object?> get props => [match, tournamentName, open, setsToWin, mine, crowd];
}

class PredictionLeader extends Equatable {
  final int position;
  final PlayerSummary player;
  final int points;
  final int won;
  final int settled;

  const PredictionLeader({required this.position, required this.player, required this.points, required this.won, required this.settled});

  factory PredictionLeader.fromJson(Map<String, dynamic> j) => PredictionLeader(
        position: Json.integer(j['position']) ?? 0,
        player: PlayerSummaryModel.fromJson(Json.map(j['player']) ?? const {}).toEntity(),
        points: Json.integer(j['points']) ?? 0,
        won: Json.integer(j['won']) ?? 0,
        settled: Json.integer(j['settled']) ?? 0,
      );

  @override
  List<Object?> get props => [position, player, points, won, settled];
}

// ─── My points: Playmaker Coins (B) ──────────────────────────────────────

class CoinPackage extends Equatable {
  final String key;
  final int coins;
  final num price;
  final String currency;

  const CoinPackage({required this.key, required this.coins, required this.price, required this.currency});

  @override
  List<Object?> get props => [key, coins, price, currency];
}

class CoinMovement extends Equatable {
  final int id;
  final int amount;
  final int balanceAfter;
  final String type;
  final String? typeLabel;
  final DateTime? createdAt;

  const CoinMovement({required this.id, required this.amount, required this.balanceAfter, required this.type, this.typeLabel, this.createdAt});

  @override
  List<Object?> get props => [id, amount, balanceAfter, type, typeLabel, createdAt];
}

class CoinsWallet extends Equatable {
  final int balance;
  final String symbol;
  final int coinsPerJod;
  final bool checkoutAvailable;
  final List<CoinPackage> packages;
  final List<CoinMovement> movements;

  const CoinsWallet({
    required this.balance,
    this.symbol = 'B',
    this.coinsPerJod = 10,
    this.checkoutAvailable = false,
    this.packages = const [],
    this.movements = const [],
  });

  factory CoinsWallet.fromJson(Map<String, dynamic> j) => CoinsWallet(
        balance: Json.integer(j['balance']) ?? 0,
        symbol: Json.string(j['symbol']) ?? 'B',
        coinsPerJod: Json.integer(j['coins_per_jod']) ?? 10,
        checkoutAvailable: j['checkout_available'] == true,
        packages: [
          for (final p in Json.listOfMaps(j['packages']))
            CoinPackage(
              key: Json.string(p['key']) ?? '',
              coins: Json.integer(p['coins']) ?? 0,
              price: (p['price'] as num?) ?? 0,
              currency: Json.string(p['currency']) ?? 'JOD',
            ),
        ],
        movements: [
          for (final t in Json.listOfMaps(j['transactions']))
            CoinMovement(
              id: Json.integer(t['id']) ?? 0,
              amount: Json.integer(t['amount']) ?? 0,
              balanceAfter: Json.integer(t['balance_after']) ?? 0,
              type: Json.string(t['type']) ?? '',
              typeLabel: Json.string(t['type_label']),
              createdAt: DateTime.tryParse(Json.string(t['created_at']) ?? ''),
            ),
        ],
      );

  @override
  List<Object?> get props => [balance, symbol, coinsPerJod, checkoutAvailable, packages, movements];
}

// ─── Popularity (green gems) ─────────────────────────────────────────────

class Gift extends Equatable {
  final String key;
  final String name;
  final int gems;

  /// free (earned, only sent to others) | paid (bought by card)
  final String source;
  final String emoji;
  final num? price;
  final String? currency;

  /// common | rare | epic | legendary
  final String rarity;
  final String? earnedBy;
  final int inStock;

  const Gift({
    required this.key,
    required this.name,
    required this.gems,
    required this.source,
    this.emoji = '🎁',
    this.price,
    this.currency,
    this.rarity = 'common',
    this.earnedBy,
    this.inStock = 0,
  });

  bool get isFree => source == 'free';

  factory Gift.fromJson(Map<String, dynamic> j) => Gift(
        key: Json.string(j['key']) ?? '',
        name: Json.string(j['name']) ?? '',
        gems: Json.integer(j['gems']) ?? 0,
        source: Json.string(j['source']) ?? 'free',
        emoji: Json.string(j['emoji']) ?? '🎁',
        price: j['price'] as num?,
        currency: Json.string(j['currency']),
        rarity: Json.string(j['rarity']) ?? 'common',
        earnedBy: Json.string(j['earned_by']),
        inStock: Json.integer(j['in_stock']) ?? 0,
      );

  @override
  List<Object?> get props => [key, name, gems, source, emoji, price, currency, rarity, earnedBy, inStock];
}

class GiftCount extends Equatable {
  final Gift gift;
  final int count;

  const GiftCount(this.gift, this.count);

  @override
  List<Object?> get props => [gift, count];
}

class ReceivedGift extends Equatable {
  final Gift gift;
  final PlayerSummary? sender;
  final DateTime? at;

  /// A reward from Playmaker (no sender), e.g. a right prediction.
  final bool fromPlaymaker;

  const ReceivedGift({required this.gift, this.sender, this.at, this.fromPlaymaker = false});

  @override
  List<Object?> get props => [gift, sender, at, fromPlaymaker];
}

class Popularity extends Equatable {
  final int gems;
  final int gifts;
  final int rank;
  final String rankKey;
  final String rankLabel;
  final String? nextLabel;
  final int? nextAt;

  /// 0..1 towards the next rank.
  final double progress;
  final List<GiftCount> byGift;
  final List<ReceivedGift> latest;

  const Popularity({
    this.gems = 0,
    this.gifts = 0,
    this.rank = 1,
    this.rankKey = 'rising',
    this.rankLabel = '',
    this.nextLabel,
    this.nextAt,
    this.progress = 0,
    this.byGift = const [],
    this.latest = const [],
  });

  factory Popularity.fromJson(Map<String, dynamic> j) {
    final next = Json.map(j['next']);
    return Popularity(
      gems: Json.integer(j['gems']) ?? 0,
      gifts: Json.integer(j['gifts']) ?? 0,
      rank: Json.integer(j['rank']) ?? 1,
      rankKey: Json.string(j['rank_key']) ?? 'rising',
      rankLabel: Json.string(j['rank_label']) ?? '',
      nextLabel: Json.string(next?['label']),
      nextAt: Json.integer(next?['at']),
      progress: ((j['progress'] as num?) ?? 0).toDouble().clamp(0, 1),
      byGift: [
        for (final r in Json.listOfMaps(j['by_gift'])) GiftCount(Gift.fromJson(Json.map(r['gift']) ?? const {}), Json.integer(r['count']) ?? 0),
      ],
      latest: [
        for (final r in Json.listOfMaps(j['latest']))
          ReceivedGift(
            gift: Gift.fromJson(Json.map(r['gift']) ?? const {}),
            sender: Json.map(r['sender']) == null ? null : PlayerSummaryModel.fromJson(Json.map(r['sender'])!).toEntity(),
            at: DateTime.tryParse(Json.string(r['created_at']) ?? ''),
            fromPlaymaker: Json.string(r['source']) == 'reward',
          ),
      ],
    );
  }

  @override
  List<Object?> get props => [gems, gifts, rank, rankKey, rankLabel, nextLabel, nextAt, progress, byGift, latest];
}

class GiftCatalog extends Equatable {
  final List<Gift> gifts;
  final bool dailyClaimed;
  final bool canBuy;
  final bool checkoutAvailable;
  final Popularity myPopularity;

  const GiftCatalog({this.gifts = const [], this.dailyClaimed = false, this.canBuy = true, this.checkoutAvailable = false, this.myPopularity = const Popularity()});

  List<Gift> get free => gifts.where((g) => g.isFree).toList();
  List<Gift> get paid => gifts.where((g) => !g.isFree).toList();

  factory GiftCatalog.fromJson(Map<String, dynamic> j) => GiftCatalog(
        gifts: Json.listOfMaps(j['gifts']).map(Gift.fromJson).toList(),
        dailyClaimed: j['daily_claimed'] == true,
        canBuy: j['can_buy'] != false,
        checkoutAvailable: j['checkout_available'] == true,
        myPopularity: Popularity.fromJson(Json.map(j['my_popularity']) ?? const {}),
      );

  @override
  List<Object?> get props => [gifts, dailyClaimed, canBuy, checkoutAvailable, myPopularity];
}

// ─── Free 3D characters (no Premium) ──────────────────────────────────────

class AvatarCharacter extends Equatable {
  final int id;
  final String name;

  /// `.glb` model.
  final String modelUrl;
  final String? thumbnailUrl;

  const AvatarCharacter({required this.id, required this.name, required this.modelUrl, this.thumbnailUrl});

  factory AvatarCharacter.fromJson(Map<String, dynamic> j) => AvatarCharacter(
        id: Json.integer(j['id']) ?? 0,
        name: Json.string(j['name']) ?? '',
        modelUrl: Json.string(j['model_url']) ?? '',
        thumbnailUrl: Json.string(j['thumbnail_url']),
      );

  @override
  List<Object?> get props => [id, name, modelUrl, thumbnailUrl];
}

/// `GET characters`.
class CharacterCatalog extends Equatable {
  final int? selectedId;
  final List<AvatarCharacter> characters;

  const CharacterCatalog({this.selectedId, this.characters = const []});

  factory CharacterCatalog.fromJson(Map<String, dynamic> j) => CharacterCatalog(
        selectedId: Json.integer(j['selected_id']),
        characters: Json.listOfMaps(j['characters']).map(AvatarCharacter.fromJson).toList(),
      );

  @override
  List<Object?> get props => [selectedId, characters];
}
