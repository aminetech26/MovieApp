import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_management/domain/entities/cast_entity.dart';

part 'cast_result_model.freezed.dart';
part 'cast_result_model.g.dart';

@freezed
class CastResultModel with _$CastResultModel {
  const factory CastResultModel(
      {required final int id,
      required final List<CastModel> cast,
      required final List<Crew> crew}) = _CastResultModel;

  factory CastResultModel.fromJson(Map<String, dynamic> json) =>
      _$CastResultModelFromJson(json);
}

@freezed
class CastModel extends CastEntity with _$CastModel {
  const factory CastModel(
      {required final int castId,
      required final String character,
      required final String creditId,
      required final int gender,
      required final int id,
      required final String name,
      required final int order,
      required final String profilePath}) = _CastModel;

  factory CastModel.fromJson(Map<String, dynamic> json) =>
      _$CastModelFromJson(json);
}

@freezed
class Crew with _$Crew {
  const factory Crew({
    required final String creditId,
    required final String department,
    required final int gender,
    required final int id,
    required final String job,
    required final String name,
    required final String profilePath,
  }) = _Crew;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);
}
