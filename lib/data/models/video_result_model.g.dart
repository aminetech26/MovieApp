// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoResultModelImpl _$$VideoResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoResultModelImpl(
      id: (json['id'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VideoResultModelImplToJson(
        _$VideoResultModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };
