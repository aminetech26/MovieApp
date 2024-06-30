import 'package:dartz/dartz.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/no_params.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';
import 'package:state_management/domain/usecases/use_case.dart';

class GetTrending extends UseCase<List<MovieModel>,NoParams>{
  final MoviesRepository moviesRepository;
  GetTrending(this.moviesRepository);
  @override
  Future<Either<AppError, List<MovieModel>>> call(NoParams noParams) async {
    return await moviesRepository.getTrending();
  }
}
