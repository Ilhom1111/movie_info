// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'belongs_to_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BelongsToCollection _$BelongsToCollectionFromJson(Map<String, dynamic> json) {
  return _BelongsToCollection.fromJson(json);
}

/// @nodoc
mixin _$BelongsToCollection {
  num get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get poster_path => throw _privateConstructorUsedError;
  String? get backdrop_path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BelongsToCollectionCopyWith<BelongsToCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BelongsToCollectionCopyWith<$Res> {
  factory $BelongsToCollectionCopyWith(
          BelongsToCollection value, $Res Function(BelongsToCollection) then) =
      _$BelongsToCollectionCopyWithImpl<$Res, BelongsToCollection>;
  @useResult
  $Res call({num id, String name, String? poster_path, String? backdrop_path});
}

/// @nodoc
class _$BelongsToCollectionCopyWithImpl<$Res, $Val extends BelongsToCollection>
    implements $BelongsToCollectionCopyWith<$Res> {
  _$BelongsToCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? poster_path = freezed,
    Object? backdrop_path = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      poster_path: freezed == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      backdrop_path: freezed == backdrop_path
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BelongsToCollectionImplCopyWith<$Res>
    implements $BelongsToCollectionCopyWith<$Res> {
  factory _$$BelongsToCollectionImplCopyWith(_$BelongsToCollectionImpl value,
          $Res Function(_$BelongsToCollectionImpl) then) =
      __$$BelongsToCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num id, String name, String? poster_path, String? backdrop_path});
}

/// @nodoc
class __$$BelongsToCollectionImplCopyWithImpl<$Res>
    extends _$BelongsToCollectionCopyWithImpl<$Res, _$BelongsToCollectionImpl>
    implements _$$BelongsToCollectionImplCopyWith<$Res> {
  __$$BelongsToCollectionImplCopyWithImpl(_$BelongsToCollectionImpl _value,
      $Res Function(_$BelongsToCollectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? poster_path = freezed,
    Object? backdrop_path = freezed,
  }) {
    return _then(_$BelongsToCollectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      poster_path: freezed == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      backdrop_path: freezed == backdrop_path
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BelongsToCollectionImpl implements _BelongsToCollection {
  const _$BelongsToCollectionImpl(
      {required this.id,
      required this.name,
      required this.poster_path,
      required this.backdrop_path});

  factory _$BelongsToCollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$BelongsToCollectionImplFromJson(json);

  @override
  final num id;
  @override
  final String name;
  @override
  final String? poster_path;
  @override
  final String? backdrop_path;

  @override
  String toString() {
    return 'BelongsToCollection(id: $id, name: $name, poster_path: $poster_path, backdrop_path: $backdrop_path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BelongsToCollectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.poster_path, poster_path) ||
                other.poster_path == poster_path) &&
            (identical(other.backdrop_path, backdrop_path) ||
                other.backdrop_path == backdrop_path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, poster_path, backdrop_path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BelongsToCollectionImplCopyWith<_$BelongsToCollectionImpl> get copyWith =>
      __$$BelongsToCollectionImplCopyWithImpl<_$BelongsToCollectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BelongsToCollectionImplToJson(
      this,
    );
  }
}

abstract class _BelongsToCollection implements BelongsToCollection {
  const factory _BelongsToCollection(
      {required final num id,
      required final String name,
      required final String? poster_path,
      required final String? backdrop_path}) = _$BelongsToCollectionImpl;

  factory _BelongsToCollection.fromJson(Map<String, dynamic> json) =
      _$BelongsToCollectionImpl.fromJson;

  @override
  num get id;
  @override
  String get name;
  @override
  String? get poster_path;
  @override
  String? get backdrop_path;
  @override
  @JsonKey(ignore: true)
  _$$BelongsToCollectionImplCopyWith<_$BelongsToCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
