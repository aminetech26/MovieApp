// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_countries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductionCountries _$ProductionCountriesFromJson(Map<String, dynamic> json) {
  return _ProductionCountries.fromJson(json);
}

/// @nodoc
mixin _$ProductionCountries {
  String? get iso31661 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this ProductionCountries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductionCountries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductionCountriesCopyWith<ProductionCountries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCountriesCopyWith<$Res> {
  factory $ProductionCountriesCopyWith(
          ProductionCountries value, $Res Function(ProductionCountries) then) =
      _$ProductionCountriesCopyWithImpl<$Res, ProductionCountries>;
  @useResult
  $Res call({String? iso31661, String? name});
}

/// @nodoc
class _$ProductionCountriesCopyWithImpl<$Res, $Val extends ProductionCountries>
    implements $ProductionCountriesCopyWith<$Res> {
  _$ProductionCountriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductionCountries
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
abstract class _$$ProductionCountriesImplCopyWith<$Res>
    implements $ProductionCountriesCopyWith<$Res> {
  factory _$$ProductionCountriesImplCopyWith(_$ProductionCountriesImpl value,
          $Res Function(_$ProductionCountriesImpl) then) =
      __$$ProductionCountriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? iso31661, String? name});
}

/// @nodoc
class __$$ProductionCountriesImplCopyWithImpl<$Res>
    extends _$ProductionCountriesCopyWithImpl<$Res, _$ProductionCountriesImpl>
    implements _$$ProductionCountriesImplCopyWith<$Res> {
  __$$ProductionCountriesImplCopyWithImpl(_$ProductionCountriesImpl _value,
      $Res Function(_$ProductionCountriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductionCountries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ProductionCountriesImpl(
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
class _$ProductionCountriesImpl implements _ProductionCountries {
  const _$ProductionCountriesImpl({required this.iso31661, required this.name});

  factory _$ProductionCountriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCountriesImplFromJson(json);

  @override
  final String? iso31661;
  @override
  final String? name;

  @override
  String toString() {
    return 'ProductionCountries(iso31661: $iso31661, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCountriesImpl &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, iso31661, name);

  /// Create a copy of ProductionCountries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCountriesImplCopyWith<_$ProductionCountriesImpl> get copyWith =>
      __$$ProductionCountriesImplCopyWithImpl<_$ProductionCountriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCountriesImplToJson(
      this,
    );
  }
}

abstract class _ProductionCountries implements ProductionCountries {
  const factory _ProductionCountries(
      {required final String? iso31661,
      required final String? name}) = _$ProductionCountriesImpl;

  factory _ProductionCountries.fromJson(Map<String, dynamic> json) =
      _$ProductionCountriesImpl.fromJson;

  @override
  String? get iso31661;
  @override
  String? get name;

  /// Create a copy of ProductionCountries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductionCountriesImplCopyWith<_$ProductionCountriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
