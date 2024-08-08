// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoResultModel _$VideoResultModelFromJson(Map<String, dynamic> json) {
  return _VideoResultModel.fromJson(json);
}

/// @nodoc
mixin _$VideoResultModel {
  int get id => throw _privateConstructorUsedError;
  List<VideoModel> get results => throw _privateConstructorUsedError;

  /// Serializes this VideoResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoResultModelCopyWith<VideoResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResultModelCopyWith<$Res> {
  factory $VideoResultModelCopyWith(
          VideoResultModel value, $Res Function(VideoResultModel) then) =
      _$VideoResultModelCopyWithImpl<$Res, VideoResultModel>;
  @useResult
  $Res call({int id, List<VideoModel> results});
}

/// @nodoc
class _$VideoResultModelCopyWithImpl<$Res, $Val extends VideoResultModel>
    implements $VideoResultModelCopyWith<$Res> {
  _$VideoResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoResultModelImplCopyWith<$Res>
    implements $VideoResultModelCopyWith<$Res> {
  factory _$$VideoResultModelImplCopyWith(_$VideoResultModelImpl value,
          $Res Function(_$VideoResultModelImpl) then) =
      __$$VideoResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<VideoModel> results});
}

/// @nodoc
class __$$VideoResultModelImplCopyWithImpl<$Res>
    extends _$VideoResultModelCopyWithImpl<$Res, _$VideoResultModelImpl>
    implements _$$VideoResultModelImplCopyWith<$Res> {
  __$$VideoResultModelImplCopyWithImpl(_$VideoResultModelImpl _value,
      $Res Function(_$VideoResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? results = null,
  }) {
    return _then(_$VideoResultModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoResultModelImpl implements _VideoResultModel {
  const _$VideoResultModelImpl(
      {required this.id, required final List<VideoModel> results})
      : _results = results;

  factory _$VideoResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoResultModelImplFromJson(json);

  @override
  final int id;
  final List<VideoModel> _results;
  @override
  List<VideoModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'VideoResultModel(id: $id, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoResultModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_results));

  /// Create a copy of VideoResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoResultModelImplCopyWith<_$VideoResultModelImpl> get copyWith =>
      __$$VideoResultModelImplCopyWithImpl<_$VideoResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoResultModelImplToJson(
      this,
    );
  }
}

abstract class _VideoResultModel implements VideoResultModel {
  const factory _VideoResultModel(
      {required final int id,
      required final List<VideoModel> results}) = _$VideoResultModelImpl;

  factory _VideoResultModel.fromJson(Map<String, dynamic> json) =
      _$VideoResultModelImpl.fromJson;

  @override
  int get id;
  @override
  List<VideoModel> get results;

  /// Create a copy of VideoResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoResultModelImplCopyWith<_$VideoResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
