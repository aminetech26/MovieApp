import 'package:dartz/dartz.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/movie_params.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';
import 'package:state_management/domain/usecases/use_case.dart';

class CheckIfFavouriteMovie extends UseCase<bool, MovieParams> {
  final MoviesRepository moviesRepository;
  CheckIfFavouriteMovie(this.moviesRepository);
  @override
  Future<Either<AppError, bool>> call(MovieParams params) async {
    return await moviesRepository.checkIfMovieFavourite(params.movieId);
  }
}
