// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesResultModelImpl _$$MoviesResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MoviesResultModelImpl(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalResults: (json['totalResults'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MoviesResultModelImplToJson(
        _$MoviesResultModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
