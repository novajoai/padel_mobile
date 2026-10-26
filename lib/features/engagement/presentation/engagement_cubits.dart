import '../../../core/network/api_result.dart';
import '../../../core/network/pagination_meta.dart';
import '../../../core/state/base_cubits.dart';
import '../../../core/state/view_state.dart';
import '../../premium/domain/entities/premium.dart';
import '../data/engagement_repository.dart';
import '../domain/engagement_entities.dart';

class PredictionMatchesCubit extends PagedCubit<PredictionMatch> {
  final EngagementRepository repository;

  PredictionMatchesCubit(this.repository);

  @override
  ApiResult<Paginated<PredictionMatch>> fetchPage(int page) => repository.openMatches(page: page);
}

/// My predictions; `state.extra` carries points / position / won / lost.
class MyPredictionsCubit extends PagedCubit<PredictionMatch> {
  final EngagementRepository repository;

  MyPredictionsCubit(this.repository);

  @override
  ApiResult<Paginated<PredictionMatch>> fetchPage(int page) => repository.myPredictions(page: page);
}

class PredictionLeaderboardCubit extends PagedCubit<PredictionLeader> {
  final EngagementRepository repository;

  PredictionLeaderboardCubit(this.repository);

  @override
  ApiResult<Paginated<PredictionLeader>> fetchPage(int page) => repository.leaderboard(page: page);
}

class CoinsWalletCubit extends ViewCubit<CoinsWallet> {
  final EngagementRepository repository;

  CoinsWalletCubit(this.repository);

  @override
  ApiResult<CoinsWallet> fetch() => repository.wallet();

  @override
  bool isEmpty(CoinsWallet data) => false;
}

class CharacterCatalogCubit extends ViewCubit<CharacterCatalog> {
  final EngagementRepository repository;

  CharacterCatalogCubit(this.repository);

  @override
  ApiResult<CharacterCatalog> fetch() => repository.characters();

  @override
  bool isEmpty(CharacterCatalog data) => data.characters.isEmpty;
}

class GiftCatalogCubit extends ViewCubit<GiftCatalog> {
  final EngagementRepository repository;

  GiftCatalogCubit(this.repository);

  @override
  ApiResult<GiftCatalog> fetch() => repository.catalog();

  @override
  bool isEmpty(GiftCatalog data) => false;
}

class PopularityCubit extends ViewCubit<Popularity> {
  final EngagementRepository repository;
  final String playerId;

  PopularityCubit(this.repository, this.playerId);

  @override
  ApiResult<Popularity> fetch() => repository.popularity(playerId);

  @override
  bool isEmpty(Popularity data) => false;
}

/// Predict / claim / send / buy — one-off actions reported through ActionState.
class EngagementActionCubit extends ActionCubit {
  final EngagementRepository repository;

  EngagementActionCubit(this.repository);

  Future<bool> predict(int matchId, {required int winnerTeamId, int? setsTeamOne, int? setsTeamTwo}) =>
      run(() => repository.predict(matchId, winnerTeamId: winnerTeamId, setsTeamOne: setsTeamOne, setsTeamTwo: setsTeamTwo));

  Future<bool> claimDaily() => run(repository.claimDaily);

  Future<bool> sendGift(String playerId, String giftKey) => run(() => repository.sendGift(playerId, giftKey));

  /// The MEPS payment to open, or null on failure (see `state`).
  Future<Payment?> buyCoins(String packageKey) async =>
      await run(() => repository.buyCoins(packageKey)) ? (state as ActionSuccess).result as Payment : null;

  Future<Payment?> buyGift(String playerId, String giftKey) async =>
      await run(() => repository.buyGift(playerId, giftKey)) ? (state as ActionSuccess).result as Payment : null;
}
