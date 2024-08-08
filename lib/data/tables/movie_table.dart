import 'package:hive/hive.dart';
import 'package:state_management/data/models/movie_model.dart';

part 'movie_table.g.dart';

@HiveType(typeId: 0)
class MovieTable {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String posterPath;

  MovieTable({
    required this.title,
    required this.posterPath,
    required this.id,
  });

  factory MovieTable.fromMovieModel(MovieModel movieModel) {
    return MovieTable(
      id: movieModel.id!,
      title: movieModel.title!,
      posterPath: movieModel.posterPath!,
    );
  }
}
