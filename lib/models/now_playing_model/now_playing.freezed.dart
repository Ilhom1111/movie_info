// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NowPlaying _$NowPlayingFromJson(Map<String, dynamic> json) {
  return _NowPlaying.fromJson(json);
}

/// @nodoc
mixin _$NowPlaying {
  Dates get dates => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<Results> get results => throw _privateConstructorUsedError;
  int get total_pages => throw _privateConstructorUsedError;
  int get total_results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NowPlayingCopyWith<NowPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingCopyWith<$Res> {
  factory $NowPlayingCopyWith(
          NowPlaying value, $Res Function(NowPlaying) then) =
      _$NowPlayingCopyWithImpl<$Res, NowPlaying>;
  @useResult
  $Res call(
      {Dates dates,
      int page,
      List<Results> results,
      int total_pages,
      int total_results});

  $DatesCopyWith<$Res> get dates;
}

/// @nodoc
class _$NowPlayingCopyWithImpl<$Res, $Val extends NowPlaying>
    implements $NowPlayingCopyWith<$Res> {
  _$NowPlayingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = null,
    Object? page = null,
    Object? results = null,
    Object? total_pages = null,
    Object? total_results = null,
  }) {
    return _then(_value.copyWith(
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
      total_pages: null == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int,
      total_results: null == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DatesCopyWith<$Res> get dates {
    return $DatesCopyWith<$Res>(_value.dates, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NowPlayingImplCopyWith<$Res>
    implements $NowPlayingCopyWith<$Res> {
  factory _$$NowPlayingImplCopyWith(
          _$NowPlayingImpl value, $Res Function(_$NowPlayingImpl) then) =
      __$$NowPlayingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Dates dates,
      int page,
      List<Results> results,
      int total_pages,
      int total_results});

  @override
  $DatesCopyWith<$Res> get dates;
}

/// @nodoc
class __$$NowPlayingImplCopyWithImpl<$Res>
    extends _$NowPlayingCopyWithImpl<$Res, _$NowPlayingImpl>
    implements _$$NowPlayingImplCopyWith<$Res> {
  __$$NowPlayingImplCopyWithImpl(
      _$NowPlayingImpl _value, $Res Function(_$NowPlayingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = null,
    Object? page = null,
    Object? results = null,
    Object? total_pages = null,
    Object? total_results = null,
  }) {
    return _then(_$NowPlayingImpl(
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
      total_pages: null == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int,
      total_results: null == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NowPlayingImpl implements _NowPlaying {
  const _$NowPlayingImpl(
      {required this.dates,
      required this.page,
      required final List<Results> results,
      required this.total_pages,
      required this.total_results})
      : _results = results;

  factory _$NowPlayingImpl.fromJson(Map<String, dynamic> json) =>
      _$$NowPlayingImplFromJson(json);

  @override
  final Dates dates;
  @override
  final int page;
  final List<Results> _results;
  @override
  List<Results> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int total_pages;
  @override
  final int total_results;

  @override
  String toString() {
    return 'NowPlaying(dates: $dates, page: $page, results: $results, total_pages: $total_pages, total_results: $total_results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingImpl &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.total_pages, total_pages) ||
                other.total_pages == total_pages) &&
            (identical(other.total_results, total_results) ||
                other.total_results == total_results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dates,
      page,
      const DeepCollectionEquality().hash(_results),
      total_pages,
      total_results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingImplCopyWith<_$NowPlayingImpl> get copyWith =>
      __$$NowPlayingImplCopyWithImpl<_$NowPlayingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NowPlayingImplToJson(
      this,
    );
  }
}

abstract class _NowPlaying implements NowPlaying {
  const factory _NowPlaying(
      {required final Dates dates,
      required final int page,
      required final List<Results> results,
      required final int total_pages,
      required final int total_results}) = _$NowPlayingImpl;

  factory _NowPlaying.fromJson(Map<String, dynamic> json) =
      _$NowPlayingImpl.fromJson;

  @override
  Dates get dates;
  @override
  int get page;
  @override
  List<Results> get results;
  @override
  int get total_pages;
  @override
  int get total_results;
  @override
  @JsonKey(ignore: true)
  _$$NowPlayingImplCopyWith<_$NowPlayingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
