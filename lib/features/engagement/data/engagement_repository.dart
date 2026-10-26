import 'package:dio/dio.dart';

import '../../../core/constants/api_endpoints.dart';
import '../../../core/network/api_envelope.dart';
import '../../../core/network/api_result.dart';
import '../../../core/network/guard.dart';
import '../../../core/network/pagination_meta.dart';
import '../../premium/data/models/premium_models.dart';
import '../../premium/domain/entities/premium.dart';
import '../domain/engagement_entities.dart';

/// Predictions, Playmaker Coins and popularity gifts — one small API surface,
/// so one repository (every call wrapped in [guard]).
class EngagementRepository {
  final Dio dio;

  EngagementRepository(this.dio);

  // Predictions
  ApiResult<Paginated<PredictionMatch>> openMatches({int page = 1}) => guard(() async {
        final r = await dio.get(ApiEndpoints.predictionMatches, queryParameters: {'page': page});
        return ApiEnvelope.paginated(r, PredictionMatch.fromJson);
      });

  ApiResult<Paginated<PredictionMatch>> myPredictions({int page = 1}) => guard(() async {
        final r = await dio.get(ApiEndpoints.myPredictions, queryParameters: {'page': page});
        return ApiEnvelope.paginated(r, PredictionMatch.fromJson);
      });

  ApiResult<Paginated<PredictionLeader>> leaderboard({int page = 1}) => guard(() async {
        final r = await dio.get(ApiEndpoints.predictionsLeaderboard, queryParameters: {'page': page});
        return ApiEnvelope.paginated(r, PredictionLeader.fromJson);
      });

  ApiResult<PredictionMatch> predict(int matchId, {required int winnerTeamId, int? setsTeamOne, int? setsTeamTwo}) => guard(() async {
        final r = await dio.post(ApiEndpoints.matchPrediction(matchId), data: {
          'winner_team_id': winnerTeamId,
          'sets_team_one': ?setsTeamOne,
          'sets_team_two': ?setsTeamTwo,
        });
        return PredictionMatch.fromJson(ApiEnvelope.map(r));
      });

  // Coins
  ApiResult<CoinsWallet> wallet() => guard(() async => CoinsWallet.fromJson(ApiEnvelope.map(await dio.get(ApiEndpoints.myCoins))));

  ApiResult<Payment> buyCoins(String packageKey) => guard(() async {
        final r = await dio.post(ApiEndpoints.coinsCheckout, data: {'package': packageKey});
        return paymentFromJson(ApiEnvelope.map(r));
      });

  // Free 3D characters
  ApiResult<CharacterCatalog> characters() =>
      guard(() async => CharacterCatalog.fromJson(ApiEnvelope.map(await dio.get(ApiEndpoints.characters))));

  /// null removes the character.
  ApiResult<AvatarCharacter?> chooseCharacter(int? id) => guard(() async {
        final r = await dio.put(ApiEndpoints.myCharacter, data: {'character_id': id});
        final c = ApiEnvelope.map(r)['character'];
        return c is Map<String, dynamic> ? AvatarCharacter.fromJson(c) : null;
      });

  // Popularity
  ApiResult<GiftCatalog> catalog() => guard(() async => GiftCatalog.fromJson(ApiEnvelope.map(await dio.get(ApiEndpoints.gifts))));

  ApiResult<Popularity> popularity(String playerId) =>
      guard(() async => Popularity.fromJson(ApiEnvelope.map(await dio.get(ApiEndpoints.playerPopularity(playerId)))));

  ApiResult<bool> claimDaily() => guard(() async {
        await dio.post(ApiEndpoints.giftsDaily);
        return true;
      });

  ApiResult<Popularity> sendGift(String playerId, String giftKey) => guard(() async {
        final r = await dio.post(ApiEndpoints.playerGifts(playerId), data: {'gift': giftKey});
        return Popularity.fromJson(ApiEnvelope.map(r));
      });

  ApiResult<Payment> buyGift(String playerId, String giftKey) => guard(() async {
        final r = await dio.post(ApiEndpoints.playerGiftCheckout(playerId), data: {'gift': giftKey});
        return paymentFromJson(ApiEnvelope.map(r));
      });
}
