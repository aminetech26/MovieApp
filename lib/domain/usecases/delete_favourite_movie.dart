import 'package:dartz/dartz.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/movie_params.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';
import 'package:state_management/domain/usecases/use_case.dart';

class DeleteFavouriteMovie extends UseCase<void, MovieParams> {
  final MoviesRepository moviesRepository;
  DeleteFavouriteMovie(this.moviesRepository);
  @override
  Future<Either<AppError, void>> call(MovieParams params) async {
    return await moviesRepository.removeMovie(params.movieId);
  }
}
