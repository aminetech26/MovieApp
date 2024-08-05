import 'package:dartz/dartz.dart';
import 'package:state_management/data/models/cast_result_model.dart';
import 'package:state_management/data/models/movie_details_model.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/cast_entity.dart';

abstract class MoviesRepository {
  Future<Either<AppError,List<MovieModel>>> getTrending();
  Future<Either<AppError,List<MovieModel>>> getPopular();
  Future<Either<AppError,List<MovieModel>>> getPlayingNow();
  Future<Either<AppError,List<MovieModel>>> getComingSoon();
  Future<Either<AppError,MovieDetailsModel>> getMovieDetails(int id);
  Future<Either<AppError,List<CastModel>>> getCast(int id);

}
