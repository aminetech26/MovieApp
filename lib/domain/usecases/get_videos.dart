import 'package:dartz/dartz.dart';
import 'package:state_management/data/models/cast_result_model.dart';
import 'package:state_management/data/models/video_model.dart';
import 'package:state_management/domain/entities/app_error.dart';
import 'package:state_management/domain/entities/movie_params.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';
import 'package:state_management/domain/usecases/use_case.dart';

class GetVideos extends UseCase<List<VideoModel>, MovieParams> {
  final MoviesRepository moviesRepository;
  GetVideos(this.moviesRepository);
  @override
  Future<Either<AppError, List<VideoModel>>> call(MovieParams params) async {
    return await moviesRepository.getVideos(params.movieId);
  }
}
