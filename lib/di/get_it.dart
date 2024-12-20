import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:state_management/data/core/api_client.dart';
import 'package:state_management/data/data_sources/movie_local_data_source.dart';
import 'package:state_management/data/data_sources/movie_remote_data_source.dart';
import 'package:state_management/data/repositories/movies_repository_imp.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';
import 'package:state_management/domain/usecases/check_if_favourite_movie.dart';
import 'package:state_management/domain/usecases/delete_favourite_movie.dart';
import 'package:state_management/domain/usecases/get_cast_crew.dart';
import 'package:state_management/domain/usecases/get_coming_soon.dart';
import 'package:state_management/domain/usecases/get_favourite_movies.dart';
import 'package:state_management/domain/usecases/get_movie_details.dart';
import 'package:state_management/domain/usecases/get_playing_now.dart';
import 'package:state_management/domain/usecases/get_popular.dart';
import 'package:state_management/domain/usecases/get_searched_movies.dart';
import 'package:state_management/domain/usecases/get_trending.dart';
import 'package:state_management/domain/usecases/get_videos.dart';
import 'package:state_management/domain/usecases/save_movie.dart';
import 'package:state_management/presentation/blocs/bloc/crew_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/favourite_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/language_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/movie_backdrop_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/movie_details_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/movie_tabbed_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/movies_carousel_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/search_bloc.dart';
import 'package:state_management/presentation/blocs/bloc/videos_bloc.dart';

final getItInstance = GetIt.I;

Future initDependencies() async {
  getItInstance.registerLazySingleton<Dio>(() => Dio());
  getItInstance
      .registerLazySingleton<ApiClient>(() => ApiClient(getItInstance()));
  getItInstance.registerLazySingleton<MoviesRepository>(
      () => MoviesRepositoryImp(getItInstance(), getItInstance()));
  getItInstance.registerLazySingleton<MovieRemoteDataSource>(
      () => MovieRemoteDataSourceImpl(getItInstance()));
  getItInstance.registerLazySingleton<MovieLocalDataSource>(
      () => MovieLocalDataSourceImpl());
  getItInstance.registerLazySingleton<GetTrending>(
      () => GetTrending(getItInstance()));
  getItInstance.registerLazySingleton<GetFavouriteMovies>(
      () => GetFavouriteMovies(getItInstance()));
  getItInstance.registerLazySingleton<DeleteFavouriteMovie>(
      () => DeleteFavouriteMovie(getItInstance()));
  getItInstance.registerLazySingleton<CheckIfFavouriteMovie>(
      () => CheckIfFavouriteMovie(getItInstance()));
  getItInstance
      .registerLazySingleton<SaveMovie>(() => SaveMovie(getItInstance()));
  getItInstance
      .registerLazySingleton<GetPopular>(() => GetPopular(getItInstance()));
  getItInstance.registerLazySingleton<GetComingSoon>(
      () => GetComingSoon(getItInstance()));
  getItInstance.registerLazySingleton<GetPlayingNow>(
      () => GetPlayingNow(getItInstance()));
  getItInstance
      .registerLazySingleton<GetVideos>(() => GetVideos(getItInstance()));
  getItInstance.registerLazySingleton<GetMovieDetails>(
      () => GetMovieDetails(getItInstance()));
  getItInstance
      .registerLazySingleton<GetCastCrew>(() => GetCastCrew(getItInstance()));
  getItInstance.registerLazySingleton<GetSearchedMovies>(
      () => GetSearchedMovies(getItInstance()));
  getItInstance.registerFactory(() => MoviesCarouselBloc(
      getTrending: getItInstance(), movieBackdropBloc: getItInstance()));
  getItInstance.registerFactory(() => MovieBackdropBloc());
  getItInstance.registerFactory(() => MovieTabbedBloc(
      getPopular: getItInstance(),
      getComingSoon: getItInstance(),
      getPlayingNow: getItInstance()));
  getItInstance.registerFactory(() => LanguageBloc());
  getItInstance.registerFactory(() => MovieDetailsBloc(
      favouriteBloc: getItInstance(),
      getMovieDetails: getItInstance(),
      crewBloc: getItInstance(),
      videosBloc: getItInstance()));
  getItInstance.registerFactory(() => CrewBloc(getCastCrew: getItInstance()));
  getItInstance.registerFactory(() => VideosBloc(getVideos: getItInstance()));
  getItInstance
      .registerFactory(() => SearchBloc(getSearchedMovies: getItInstance()));
  getItInstance.registerFactory(() => FavouriteBloc(
      getFavouriteMovies: getItInstance(),
      deleteFavouriteMovie: getItInstance(),
      checkIfFavouriteMovie: getItInstance(),
      saveMovie: getItInstance()));
}
