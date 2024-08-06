import 'package:dartz/dartz.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/movie_search_params.dart';
import 'package:state_management/domain/entities/no_params.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';
import 'package:state_management/domain/usecases/use_case.dart';

class GetSearchedMovies extends UseCase<List<MovieModel>, MovieSearchParams> {
  final MoviesRepository moviesRepository;
  GetSearchedMovies(this.moviesRepository);
  @override
  Future<Either<AppError, List<MovieModel>>> call(
      MovieSearchParams params) async {
    return await moviesRepository.getSearchedMovies(params.query);
  }
}
