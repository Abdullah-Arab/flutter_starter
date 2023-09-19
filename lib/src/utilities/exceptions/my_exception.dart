import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_exception.freezed.dart';

@freezed
class MyException with _$MyException /* implements Exception */ {
  const factory MyException(String message, String statusCode) = _MyException;
}
