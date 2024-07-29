import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_countries.freezed.dart';
part 'production_countries.g.dart';

@freezed
class ProductionCountries with _$ProductionCountries{

  const factory ProductionCountries({
  required final String? iso31661,
  required final String? name})= _ProductionCountries;

  factory ProductionCountries.fromJson(Map<String, dynamic> json) =>
        _$ProductionCountriesFromJson(json);

}
