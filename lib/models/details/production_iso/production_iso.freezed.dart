// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_iso.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductionIso _$ProductionIsoFromJson(Map<String, dynamic> json) {
  return _ProductionIso.fromJson(json);
}

/// @nodoc
mixin _$ProductionIso {
  String get iso_3166_1 => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionIsoCopyWith<ProductionIso> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionIsoCopyWith<$Res> {
  factory $ProductionIsoCopyWith(
          ProductionIso value, $Res Function(ProductionIso) then) =
      _$ProductionIsoCopyWithImpl<$Res, ProductionIso>;
  @useResult
  $Res call({String iso_3166_1, String name});
}

/// @nodoc
class _$ProductionIsoCopyWithImpl<$Res, $Val extends ProductionIso>
    implements $ProductionIsoCopyWith<$Res> {
  _$ProductionIsoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso_3166_1 = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      iso_3166_1: null == iso_3166_1
          ? _value.iso_3166_1
          : iso_3166_1 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductionIsoImplCopyWith<$Res>
    implements $ProductionIsoCopyWith<$Res> {
  factory _$$ProductionIsoImplCopyWith(
          _$ProductionIsoImpl value, $Res Function(_$ProductionIsoImpl) then) =
      __$$ProductionIsoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String iso_3166_1, String name});
}

/// @nodoc
class __$$ProductionIsoImplCopyWithImpl<$Res>
    extends _$ProductionIsoCopyWithImpl<$Res, _$ProductionIsoImpl>
    implements _$$ProductionIsoImplCopyWith<$Res> {
  __$$ProductionIsoImplCopyWithImpl(
      _$ProductionIsoImpl _value, $Res Function(_$ProductionIsoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso_3166_1 = null,
    Object? name = null,
  }) {
    return _then(_$ProductionIsoImpl(
      iso_3166_1: null == iso_3166_1
          ? _value.iso_3166_1
          : iso_3166_1 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductionIsoImpl implements _ProductionIso {
  const _$ProductionIsoImpl({required this.iso_3166_1, required this.name});

  factory _$ProductionIsoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductionIsoImplFromJson(json);

  @override
  final String iso_3166_1;
  @override
  final String name;

  @override
  String toString() {
    return 'ProductionIso(iso_3166_1: $iso_3166_1, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductionIsoImpl &&
            (identical(other.iso_3166_1, iso_3166_1) ||
                other.iso_3166_1 == iso_3166_1) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iso_3166_1, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductionIsoImplCopyWith<_$ProductionIsoImpl> get copyWith =>
      __$$ProductionIsoImplCopyWithImpl<_$ProductionIsoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductionIsoImplToJson(
      this,
    );
  }
}

abstract class _ProductionIso implements ProductionIso {
  const factory _ProductionIso(
      {required final String iso_3166_1,
      required final String name}) = _$ProductionIsoImpl;

  factory _ProductionIso.fromJson(Map<String, dynamic> json) =
      _$ProductionIsoImpl.fromJson;

  @override
  String get iso_3166_1;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ProductionIsoImplCopyWith<_$ProductionIsoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
