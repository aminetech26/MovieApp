import 'package:dartz/dartz.dart';
import 'package:state_management/data/models/cast_result_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/movie_params.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';
import 'package:state_management/domain/usecases/use_case.dart';

class GetCastCrew extends UseCase<List<CastModel>, MovieParams> {
  final MoviesRepository moviesRepository;
  GetCastCrew(this.moviesRepository);
  @override
  Future<Either<AppError, List<CastModel>>> call(MovieParams params) async {
    return await moviesRepository.getCast(params.movieId);
  }
}
