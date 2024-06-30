import 'package:dartz/dartz.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/domain/entities/app_error.dart';

abstract class MoviesRepository {
  Future<Either<AppError,List<MovieModel>>> getTrending();
}
