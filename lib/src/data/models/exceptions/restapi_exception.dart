import 'package:freezed_annotation/freezed_annotation.dart';

part 'restapi_exception.freezed.dart';

@freezed
class RestApiException with _$RestApiException /* implements Exception */  {
  const factory RestApiException(String message, String statusCode) =
      _RestApiException; 
}
