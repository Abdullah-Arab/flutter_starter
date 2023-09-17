// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponse<T> _$$_ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_ApiResponse<T>(
      errors: json['errors'],
      data: fromJsonT(json['data']),
      statusCode: json['status_code'] as int,
    );

Map<String, dynamic> _$$_ApiResponseToJson<T>(
  _$_ApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  val['data'] = toJsonT(instance.data);
  val['status_code'] = instance.statusCode;
  return val;
}
