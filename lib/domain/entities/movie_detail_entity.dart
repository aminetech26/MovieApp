import 'package:equatable/equatable.dart';

class MovieDetailEntity extends Equatable {
  final int movieId;
  final String title;
  final String? posterPath;
  final String? backdropPath;
  final num voteAverage;
  final String overview;
  final String releaseDate;

  const MovieDetailEntity(this.title, this.posterPath, this.backdropPath,
      this.voteAverage, this.overview, this.releaseDate,
      {required this.movieId});

  @override
  List<Object?> get props => [movieId];
}
