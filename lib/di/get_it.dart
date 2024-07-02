import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:state_management/data/core/api_client.dart';
import 'package:state_management/data/data_sources/movie_remote_data_source.dart';
import 'package:state_management/domain/usecases/get_coming_soon.dart';
import 'package:state_management/domain/usecases/get_playing_now.dart';
import 'package:state_management/domain/usecases/get_popular.dart';
import 'package:state_management/domain/usecases/get_trending.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<Dio>(() => Dio());
  getItInstance
      .registerLazySingleton<ApiClient>(() => ApiClient(getItInstance()));
  getItInstance.registerLazySingleton<MovieRemoteDataSource>(
      () => MovieRemoteDataSourceImpl(getItInstance()));
  getItInstance
      .registerLazySingleton<GetTrending>(() => GetTrending(getItInstance()));
  getItInstance
      .registerLazySingleton<GetPopular>(() => GetPopular(getItInstance()));
  getItInstance.registerLazySingleton<GetComingSoon>(
      () => GetComingSoon(getItInstance()));
  getItInstance.registerLazySingleton<GetPlayingNow>(
      () => GetPlayingNow(getItInstance()));
}
