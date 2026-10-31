import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/avatar_repository.dart';
import '../presentation/avatar_editor_cubit.dart';

void registerAvatarDependencies(GetIt sl) {
  sl.registerLazySingleton(() => AvatarRepository(sl<Dio>()));
  sl.registerFactory(() => AvatarEditorCubit(sl()));
}
