import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_management/data/models/movie_details_model.dart';
import 'package:state_management/domain/entities/movie_entity.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel extends MovieEntity with _$MovieModel {
  const factory MovieModel({
    required final String? backdropPath,
    required final int? id,
    required final String? title,
    required final String? originalTitle,
    required final String? overview,
    required final String? posterPath,
    required final String? mediaType,
    required final bool? adult,
    required final String? originalLanguage,
    required final List<int>? genreIds,
    required final double? popularity,
    required final String? releaseDate,
    required final bool? video,
    required final double? voteAverage,
    required final int? voteCount,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  factory MovieModel.fromMovieDetailModel(MovieDetailsModel movieModel) {
      return MovieModel(
        backdropPath: movieModel.backdropPath,
        id: movieModel.id,
        title: movieModel.title,
        originalTitle: movieModel.originalTitle,
        overview: movieModel.overview,
        posterPath: movieModel.posterPath,
        mediaType: null,
        adult: movieModel.adult,
        originalLanguage: movieModel.originalLanguage,
        genreIds: movieModel.genres!.map((e) => e.id!).toList(),
        popularity: movieModel.popularity,
        releaseDate: movieModel.releaseDate,
        video: movieModel.video,
        voteAverage: movieModel.voteAverage,
        voteCount: movieModel.voteCount,
      );
    }
}
