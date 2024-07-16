import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:state_management/data/data_sources/movie_remote_data_source.dart';
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
    } on Exception {
      return const Left(AppError('Something went wrong'));
    }
  }

  @override
  Future<Either<AppError, List<MovieModel>>> getPopular() async {
    try {
      final movies = await remoteDataSource.getPopular();
      return Right(movies);
    } on Exception {
      return const Left(AppError('Something went wrong'));
    }
  }

  @override
  Future<Either<AppError, List<MovieModel>>> getPlayingNow() async {
    try {
      final movies = await remoteDataSource.getPlayingNow();
      return Right(movies);
    } on Exception {
      return const Left(AppError('Something went wrong'));
    }
  }

  @override
  Future<Either<AppError, List<MovieModel>>> getComingSoon() async {
    try {
      final movies = await remoteDataSource.getComingSoon();
      return Right(movies);
    } on Exception {
      return const Left(AppError('Something went wrong'));
    }
  }
}
