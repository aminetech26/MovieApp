import 'package:dartz/dartz.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/data/tables/movie_table.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';
import 'package:state_management/domain/usecases/use_case.dart';

class SaveMovie extends UseCase<void, MovieModel> {
  final MoviesRepository moviesRepository;
  SaveMovie(this.moviesRepository);
  @override
  Future<Either<AppError, void>> call(MovieModel params) async {
    return await moviesRepository.saveMovie(MovieTable.fromMovieModel(params));
  }
}
