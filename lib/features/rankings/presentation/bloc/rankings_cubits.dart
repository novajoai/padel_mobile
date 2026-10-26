import '../../../../core/network/api_result.dart';
import '../../../../core/network/pagination_meta.dart';
import '../../../../core/state/base_cubits.dart';
import '../../domain/entities/ranking_entry.dart';
import '../../domain/usecases/get_rankings_usecase.dart';

/// One leaderboard (season / skill / XP) with season, level and search
/// filters. Only one metric per board — never mixed.
class RankingBoardCubit extends PagedCubit<RankingEntry> {
  final GetRankingsUseCase getRankings;
  final RankingType type;
  String? season;
  String? level;

  /// gender (male|female) · nationality (jordanian|foreign) · age_group (u12…over_45) — combinable.
  Map<String, String> filters = const {};
  String query = '';

  RankingBoardCubit(this.getRankings, this.type);

  @override
  ApiResult<Paginated<RankingEntry>> fetchPage(int page) =>
      getRankings(type: type, season: season, level: level, filters: filters, q: query, page: page);

  Future<void> apply({String? season, String? level, String? query, bool clearLevel = false, Map<String, String>? filters}) {
    if (season != null) this.season = season;
    if (filters != null) this.filters = filters;
    if (level != null || clearLevel) this.level = level;
    if (query != null) this.query = query;
    return load();
  }
}

class SeasonsCubit extends ViewCubit<List<Season>> {
  final GetSeasonsUseCase getSeasons;

  SeasonsCubit(this.getSeasons);

  @override
  ApiResult<List<Season>> fetch() => getSeasons();
}

/// The signed-in player's position on every board (the sticky "you" row).
class MyRankingCubit extends ViewCubit<MyRanking> {
  final GetMyRankingUseCase getMyRanking;

  MyRankingCubit(this.getMyRanking);

  @override
  ApiResult<MyRanking> fetch() => getMyRanking();

  @override
  bool isEmpty(MyRanking data) => false;
}
