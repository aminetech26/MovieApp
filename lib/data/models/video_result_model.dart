import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_management/data/models/video_model.dart';

part 'video_result_model.freezed.dart';
part 'video_result_model.g.dart';

@freezed
class VideoResultModel with _$VideoResultModel {
  const factory VideoResultModel({
    required int id,
    required List<VideoModel> results,
  }) = _VideoResultModel;
  factory VideoResultModel.fromJson(Map<String, dynamic> json) =>
      _$VideoResultModelFromJson(json);
}