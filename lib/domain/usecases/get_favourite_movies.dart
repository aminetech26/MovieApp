import 'package:dartz/dartz.dart';
import 'package:state_management/data/tables/movie_table.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/no_params.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';
import 'package:state_management/domain/usecases/use_case.dart';

class GetFavouriteMovies extends UseCase<List<MovieTable>, NoParams> {
  final MoviesRepository moviesRepository;
  GetFavouriteMovies(this.moviesRepository);
  @override
  Future<Either<AppError, List<MovieTable>>> call(NoParams params) async {
    return await moviesRepository.getFavouriteMovies();
  }
}
