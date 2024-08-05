// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CastResultModelImpl _$$CastResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CastResultModelImpl(
      id: (json['id'] as num).toInt(),
      cast: (json['cast'] as List<dynamic>)
          .map((e) => CastModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      crew: (json['crew'] as List<dynamic>)
          .map((e) => Crew.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CastResultModelImplToJson(
        _$CastResultModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
      'crew': instance.crew,
    };

_$CastModelImpl _$$CastModelImplFromJson(Map<String, dynamic> json) =>
    _$CastModelImpl(
      castId: (json['castId'] as num).toInt(),
      character: json['character'] as String,
      creditId: json['creditId'] as String,
      gender: (json['gender'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      profilePath: json['profilePath'] as String,
    );

Map<String, dynamic> _$$CastModelImplToJson(_$CastModelImpl instance) =>
    <String, dynamic>{
      'castId': instance.castId,
      'character': instance.character,
      'creditId': instance.creditId,
      'gender': instance.gender,
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'profilePath': instance.profilePath,
    };

_$CrewImpl _$$CrewImplFromJson(Map<String, dynamic> json) => _$CrewImpl(
      creditId: json['creditId'] as String,
      department: json['department'] as String,
      gender: (json['gender'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      job: json['job'] as String,
      name: json['name'] as String,
      profilePath: json['profilePath'] as String,
    );

Map<String, dynamic> _$$CrewImplToJson(_$CrewImpl instance) =>
    <String, dynamic>{
      'creditId': instance.creditId,
      'department': instance.department,
      'gender': instance.gender,
      'id': instance.id,
      'job': instance.job,
      'name': instance.name,
      'profilePath': instance.profilePath,
    };
