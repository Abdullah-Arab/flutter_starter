// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_flutter_starterUser _$$_flutter_starterUserFromJson(
        Map<String, dynamic> json) =>
    _$_flutter_starterUser(
      uid: json['uid'] as String,
      name: json['name'] as String?,
      email: json['email'] as String,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_flutter_starterUserToJson(
    _$_flutter_starterUser instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['email'] = instance.email;
  writeNotNull('phone', instance.phone);
  return val;
}
