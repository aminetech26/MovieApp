import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel({
    required String? id,
    required String? iso6391,
    required String? iso31661,
    required String? key,
    required String? name,
    required String? site,
    required int? size,
    required String? type,
  }) = _VideoModel;
  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}
