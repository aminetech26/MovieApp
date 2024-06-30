import 'package:state_management/data/data_sources/movie_remote_data_source.dart';
import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';

class MoviesRepositoryImp extends MoviesRepository {
  final MovieRemoteDataSource remoteDataSource;
  MoviesRepositoryImp(this.remoteDataSource);
  @override
  Future<List<MovieModel>> getTrending() async {
    try {
      final movies = await remoteDataSource.getTrending();
      return movies;
    } on Exception {
      return List.empty();
    }
  }
}
