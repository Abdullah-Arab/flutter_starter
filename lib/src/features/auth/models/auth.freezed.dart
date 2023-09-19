// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Auth _$AuthFromJson(Map<String, dynamic> json) {
  return _Auth.fromJson(json);
}

/// @nodoc
mixin _$Auth {
  flutter_starterUser get user => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCopyWith<Auth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res, Auth>;
  @useResult
  $Res call({flutter_starterUser user, String token});

  $flutter_starterUserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthCopyWithImpl<$Res, $Val extends Auth>
    implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as flutter_starterUser,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $flutter_starterUserCopyWith<$Res> get user {
    return $flutter_starterUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthCopyWith<$Res> implements $AuthCopyWith<$Res> {
  factory _$$_AuthCopyWith(_$_Auth value, $Res Function(_$_Auth) then) =
      __$$_AuthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({flutter_starterUser user, String token});

  @override
  $flutter_starterUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res, _$_Auth>
    implements _$$_AuthCopyWith<$Res> {
  __$$_AuthCopyWithImpl(_$_Auth _value, $Res Function(_$_Auth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_$_Auth(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as flutter_starterUser,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Auth implements _Auth {
  const _$_Auth({required this.user, required this.token});

  factory _$_Auth.fromJson(Map<String, dynamic> json) => _$$_AuthFromJson(json);

  @override
  final flutter_starterUser user;
  @override
  final String token;

  @override
  String toString() {
    return 'Auth(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Auth &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthCopyWith<_$_Auth> get copyWith =>
      __$$_AuthCopyWithImpl<_$_Auth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthToJson(
      this,
    );
  }
}

abstract class _Auth implements Auth {
  const factory _Auth(
      {required final flutter_starterUser user,
      required final String token}) = _$_Auth;

  factory _Auth.fromJson(Map<String, dynamic> json) = _$_Auth.fromJson;

  @override
  flutter_starterUser get user;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthCopyWith<_$_Auth> get copyWith => throw _privateConstructorUsedError;
}
