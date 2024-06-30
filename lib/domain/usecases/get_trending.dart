import 'package:state_management/data/models/movie_model.dart';
import 'package:state_management/domain/repositories/movies_repository.dart';

class GetTrending {
  final MoviesRepository moviesRepository;
  GetTrending(this.moviesRepository);
  Future<List<MovieModel>> call() async {
    return await moviesRepository.getTrending();
  }
}
