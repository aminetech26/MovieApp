import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_management/data/models/genres_model.dart';
import 'package:state_management/data/models/production_companies.dart';
import 'package:state_management/data/models/production_countries.dart';
import 'package:state_management/data/models/spoken_languages.dart';

part 'movie_details_model.freezed.dart';
part 'movie_details_model.g.dart';

@freezed
class MovieDetailsModel with _$MovieDetailsModel {
  const factory MovieDetailsModel(
      {required final bool? adult,
      required final String? backdropPath,
      required final int? budget,
      required final List<Genres>? genres,
      required final String? homepage,
      required final int? id,
      required final String? imdbId,
      required final String? originalLanguage,
      required final String? originalTitle,
      required final String? overview,
      required final double? popularity,
      required final String? posterPath,
      required final List<ProductionCompanies>? productionCompanies,
      required final List<ProductionCountries>? productionCountries,
      required final String? releaseDate,
      required final int? revenue,
      required final int? runtime,
      required final List<SpokenLanguages>? spokenLanguages,
      required final String? status,
      required final String? tagline,
      required final String? title,
      required final bool? video,
      required final double? voteAverage,
      required final int? voteCount}) = _MovieDetailsModel;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsModelFromJson(json);
}
