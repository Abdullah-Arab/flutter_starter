import 'dart:convert';
import 'dart:io';

import '/src/constants/storage_keys.dart';
import '/src/data/models/auth/auth.dart';
import '/src/services/logger/logger.dart';
import '/src/services/service_locator/locator.dart';
import '/src/services/storage/storage_service.dart';
import 'package:dio/dio.dart';

class AppendTokenInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String? x = await locator<StorageService>().getString(StorageKeys.authKey);
    if (x == null) {
      locator<Log>().fatal('Token is null');
      return super.onRequest(options, handler);
    }
    var auth = Auth.fromJson(jsonDecode(x));

    locator<Log>().fatal(auth.token);
    options.headers = {
      HttpHeaders.authorizationHeader: "Bearer ${auth.token}",
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    return super.onRequest(options, handler);
  }
}
