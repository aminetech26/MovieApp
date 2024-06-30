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
      return Right(movies);
    } on Exception {
      return const Left(AppError('Something went wrong'));
    }
  }
}
