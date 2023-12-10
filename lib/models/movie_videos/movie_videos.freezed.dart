// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_videos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieVideos _$MovieVideosFromJson(Map<String, dynamic> json) {
  return _MovieVideos.fromJson(json);
}

/// @nodoc
mixin _$MovieVideos {
  int get id => throw _privateConstructorUsedError;
  List<Results> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieVideosCopyWith<MovieVideos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieVideosCopyWith<$Res> {
  factory $MovieVideosCopyWith(
          MovieVideos value, $Res Function(MovieVideos) then) =
      _$MovieVideosCopyWithImpl<$Res, MovieVideos>;
  @useResult
  $Res call({int id, List<Results> results});
}

/// @nodoc
class _$MovieVideosCopyWithImpl<$Res, $Val extends MovieVideos>
    implements $MovieVideosCopyWith<$Res> {
  _$MovieVideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as List<Results>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieVideosImplCopyWith<$Res>
    implements $MovieVideosCopyWith<$Res> {
  factory _$$MovieVideosImplCopyWith(
          _$MovieVideosImpl value, $Res Function(_$MovieVideosImpl) then) =
      __$$MovieVideosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<Results> results});
}

/// @nodoc
class __$$MovieVideosImplCopyWithImpl<$Res>
    extends _$MovieVideosCopyWithImpl<$Res, _$MovieVideosImpl>
    implements _$$MovieVideosImplCopyWith<$Res> {
  __$$MovieVideosImplCopyWithImpl(
      _$MovieVideosImpl _value, $Res Function(_$MovieVideosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? results = null,
  }) {
    return _then(_$MovieVideosImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieVideosImpl implements _MovieVideos {
  const _$MovieVideosImpl(
      {required this.id, required final List<Results> results})
      : _results = results;

  factory _$MovieVideosImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieVideosImplFromJson(json);

  @override
  final int id;
  final List<Results> _results;
  @override
  List<Results> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MovieVideos(id: $id, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieVideosImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieVideosImplCopyWith<_$MovieVideosImpl> get copyWith =>
      __$$MovieVideosImplCopyWithImpl<_$MovieVideosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieVideosImplToJson(
      this,
    );
  }
}

abstract class _MovieVideos implements MovieVideos {
  const factory _MovieVideos(
      {required final int id,
      required final List<Results> results}) = _$MovieVideosImpl;

  factory _MovieVideos.fromJson(Map<String, dynamic> json) =
      _$MovieVideosImpl.fromJson;

  @override
  int get id;
  @override
  List<Results> get results;
  @override
  @JsonKey(ignore: true)
  _$$MovieVideosImplCopyWith<_$MovieVideosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
