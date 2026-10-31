import 'package:dio/dio.dart';

import '../../../core/constants/api_endpoints.dart';
import '../../../core/network/api_envelope.dart';
import '../../../core/network/api_result.dart';
import '../../../core/network/guard.dart';
import '../domain/avatar_entities.dart';

/// Modular character API. The server validates every save (slots, availability, body fit, premium).
class AvatarRepository {
  final Dio dio;

  AvatarRepository(this.dio);

  ApiResult<AvatarCatalog> catalog() =>
      guard(() async => AvatarCatalog.fromJson(ApiEnvelope.map(await dio.get(ApiEndpoints.avatarCatalog))));

  ApiResult<MyAvatar> mine() => guard(() async => MyAvatar.fromJson(ApiEnvelope.map(await dio.get(ApiEndpoints.myAvatar))));

  /// Spec for an unsaved choice (live preview while editing).
  ApiResult<Map<String, dynamic>> preview(AvatarChoice choice) =>
      guard(() async => ApiEnvelope.map(await dio.post(ApiEndpoints.avatarPreview, data: choice.toJson())));

  ApiResult<MyAvatar> save(AvatarChoice choice) =>
      guard(() async => MyAvatar.fromJson(ApiEnvelope.map(await dio.put(ApiEndpoints.myAvatar, data: choice.toJson()))));
}
