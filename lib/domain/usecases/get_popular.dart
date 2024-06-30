import 'package:dartz/dartz.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';

class GetPopular {
  final MoviesRepository moviesRepository;
  GetPopular(this.moviesRepository);
  Future<Either<AppError, List<MovieModel>>> call() async {
    return await moviesRepository.getPopular();
  }
}
