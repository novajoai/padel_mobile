import '../../../../core/utils/json_utils.dart';
import '../../../partners/data/models/partner_models.dart';
import '../../../engagement/domain/engagement_entities.dart';
import '../../domain/entities/player_profile.dart';
import 'achievement_model.dart';
import 'player_history_model.dart';
import 'player_model.dart';
import 'player_stats_model.dart';

/// `GET players/{id}` returns the Player resource plus several optional
/// athlete-card blocks. The Player part goes through the generated
/// [PlayerModel]; the blocks are composed here.
class PlayerProfileMapper {
  const PlayerProfileMapper._();

  static PlayerProfile fromJson(Map<String, dynamic> json) {
    return PlayerProfile(
      player: PlayerModel.fromJson(json).toEntity(),
      rankings: _rankings(Json.map(json['rankings'])),
      stats: Json.map(json['stats']) == null ? null : playerStatsFromJson(Json.map(json['stats'])!),
      partners: Json.map(json['partners']) == null
          ? null
          : partnersOverviewFromJson(Json.map(json['partners'])!),
      social: _social(Json.map(json['social'])),
      achievements: _achievements(Json.map(json['achievements'])),
      recentResults: Json.listOfMaps(json['recent_results']).map(resultRowFromJson).toList(),
      threeDProfile: _threeD(Json.map(json['three_d_profile'])),
      popularity: Json.map(json['popularity']) == null ? null : Popularity.fromJson(Json.map(json['popularity'])!),
      character: Json.map(json['character']) == null ? null : AvatarCharacter.fromJson(Json.map(json['character'])!),
      // Older servers don't send it: results were public.
      resultsVisible: json['results_visible'] == null || Json.boolean(json['results_visible']),
      avatar: Json.map(json['avatar']),
    );
  }

  static PlayerRankings? _rankings(Map<String, dynamic>? json) {
    if (json == null) return null;
    final skill = Json.map(json['skill']);
    final season = Json.map(json['season']);
    return PlayerRankings(
      skill: SkillRanking(
        rating: Json.integer(skill?['rating']) ?? 0,
        level: Json.string(skill?['level']),
        position: Json.integer(skill?['position']),
        movement: Json.integer(skill?['movement']),
      ),
      season: SeasonRanking(
        season: Json.string(season?['season']),
        points: Json.integer(season?['points']) ?? 0,
        position: Json.integer(season?['position']),
        movement: Json.integer(season?['movement']),
      ),
      xp: Json.integer(json['xp']) ?? Json.integer(Json.map(json['xp'])?['xp']) ?? 0,
    );
  }

  static SocialSummary _social(Map<String, dynamic>? json) {
    if (json == null) return const SocialSummary();
    return SocialSummary(
      followers: Json.integer(json['followers']) ?? 0,
      following: Json.integer(json['following']) ?? 0,
      respects: Json.integer(json['respects']) ?? 0,
      isFollowing: Json.boolean(json['is_following']),
      hasRespected: Json.boolean(json['has_respected']),
    );
  }

  static AchievementsSummary _achievements(Map<String, dynamic>? json) {
    if (json == null) return const AchievementsSummary();
    return AchievementsSummary(
      unlocked: Json.integer(json['unlocked']) ?? 0,
      total: Json.integer(json['total']) ?? 0,
      latest: Json.listOfMaps(json['latest']).map(achievementFromJson).toList(),
    );
  }

  static ThreeDProfileRef? _threeD(Map<String, dynamic>? json) {
    if (json == null) return null;
    return ThreeDProfileRef(
      assetUrl: Json.string(json['asset_url']),
      completedAt: Json.date(json['completed_at']),
    );
  }
}
