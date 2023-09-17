import 'dart:convert';
import 'dart:io';

import '/src/services/api/append_token_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  const DioFactory(this._baseUrl, this._appendTokentampInterceptor);

  final String _baseUrl;

  final AppendTokenInterceptor _appendTokentampInterceptor;

  Dio create() => Dio(_createBaseOptions())
    ..interceptors.add(_appendTokentampInterceptor)
    ..interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
    ));

  BaseOptions _createBaseOptions() {
    //locator<Log>().warn(token);

    return BaseOptions(
      // Request base url
      baseUrl: _baseUrl,
      // Common query parameters for each request
      //queryParameters: <String, dynamic>{'parameter1': 'value1'},

      ///Common headers for each request
      // headers: <String, dynamic>{
      //   //"authorization": 'bearer $token',
      //   'accept': 'application/json',
      //   'content-type': 'application/json',
      // },
    );
  }
}
