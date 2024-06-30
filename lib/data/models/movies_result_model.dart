import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_management/data/models/movie_model.dart';

part 'movies_result_model.freezed.dart';
part 'movies_result_model.g.dart';

@freezed
class MoviesResultModel with _$MoviesResultModel{
  const factory MoviesResultModel({
  int? page,
  required List<MovieModel>? results,
  int? totalPages,
  int? totalResults
  }) = _MoviesResultModel;

  factory MoviesResultModel.fromJson(Map<String,dynamic> json) => _$MoviesResultModelFromJson(json);
}

