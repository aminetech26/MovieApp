import 'package:state_management/data/models/movie_model.dart';

abstract class MoviesRepository {
  Future<List<MovieModel>> getTrending();
}
