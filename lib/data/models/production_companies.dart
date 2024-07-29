
import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_companies.freezed.dart';
part 'production_companies.g.dart';

@freezed
class ProductionCompanies with _$ProductionCompanies{
  

  const factory ProductionCompanies({
  required final int? id,
  required final String? logoPath,
  required final String? name,
  required final String? originCountry})= _ProductionCompanies;

  factory ProductionCompanies.fromJson(Map<String, dynamic> json) =>
        _$ProductionCompaniesFromJson(json);

}
