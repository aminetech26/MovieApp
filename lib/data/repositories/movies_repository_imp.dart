import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:state_management/data/data_sources/movie_local_data_source.dart';
import 'package:state_management/data/data_sources/movie_remote_data_source.dart';
import 'package:state_management/data/models/cast_result_model.dart';
import 'package:state_management/data/models/movie_details_model.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/data/models/video_model.dart';
import 'package:state_management/data/tables/movie_table.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';

class MoviesRepositoryImp extends MoviesRepository {

  final MovieRemoteDataSource remoteDataSource;
  final MovieLocalDataSource localDataSource;

  MoviesRepositoryImp(this.remoteDataSource,this.localDataSource);

  @override
  Future<Either<AppError, List<MovieModel>>> getTrending() async {
    try {
      final movies = await remoteDataSource.getTrending();
      log(movies.toString());
      return Right(movies);
    } on DioException catch (e) {
      if (e.error is SocketException) {
        // Log detailed information
        log('SocketException: ${e.error}, Message: ${e.message}, ErrorType: ${e.type}');
        return const Left(AppError(AppErrorType.network));
      } else {
        log('DioError: ${e.type}, Message: ${e.message}, Response: ${e.response}');
        return const Left(AppError(AppErrorType.api));
      }
    }
  }

  @override
  Future<Either<AppError, List<MovieModel>>> getPopular() async {
    try {
      final movies = await remoteDataSource.getPopular();
      return Right(movies);
    } on DioException catch (e) {
      if (e.error is SocketException) {
        // Log detailed information
        log('SocketException: ${e.error}, Message: ${e.message}, ErrorType: ${e.type}');
        return const Left(AppError(AppErrorType.network));
      } else {
        log('DioError: ${e.type}, Message: ${e.message}, Response: ${e.response}');
        return const Left(AppError(AppErrorType.api));
      }
    }
  }

  @override
  Future<Either<AppError, List<MovieModel>>> getPlayingNow() async {
    try {
      final movies = await remoteDataSource.getPlayingNow();
      return Right(movies);
    } on DioException catch (e) {
      if (e.error is SocketException) {
        // Log detailed information
        log('SocketException: ${e.error}, Message: ${e.message}, ErrorType: ${e.type}');
        return const Left(AppError(AppErrorType.network));
      } else {
        log('DioError: ${e.type}, Message: ${e.message}, Response: ${e.response}');
        return const Left(AppError(AppErrorType.api));
      }
    }
  }

  @override
  Future<Either<AppError, List<MovieModel>>> getComingSoon() async {
    try {
      final movies = await remoteDataSource.getComingSoon();
      return Right(movies);
    } on DioException catch (e) {
      if (e.error is SocketException) {
        // Log detailed information
        log('SocketException: ${e.error}, Message: ${e.message}, ErrorType: ${e.type}');
        return const Left(AppError(AppErrorType.network));
      } else {
        log('DioError: ${e.type}, Message: ${e.message}, Response: ${e.response}');
        return const Left(AppError(AppErrorType.api));
      }
    }
  }

  @override
  Future<Either<AppError, MovieDetailsModel>> getMovieDetails(int id) async {
    try {
      final movieDetails = await remoteDataSource.getMovieDetails(id);
      return Right(movieDetails);
    } on DioException catch (e) {
      if (e.error is SocketException) {
        // Log detailed information
        log('SocketException: ${e.error}, Message: ${e.message}, ErrorType: ${e.type}');
        return const Left(AppError(AppErrorType.network));
      } else {
        log('DioError: ${e.type}, Message: ${e.message}, Response: ${e.response}');
        return const Left(AppError(AppErrorType.api));
      }
    }
  }

  @override
  Future<Either<AppError, List<CastModel>>> getCast(int id) async{
    try {
      final castCrew = await remoteDataSource.getCast(id);
      return Right(castCrew);
    } on DioException catch (e) {
      if (e.error is SocketException) {
        // Log detailed information
        log('SocketException: ${e.error}, Message: ${e.message}, ErrorType: ${e.type}');
        return const Left(AppError(AppErrorType.network));
      } else {
        log('DioError: ${e.type}, Message: ${e.message}, Response: ${e.response}');
        return const Left(AppError(AppErrorType.api));
      }
    }
  }

  @override
  Future<Either<AppError, List<VideoModel>>> getVideos(int id) async{
    try {
      final videos = await remoteDataSource.getVideos(id);
      return Right(videos);
    } on DioException catch (e) {
      if (e.error is SocketException) {
        // Log detailed information
        log('SocketException: ${e.error}, Message: ${e.message}, ErrorType: ${e.type}');
        return const Left(AppError(AppErrorType.network));
      } else {
        log('DioError: ${e.type}, Message: ${e.message}, Response: ${e.response}');
        return const Left(AppError(AppErrorType.api));
      }
    }
  }
  
  @override
  Future<Either<AppError, List<MovieModel>>> getSearchedMovies(String query) async{
    try {
      final movies = await remoteDataSource.getSearchedMovies(query);
      return Right(movies);
    } on DioException catch (e) {
      if (e.error is SocketException) {
        // Log detailed information
        log('SocketException: ${e.error}, Message: ${e.message}, ErrorType: ${e.type}');
        return const Left(AppError(AppErrorType.network));
      } else {
        log('DioError: ${e.type}, Message: ${e.message}, Response: ${e.response}');
        return const Left(AppError(AppErrorType.api));
      }
    }
  }

  @override
  Future<Either<AppError, bool>> checkIfMovieFavourite(int movieId) async{
    try {
      final isFavourite = await localDataSource.isMovieFavourite(movieId);
      return Right(isFavourite);
    } on Exception {
      return const Left(AppError(AppErrorType.database));
    }    
  }

  @override
  Future<Either<AppError, List<MovieTable>>> getFavouriteMovies() async{
    try {
      final movies = await localDataSource.getMovies();
      return Right(movies);
    } on Exception {
      return const Left(AppError(AppErrorType.database));
    }
  }

  @override
  Future<Either<AppError, void>> removeMovie(int movieId) async{
    try {
      await localDataSource.deleteMovie(movieId);
      return const Right(null);
    } on Exception {
      return const Left(AppError(AppErrorType.database));
    }
  }

  @override
  Future<Either<AppError, void>> saveMovie(MovieTable movie) async{
    try {
      await localDataSource.cacheMovies(movie);
      return const Right(null);
    } on Exception {
      return const Left(AppError(AppErrorType.database));
    }
  }
}
