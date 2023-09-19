// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyException {
  String get message => throw _privateConstructorUsedError;
  String get statusCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyExceptionCopyWith<MyException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyExceptionCopyWith<$Res> {
  factory $MyExceptionCopyWith(
          MyException value, $Res Function(MyException) then) =
      _$MyExceptionCopyWithImpl<$Res, MyException>;
  @useResult
  $Res call({String message, String statusCode});
}

/// @nodoc
class _$MyExceptionCopyWithImpl<$Res, $Val extends MyException>
    implements $MyExceptionCopyWith<$Res> {
  _$MyExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyExceptionCopyWith<$Res>
    implements $MyExceptionCopyWith<$Res> {
  factory _$$_MyExceptionCopyWith(
          _$_MyException value, $Res Function(_$_MyException) then) =
      __$$_MyExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String statusCode});
}

/// @nodoc
class __$$_MyExceptionCopyWithImpl<$Res>
    extends _$MyExceptionCopyWithImpl<$Res, _$_MyException>
    implements _$$_MyExceptionCopyWith<$Res> {
  __$$_MyExceptionCopyWithImpl(
      _$_MyException _value, $Res Function(_$_MyException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
  }) {
    return _then(_$_MyException(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MyException implements _MyException {
  const _$_MyException(this.message, this.statusCode);

  @override
  final String message;
  @override
  final String statusCode;

  @override
  String toString() {
    return 'MyException(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyException &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyExceptionCopyWith<_$_MyException> get copyWith =>
      __$$_MyExceptionCopyWithImpl<_$_MyException>(this, _$identity);
}

abstract class _MyException implements MyException {
  const factory _MyException(final String message, final String statusCode) =
      _$_MyException;

  @override
  String get message;
  @override
  String get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$_MyExceptionCopyWith<_$_MyException> get copyWith =>
      throw _privateConstructorUsedError;
}
