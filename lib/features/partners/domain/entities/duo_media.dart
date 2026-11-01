import 'package:equatable/equatable.dart';

enum DuoMediaStatus {
  queued,
  processing,
  completed,
  failed;

  static DuoMediaStatus fromApi(String? raw) =>
      DuoMediaStatus.values.firstWhere((s) => s.name == raw, orElse: () => DuoMediaStatus.queued);

  bool get isPending => this == queued || this == processing;
}

/// What the generator returned — Higgsfield produces video and stills; a
/// `.glb` model is supported too so the provider can change later.
enum DuoMediaType {
  video,
  image,
  model;

  static DuoMediaType fromApi(String? raw) =>
      DuoMediaType.values.firstWhere((t) => t.name == raw, orElse: () => DuoMediaType.video);
}

/// One duo generation job for the player and their main partner.
class DuoMedia extends Equatable {
  final int id;
  final DuoMediaStatus status;
  final DuoMediaType mediaType;
  final String? mediaUrl;
  final String? thumbnailUrl;
  final String? error;
  final DateTime? requestedAt;
  final DateTime? completedAt;

  const DuoMedia({
    required this.id,
    required this.status,
    this.mediaType = DuoMediaType.video,
    this.mediaUrl,
    this.thumbnailUrl,
    this.error,
    this.requestedAt,
    this.completedAt,
  });

  @override
  List<Object?> get props => [id, status, mediaType, mediaUrl, thumbnailUrl, error, requestedAt, completedAt];
}

/// `GET me/main-partner/duo-3d`.
class DuoMediaState extends Equatable {
  /// The generated duo video needs a Higgsfield key on the server; without it only the 3D duo shows.
  final bool providerConfigured;

  /// Both players need a profile photo; the generator works from them.
  final bool requiresPhotos;

  /// The job in flight (or the latest attempt).
  final DuoMedia? current;

  /// Last successful result, kept visible while a new one generates.
  final DuoMedia? latestCompleted;

  /// 3D duo: both players' characters (render specs), drawn by the avatar stage. Free, instant.
  final String? stageUrl;
  final Map<String, dynamic>? playerAvatar;
  final Map<String, dynamic>? partnerAvatar;
  final String? partnerName;

  const DuoMediaState({
    required this.providerConfigured,
    this.requiresPhotos = false,
    this.current,
    this.latestCompleted,
    this.stageUrl,
    this.playerAvatar,
    this.partnerAvatar,
    this.partnerName,
  });

  bool get hasAvatarDuo => stageUrl != null && playerAvatar != null && partnerAvatar != null;

  @override
  List<Object?> get props => [providerConfigured, requiresPhotos, current, latestCompleted, stageUrl, playerAvatar, partnerAvatar, partnerName];
}
