import 'package:freezed_annotation/freezed_annotation.dart';

part 'spoken_languages.freezed.dart';
part 'spoken_languages.g.dart';

@freezed
class SpokenLanguages with _$SpokenLanguages{

  const factory SpokenLanguages({
  required final String? iso31661,
  required final String? name})= _SpokenLanguages;

  factory SpokenLanguages.fromJson(Map<String, dynamic> json) =>
        _$SpokenLanguagesFromJson(json);

}