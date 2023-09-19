
import 'package:dio/dio.dart';

import '../../features/auth/models/auth.dart';

abstract class ApiService {
  const ApiService(this._dio);

  final Dio _dio;

  Future<Auth> login(String email, String password);

  Future<Auth> register(
      String email,
      String password,
      String name,
      String ownerName,
      String phone,
      String phone2,
      String address,
      String passwordConfirmation);

  Future<void> deleteAccount();
}
