// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spoken_languages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpokenLanguages _$SpokenLanguagesFromJson(Map<String, dynamic> json) {
  return _SpokenLanguages.fromJson(json);
}

/// @nodoc
mixin _$SpokenLanguages {
  String? get iso31661 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this SpokenLanguages to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpokenLanguages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpokenLanguagesCopyWith<SpokenLanguages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpokenLanguagesCopyWith<$Res> {
  factory $SpokenLanguagesCopyWith(
          SpokenLanguages value, $Res Function(SpokenLanguages) then) =
      _$SpokenLanguagesCopyWithImpl<$Res, SpokenLanguages>;
  @useResult
  $Res call({String? iso31661, String? name});
}

/// @nodoc
class _$SpokenLanguagesCopyWithImpl<$Res, $Val extends SpokenLanguages>
    implements $SpokenLanguagesCopyWith<$Res> {
  _$SpokenLanguagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpokenLanguages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpokenLanguagesImplCopyWith<$Res>
    implements $SpokenLanguagesCopyWith<$Res> {
  factory _$$SpokenLanguagesImplCopyWith(_$SpokenLanguagesImpl value,
          $Res Function(_$SpokenLanguagesImpl) then) =
      __$$SpokenLanguagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? iso31661, String? name});
}

/// @nodoc
class __$$SpokenLanguagesImplCopyWithImpl<$Res>
    extends _$SpokenLanguagesCopyWithImpl<$Res, _$SpokenLanguagesImpl>
    implements _$$SpokenLanguagesImplCopyWith<$Res> {
  __$$SpokenLanguagesImplCopyWithImpl(
      _$SpokenLanguagesImpl _value, $Res Function(_$SpokenLanguagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpokenLanguages
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SpokenLanguagesImpl(
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpokenLanguagesImpl implements _SpokenLanguages {
  const _$SpokenLanguagesImpl({required this.iso31661, required this.name});

  factory _$SpokenLanguagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpokenLanguagesImplFromJson(json);

  @override
  final String? iso31661;
  @override
  final String? name;

  @override
  String toString() {
    return 'SpokenLanguages(iso31661: $iso31661, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpokenLanguagesImpl &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, iso31661, name);

  /// Create a copy of SpokenLanguages
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpokenLanguagesImplCopyWith<_$SpokenLanguagesImpl> get copyWith =>
      __$$SpokenLanguagesImplCopyWithImpl<_$SpokenLanguagesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpokenLanguagesImplToJson(
      this,
    );
  }
}

abstract class _SpokenLanguages implements SpokenLanguages {
  const factory _SpokenLanguages(
      {required final String? iso31661,
      required final String? name}) = _$SpokenLanguagesImpl;

  factory _SpokenLanguages.fromJson(Map<String, dynamic> json) =
      _$SpokenLanguagesImpl.fromJson;

  @override
  String? get iso31661;
  @override
  String? get name;

  /// Create a copy of SpokenLanguages
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpokenLanguagesImplCopyWith<_$SpokenLanguagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
