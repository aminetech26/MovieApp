import 'package:dartz/dartz.dart';
import 'package:state_management/data/models/movie_details_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/movie_detail_entity.dart';
import 'package:state_management/domain/entities/movie_params.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';
import 'package:state_management/domain/usecases/use_case.dart';

class GetMovieDetails extends UseCase<MovieDetailsModel, MovieParams> {
  final MoviesRepository moviesRepository;
  GetMovieDetails(this.moviesRepository);
  @override
  Future<Either<AppError, MovieDetailsModel>> call(MovieParams params) async {
    return await moviesRepository.getMovieDetails(params.movieId);
  }
}
