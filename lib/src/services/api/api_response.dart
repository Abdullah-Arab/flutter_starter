import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_response.freezed.dart';
part 'api_response.g.dart';


@Freezed(genericArgumentFactories: true)
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse._({
    required dynamic errors,
    required T data,
    required int statusCode,
  }) = _ApiResponse<T>;

  factory ApiResponse.fromJson(Map<String, dynamic> json,T Function(Object? json) fromJsonT,) =>
      _$ApiResponseFromJson(json, fromJsonT);
}
