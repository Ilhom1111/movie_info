// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PopularModel _$PopularModelFromJson(Map<String, dynamic> json) {
  return _PopularModel.fromJson(json);
}

/// @nodoc
mixin _$PopularModel {
  num get page => throw _privateConstructorUsedError;
  List<ResultsPopular> get results => throw _privateConstructorUsedError;
  num get total_pages => throw _privateConstructorUsedError;
  num get total_results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularModelCopyWith<PopularModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularModelCopyWith<$Res> {
  factory $PopularModelCopyWith(
          PopularModel value, $Res Function(PopularModel) then) =
      _$PopularModelCopyWithImpl<$Res, PopularModel>;
  @useResult
  $Res call(
      {num page,
      List<ResultsPopular> results,
      num total_pages,
      num total_results});
}

/// @nodoc
class _$PopularModelCopyWithImpl<$Res, $Val extends PopularModel>
    implements $PopularModelCopyWith<$Res> {
  _$PopularModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? total_pages = null,
    Object? total_results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as num,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsPopular>,
      total_pages: null == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as num,
      total_results: null == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularModelImplCopyWith<$Res>
    implements $PopularModelCopyWith<$Res> {
  factory _$$PopularModelImplCopyWith(
          _$PopularModelImpl value, $Res Function(_$PopularModelImpl) then) =
      __$$PopularModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num page,
      List<ResultsPopular> results,
      num total_pages,
      num total_results});
}

/// @nodoc
class __$$PopularModelImplCopyWithImpl<$Res>
    extends _$PopularModelCopyWithImpl<$Res, _$PopularModelImpl>
    implements _$$PopularModelImplCopyWith<$Res> {
  __$$PopularModelImplCopyWithImpl(
      _$PopularModelImpl _value, $Res Function(_$PopularModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? total_pages = null,
    Object? total_results = null,
  }) {
    return _then(_$PopularModelImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as num,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsPopular>,
      total_pages: null == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as num,
      total_results: null == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularModelImpl implements _PopularModel {
  const _$PopularModelImpl(
      {required this.page,
      required final List<ResultsPopular> results,
      required this.total_pages,
      required this.total_results})
      : _results = results;

  factory _$PopularModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularModelImplFromJson(json);

  @override
  final num page;
  final List<ResultsPopular> _results;
  @override
  List<ResultsPopular> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final num total_pages;
  @override
  final num total_results;

  @override
  String toString() {
    return 'PopularModel(page: $page, results: $results, total_pages: $total_pages, total_results: $total_results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularModelImpl &&
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
      page,
      const DeepCollectionEquality().hash(_results),
      total_pages,
      total_results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularModelImplCopyWith<_$PopularModelImpl> get copyWith =>
      __$$PopularModelImplCopyWithImpl<_$PopularModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularModelImplToJson(
      this,
    );
  }
}

abstract class _PopularModel implements PopularModel {
  const factory _PopularModel(
      {required final num page,
      required final List<ResultsPopular> results,
      required final num total_pages,
      required final num total_results}) = _$PopularModelImpl;

  factory _PopularModel.fromJson(Map<String, dynamic> json) =
      _$PopularModelImpl.fromJson;

  @override
  num get page;
  @override
  List<ResultsPopular> get results;
  @override
  num get total_pages;
  @override
  num get total_results;
  @override
  @JsonKey(ignore: true)
  _$$PopularModelImplCopyWith<_$PopularModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
