// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

flutter_starterUser _$flutter_starterUserFromJson(Map<String, dynamic> json) {
  return _flutter_starterUser.fromJson(json);
}

/// @nodoc
mixin _$flutter_starterUser {
  String get uid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $flutter_starterUserCopyWith<flutter_starterUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $flutter_starterUserCopyWith<$Res> {
  factory $flutter_starterUserCopyWith(
          flutter_starterUser value, $Res Function(flutter_starterUser) then) =
      _$flutter_starterUserCopyWithImpl<$Res, flutter_starterUser>;
  @useResult
  $Res call({String uid, String? name, String email, String? phone});
}

/// @nodoc
class _$flutter_starterUserCopyWithImpl<$Res, $Val extends flutter_starterUser>
    implements $flutter_starterUserCopyWith<$Res> {
  _$flutter_starterUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = freezed,
    Object? email = null,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_flutter_starterUserCopyWith<$Res>
    implements $flutter_starterUserCopyWith<$Res> {
  factory _$$_flutter_starterUserCopyWith(_$_flutter_starterUser value,
          $Res Function(_$_flutter_starterUser) then) =
      __$$_flutter_starterUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String? name, String email, String? phone});
}

/// @nodoc
class __$$_flutter_starterUserCopyWithImpl<$Res>
    extends _$flutter_starterUserCopyWithImpl<$Res, _$_flutter_starterUser>
    implements _$$_flutter_starterUserCopyWith<$Res> {
  __$$_flutter_starterUserCopyWithImpl(_$_flutter_starterUser _value,
      $Res Function(_$_flutter_starterUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = freezed,
    Object? email = null,
    Object? phone = freezed,
  }) {
    return _then(_$_flutter_starterUser(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_flutter_starterUser implements _flutter_starterUser {
  const _$_flutter_starterUser(
      {required this.uid,
      required this.name,
      required this.email,
      required this.phone});

  factory _$_flutter_starterUser.fromJson(Map<String, dynamic> json) =>
      _$$_flutter_starterUserFromJson(json);

  @override
  final String uid;
  @override
  final String? name;
  @override
  final String email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'flutter_starterUser(uid: $uid, name: $name, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_flutter_starterUser &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_flutter_starterUserCopyWith<_$_flutter_starterUser> get copyWith =>
      __$$_flutter_starterUserCopyWithImpl<_$_flutter_starterUser>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_flutter_starterUserToJson(
      this,
    );
  }
}

abstract class _flutter_starterUser implements flutter_starterUser {
  const factory _flutter_starterUser(
      {required final String uid,
      required final String? name,
      required final String email,
      required final String? phone}) = _$_flutter_starterUser;

  factory _flutter_starterUser.fromJson(Map<String, dynamic> json) =
      _$_flutter_starterUser.fromJson;

  @override
  String get uid;
  @override
  String? get name;
  @override
  String get email;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_flutter_starterUserCopyWith<_$_flutter_starterUser> get copyWith =>
      throw _privateConstructorUsedError;
}
