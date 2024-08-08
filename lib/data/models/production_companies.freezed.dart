// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_companies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductionCompanies _$ProductionCompaniesFromJson(Map<String, dynamic> json) {
  return _ProductionCompanies.fromJson(json);
}

/// @nodoc
mixin _$ProductionCompanies {
  int? get id => throw _privateConstructorUsedError;
  String? get logoPath => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get originCountry => throw _privateConstructorUsedError;

  /// Serializes this ProductionCompanies to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductionCompanies
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductionCompaniesCopyWith<ProductionCompanies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompaniesCopyWith<$Res> {
  factory $ProductionCompaniesCopyWith(
          ProductionCompanies value, $Res Function(ProductionCompanies) then) =
      _$ProductionCompaniesCopyWithImpl<$Res, ProductionCompanies>;
  @useResult
  $Res call({int? id, String? logoPath, String? name, String? originCountry});
}

/// @nodoc
class _$ProductionCompaniesCopyWithImpl<$Res, $Val extends ProductionCompanies>
    implements $ProductionCompaniesCopyWith<$Res> {
  _$ProductionCompaniesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductionCompanies
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCompaniesImplCopyWith<$Res>
    implements $ProductionCompaniesCopyWith<$Res> {
  factory _$$ProductionCompaniesImplCopyWith(_$ProductionCompaniesImpl value,
          $Res Function(_$ProductionCompaniesImpl) then) =
      __$$ProductionCompaniesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? logoPath, String? name, String? originCountry});
}

/// @nodoc
class __$$ProductionCompaniesImplCopyWithImpl<$Res>
    extends _$ProductionCompaniesCopyWithImpl<$Res, _$ProductionCompaniesImpl>
    implements _$$ProductionCompaniesImplCopyWith<$Res> {
  __$$ProductionCompaniesImplCopyWithImpl(_$ProductionCompaniesImpl _value,
      $Res Function(_$ProductionCompaniesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductionCompanies
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_$ProductionCompaniesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: freezed == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: freezed == originCountry
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionCompaniesImpl implements _ProductionCompanies {
  const _$ProductionCompaniesImpl(
      {required this.id,
      required this.logoPath,
      required this.name,
      required this.originCountry});

  factory _$ProductionCompaniesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCompaniesImplFromJson(json);

  @override
  final int? id;
  @override
  final String? logoPath;
  @override
  final String? name;
  @override
  final String? originCountry;

  @override
  String toString() {
    return 'ProductionCompanies(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCompaniesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originCountry, originCountry) ||
                other.originCountry == originCountry));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, logoPath, name, originCountry);

  /// Create a copy of ProductionCompanies
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCompaniesImplCopyWith<_$ProductionCompaniesImpl> get copyWith =>
      __$$ProductionCompaniesImplCopyWithImpl<_$ProductionCompaniesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCompaniesImplToJson(
      this,
    );
  }
}

abstract class _ProductionCompanies implements ProductionCompanies {
  const factory _ProductionCompanies(
      {required final int? id,
      required final String? logoPath,
      required final String? name,
      required final String? originCountry}) = _$ProductionCompaniesImpl;

  factory _ProductionCompanies.fromJson(Map<String, dynamic> json) =
      _$ProductionCompaniesImpl.fromJson;

  @override
  int? get id;
  @override
  String? get logoPath;
  @override
  String? get name;
  @override
  String? get originCountry;

  /// Create a copy of ProductionCompanies
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductionCompaniesImplCopyWith<_$ProductionCompaniesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
