// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoviesResultModel _$MoviesResultModelFromJson(Map<String, dynamic> json) {
  return _MoviesResultModel.fromJson(json);
}

/// @nodoc
mixin _$MoviesResultModel {
  int? get page => throw _privateConstructorUsedError;
  List<MovieModel>? get results => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;

  /// Serializes this MoviesResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoviesResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoviesResultModelCopyWith<MoviesResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResultModelCopyWith<$Res> {
  factory $MoviesResultModelCopyWith(
          MoviesResultModel value, $Res Function(MoviesResultModel) then) =
      _$MoviesResultModelCopyWithImpl<$Res, MoviesResultModel>;
  @useResult
  $Res call(
      {int? page,
      List<MovieModel>? results,
      int? totalPages,
      int? totalResults});
}

/// @nodoc
class _$MoviesResultModelCopyWithImpl<$Res, $Val extends MoviesResultModel>
    implements $MoviesResultModelCopyWith<$Res> {
  _$MoviesResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoviesResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoviesResultModelImplCopyWith<$Res>
    implements $MoviesResultModelCopyWith<$Res> {
  factory _$$MoviesResultModelImplCopyWith(_$MoviesResultModelImpl value,
          $Res Function(_$MoviesResultModelImpl) then) =
      __$$MoviesResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      List<MovieModel>? results,
      int? totalPages,
      int? totalResults});
}

/// @nodoc
class __$$MoviesResultModelImplCopyWithImpl<$Res>
    extends _$MoviesResultModelCopyWithImpl<$Res, _$MoviesResultModelImpl>
    implements _$$MoviesResultModelImplCopyWith<$Res> {
  __$$MoviesResultModelImplCopyWithImpl(_$MoviesResultModelImpl _value,
      $Res Function(_$MoviesResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MoviesResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$MoviesResultModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesResultModelImpl implements _MoviesResultModel {
  const _$MoviesResultModelImpl(
      {this.page,
      required final List<MovieModel>? results,
      this.totalPages,
      this.totalResults})
      : _results = results;

  factory _$MoviesResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesResultModelImplFromJson(json);

  @override
  final int? page;
  final List<MovieModel>? _results;
  @override
  List<MovieModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalPages;
  @override
  final int? totalResults;

  @override
  String toString() {
    return 'MoviesResultModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesResultModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  /// Create a copy of MoviesResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesResultModelImplCopyWith<_$MoviesResultModelImpl> get copyWith =>
      __$$MoviesResultModelImplCopyWithImpl<_$MoviesResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesResultModelImplToJson(
      this,
    );
  }
}

abstract class _MoviesResultModel implements MoviesResultModel {
  const factory _MoviesResultModel(
      {final int? page,
      required final List<MovieModel>? results,
      final int? totalPages,
      final int? totalResults}) = _$MoviesResultModelImpl;

  factory _MoviesResultModel.fromJson(Map<String, dynamic> json) =
      _$MoviesResultModelImpl.fromJson;

  @override
  int? get page;
  @override
  List<MovieModel>? get results;
  @override
  int? get totalPages;
  @override
  int? get totalResults;

  /// Create a copy of MoviesResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoviesResultModelImplCopyWith<_$MoviesResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
