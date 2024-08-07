import 'package:hive/hive.dart';
import 'package:state_management/data/tables/movie_table.dart';

abstract class MovieLocalDataSource {
  Future<List<MovieTable>> getMovies();
  Future<void> cacheMovies(MovieTable movie);
  Future<void> deleteMovie(int movieId);
  Future<bool> isMovieFavourite(int movieId);
}

class MovieLocalDataSourceImpl extends MovieLocalDataSource {
  @override
  Future<void> cacheMovies(MovieTable movie) async {
    final movieBox = Hive.box<MovieTable>('movieBox');
    movieBox.put(movie.id, movie);
  }

  @override
  Future<void> deleteMovie(int movieId) {
    final movieBox = Hive.box<MovieTable>('movieBox');
    movieBox.delete(movieId);
    return Future.value();
  }

  @override
  Future<List<MovieTable>> getMovies() async {
    final movieBox = await Hive.openBox<MovieTable>('movieBox');
    final keys = movieBox.keys;
    final movies = <MovieTable>[];
    for (final key in keys) {
      final movie = movieBox.get(key);
      movies.add(movie!);
    }
    return movies;
  }

  @override
  Future<bool> isMovieFavourite(int movieId) async {
    final movieBox = Hive.box<MovieTable>('movieBox');
    return movieBox.containsKey(movieId);
  }
}
