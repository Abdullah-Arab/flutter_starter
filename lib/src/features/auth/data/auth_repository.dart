import 'dart:convert';

import '../models/auth.dart';
import '../models/user.dart';
import '/src/services/firebase/firebase_sevice.dart';
import '/src/services/logger/logger.dart';
import '/src/services/service_locator/locator.dart';
import '/src/services/storage/storage_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../constants/storage_keys.dart';

class AuthRepository {
  final FirebaseService _firebaseService = locator<FirebaseService>();
  AuthRepository();

  Future<Auth> login(String email, String password) async {
    final _userCredential = await _firebaseService.login(email, password);
    locator<Log>().fatal(_userCredential);
    if (_userCredential == null) {
      throw Exception('User not found');
    }
    final Auth auth = Auth(
      user: flutter_starterUser(
        email: _userCredential.user!.email!,
        name: _userCredential.user!.displayName,
        phone: _userCredential.user!.phoneNumber,
        uid: _userCredential.user!.uid,
      ),
      token: _userCredential.user!.refreshToken.toString(),
    );

    await locator<StorageService>().setString(
      StorageKeys.authKey,
      jsonEncode(auth.toJson()),
    );
    return auth;
  }

  Future<Auth> register(String email, String password) async {
    final UserCredential? _userCredential =
        await _firebaseService.register(email, password);
    locator<Log>().fatal(_userCredential);
    if (_userCredential == null) {
      throw Exception('User not created');
    }

    final Auth auth = Auth(
      user: flutter_starterUser(
        email: _userCredential.user!.email!,
        name: _userCredential.user!.displayName,
        phone: _userCredential.user!.phoneNumber,
        uid: _userCredential.user!.uid,
      ),
      token: _userCredential.user!.refreshToken.toString(),
    );

    await locator<StorageService>().setString(
      StorageKeys.authKey,
      jsonEncode(auth.toJson()),
    );
    return auth;
  }

  Future<Auth?> getAuth() async {
    final auth = await locator<StorageService>().getString(StorageKeys.authKey);
    if (auth == null) {
      return null;
    }
    return Auth.fromJson(jsonDecode(auth));
  }

  Future<void> logout() async {
    await _firebaseService.logout();
    await locator<StorageService>().clearAll();
  }

  Future<void> deleteAccount() async {
    _firebaseService.deleteAccount();
    logout();
  }
}
