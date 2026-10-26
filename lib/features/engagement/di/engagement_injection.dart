import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/engagement_repository.dart';
import '../presentation/engagement_cubits.dart';

void registerEngagementDependencies(GetIt sl) {
  sl.registerLazySingleton(() => EngagementRepository(sl<Dio>()));

  sl.registerFactory(() => PredictionMatchesCubit(sl()));
  sl.registerFactory(() => MyPredictionsCubit(sl()));
  sl.registerFactory(() => PredictionLeaderboardCubit(sl()));
  sl.registerFactory(() => CoinsWalletCubit(sl()));
  sl.registerFactory(() => GiftCatalogCubit(sl()));
  sl.registerFactory(() => CharacterCatalogCubit(sl()));
  sl.registerFactory(() => EngagementActionCubit(sl()));
}
