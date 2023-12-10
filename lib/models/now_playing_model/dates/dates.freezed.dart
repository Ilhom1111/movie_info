// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dates _$DatesFromJson(Map<String, dynamic> json) {
  return _Dates.fromJson(json);
}

/// @nodoc
mixin _$Dates {
  String get maximum => throw _privateConstructorUsedError;
  String get minimum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatesCopyWith<Dates> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatesCopyWith<$Res> {
  factory $DatesCopyWith(Dates value, $Res Function(Dates) then) =
      _$DatesCopyWithImpl<$Res, Dates>;
  @useResult
  $Res call({String maximum, String minimum});
}

/// @nodoc
class _$DatesCopyWithImpl<$Res, $Val extends Dates>
    implements $DatesCopyWith<$Res> {
  _$DatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = null,
    Object? minimum = null,
  }) {
    return _then(_value.copyWith(
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatesImplCopyWith<$Res> implements $DatesCopyWith<$Res> {
  factory _$$DatesImplCopyWith(
          _$DatesImpl value, $Res Function(_$DatesImpl) then) =
      __$$DatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String maximum, String minimum});
}

/// @nodoc
class __$$DatesImplCopyWithImpl<$Res>
    extends _$DatesCopyWithImpl<$Res, _$DatesImpl>
    implements _$$DatesImplCopyWith<$Res> {
  __$$DatesImplCopyWithImpl(
      _$DatesImpl _value, $Res Function(_$DatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = null,
    Object? minimum = null,
  }) {
    return _then(_$DatesImpl(
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatesImpl implements _Dates {
  const _$DatesImpl({required this.maximum, required this.minimum});

  factory _$DatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatesImplFromJson(json);

  @override
  final String maximum;
  @override
  final String minimum;

  @override
  String toString() {
    return 'Dates(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatesImpl &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatesImplCopyWith<_$DatesImpl> get copyWith =>
      __$$DatesImplCopyWithImpl<_$DatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatesImplToJson(
      this,
    );
  }
}

abstract class _Dates implements Dates {
  const factory _Dates(
      {required final String maximum,
      required final String minimum}) = _$DatesImpl;

  factory _Dates.fromJson(Map<String, dynamic> json) = _$DatesImpl.fromJson;

  @override
  String get maximum;
  @override
  String get minimum;
  @override
  @JsonKey(ignore: true)
  _$$DatesImplCopyWith<_$DatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
