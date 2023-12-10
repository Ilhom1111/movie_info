// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spoken.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Spoken _$SpokenFromJson(Map<String, dynamic> json) {
  return _Spoken.fromJson(json);
}

/// @nodoc
mixin _$Spoken {
  String get english_name => throw _privateConstructorUsedError;
  String get iso_639_1 => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpokenCopyWith<Spoken> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpokenCopyWith<$Res> {
  factory $SpokenCopyWith(Spoken value, $Res Function(Spoken) then) =
      _$SpokenCopyWithImpl<$Res, Spoken>;
  @useResult
  $Res call({String english_name, String iso_639_1, String name});
}

/// @nodoc
class _$SpokenCopyWithImpl<$Res, $Val extends Spoken>
    implements $SpokenCopyWith<$Res> {
  _$SpokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? english_name = null,
    Object? iso_639_1 = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      english_name: null == english_name
          ? _value.english_name
          : english_name // ignore: cast_nullable_to_non_nullable
              as String,
      iso_639_1: null == iso_639_1
          ? _value.iso_639_1
          : iso_639_1 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpokenImplCopyWith<$Res> implements $SpokenCopyWith<$Res> {
  factory _$$SpokenImplCopyWith(
          _$SpokenImpl value, $Res Function(_$SpokenImpl) then) =
      __$$SpokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String english_name, String iso_639_1, String name});
}

/// @nodoc
class __$$SpokenImplCopyWithImpl<$Res>
    extends _$SpokenCopyWithImpl<$Res, _$SpokenImpl>
    implements _$$SpokenImplCopyWith<$Res> {
  __$$SpokenImplCopyWithImpl(
      _$SpokenImpl _value, $Res Function(_$SpokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? english_name = null,
    Object? iso_639_1 = null,
    Object? name = null,
  }) {
    return _then(_$SpokenImpl(
      english_name: null == english_name
          ? _value.english_name
          : english_name // ignore: cast_nullable_to_non_nullable
              as String,
      iso_639_1: null == iso_639_1
          ? _value.iso_639_1
          : iso_639_1 // ignore: cast_nullable_to_non_nullable
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
class _$SpokenImpl implements _Spoken {
  const _$SpokenImpl(
      {required this.english_name,
      required this.iso_639_1,
      required this.name});

  factory _$SpokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpokenImplFromJson(json);

  @override
  final String english_name;
  @override
  final String iso_639_1;
  @override
  final String name;

  @override
  String toString() {
    return 'Spoken(english_name: $english_name, iso_639_1: $iso_639_1, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpokenImpl &&
            (identical(other.english_name, english_name) ||
                other.english_name == english_name) &&
            (identical(other.iso_639_1, iso_639_1) ||
                other.iso_639_1 == iso_639_1) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, english_name, iso_639_1, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpokenImplCopyWith<_$SpokenImpl> get copyWith =>
      __$$SpokenImplCopyWithImpl<_$SpokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpokenImplToJson(
      this,
    );
  }
}

abstract class _Spoken implements Spoken {
  const factory _Spoken(
      {required final String english_name,
      required final String iso_639_1,
      required final String name}) = _$SpokenImpl;

  factory _Spoken.fromJson(Map<String, dynamic> json) = _$SpokenImpl.fromJson;

  @override
  String get english_name;
  @override
  String get iso_639_1;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SpokenImplCopyWith<_$SpokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
