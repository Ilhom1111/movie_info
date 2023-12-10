// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_comp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductionComp _$ProductionCompFromJson(Map<String, dynamic> json) {
  return _ProductionComp.fromJson(json);
}

/// @nodoc
mixin _$ProductionComp {
  int get id => throw _privateConstructorUsedError;
  String? get logo_path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get origin_country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCompCopyWith<ProductionComp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompCopyWith<$Res> {
  factory $ProductionCompCopyWith(
          ProductionComp value, $Res Function(ProductionComp) then) =
      _$ProductionCompCopyWithImpl<$Res, ProductionComp>;
  @useResult
  $Res call({int id, String? logo_path, String name, String origin_country});
}

/// @nodoc
class _$ProductionCompCopyWithImpl<$Res, $Val extends ProductionComp>
    implements $ProductionCompCopyWith<$Res> {
  _$ProductionCompCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logo_path = freezed,
    Object? name = null,
    Object? origin_country = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logo_path: freezed == logo_path
          ? _value.logo_path
          : logo_path // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      origin_country: null == origin_country
          ? _value.origin_country
          : origin_country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionCompImplCopyWith<$Res>
    implements $ProductionCompCopyWith<$Res> {
  factory _$$ProductionCompImplCopyWith(_$ProductionCompImpl value,
          $Res Function(_$ProductionCompImpl) then) =
      __$$ProductionCompImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? logo_path, String name, String origin_country});
}

/// @nodoc
class __$$ProductionCompImplCopyWithImpl<$Res>
    extends _$ProductionCompCopyWithImpl<$Res, _$ProductionCompImpl>
    implements _$$ProductionCompImplCopyWith<$Res> {
  __$$ProductionCompImplCopyWithImpl(
      _$ProductionCompImpl _value, $Res Function(_$ProductionCompImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? logo_path = freezed,
    Object? name = null,
    Object? origin_country = null,
  }) {
    return _then(_$ProductionCompImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logo_path: freezed == logo_path
          ? _value.logo_path
          : logo_path // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      origin_country: null == origin_country
          ? _value.origin_country
          : origin_country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionCompImpl implements _ProductionComp {
  const _$ProductionCompImpl(
      {required this.id,
      required this.logo_path,
      required this.name,
      required this.origin_country});

  factory _$ProductionCompImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionCompImplFromJson(json);

  @override
  final int id;
  @override
  final String? logo_path;
  @override
  final String name;
  @override
  final String origin_country;

  @override
  String toString() {
    return 'ProductionComp(id: $id, logo_path: $logo_path, name: $name, origin_country: $origin_country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionCompImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.logo_path, logo_path) ||
                other.logo_path == logo_path) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.origin_country, origin_country) ||
                other.origin_country == origin_country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, logo_path, name, origin_country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionCompImplCopyWith<_$ProductionCompImpl> get copyWith =>
      __$$ProductionCompImplCopyWithImpl<_$ProductionCompImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionCompImplToJson(
      this,
    );
  }
}

abstract class _ProductionComp implements ProductionComp {
  const factory _ProductionComp(
      {required final int id,
      required final String? logo_path,
      required final String name,
      required final String origin_country}) = _$ProductionCompImpl;

  factory _ProductionComp.fromJson(Map<String, dynamic> json) =
      _$ProductionCompImpl.fromJson;

  @override
  int get id;
  @override
  String? get logo_path;
  @override
  String get name;
  @override
  String get origin_country;
  @override
  @JsonKey(ignore: true)
  _$$ProductionCompImplCopyWith<_$ProductionCompImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
