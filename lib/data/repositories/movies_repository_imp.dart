import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:state_management/data/data_sources/movie_remote_data_source.dart';
import 'package:state_management/data/models/cast_result_model.dart';
import 'package:state_management/data/models/movie_details_model.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';

class MoviesRepositoryImp extends MoviesRepository {
  final MovieRemoteDataSource remoteDataSource;
  MoviesRepositoryImp(this.remoteDataSource);
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
}
