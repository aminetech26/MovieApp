// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_companies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductionCompaniesImpl _$$ProductionCompaniesImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductionCompaniesImpl(
      id: (json['id'] as num?)?.toInt(),
      logoPath: json['logoPath'] as String?,
      name: json['name'] as String?,
      originCountry: json['originCountry'] as String?,
    );

Map<String, dynamic> _$$ProductionCompaniesImplToJson(
        _$ProductionCompaniesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logoPath': instance.logoPath,
      'name': instance.name,
      'originCountry': instance.originCountry,
    };
