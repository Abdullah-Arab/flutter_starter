import 'package:flutter_starter/src/utilities/exceptions/my_exception.dart';

import '../data/auth_repository.dart';
import '../models/auth.dart';
import '/src/services/logger/logger.dart';
import '/src/services/service_locator/locator.dart';
import '/src/services/storage/storage_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository = AuthRepository();
  AuthCubit() : super(const AuthState.initial()) {
    getAuth();
  }

  Future<void> login(String email, String password) async {
    emit(const AuthState.loading());
    try {
      final auth = await _authRepository.login(email, password);
      emit(AuthState.authenticated(auth));
    } on MyException catch (e) {
      locator<Log>().error(e.toString());
      emit(AuthState.error(e));
    } catch (e) {
      locator<Log>().error(e.toString());
      emit(const AuthState.error(MyException("Unknown error", "404")));
    }
  }

  Future<void> register(
    String email,
    String password,
  ) async {
    emit(const AuthState.loading());
    try {
      final auth = await _authRepository.register(email, password);
      emit(AuthState.authenticated(auth));
    } on MyException catch (e) {
      locator<Log>().error(e.toString());
      emit(AuthState.error(e));
    } catch (e) {
      locator<Log>().error(e.toString());
      emit(const AuthState.error(MyException("Unknown error", "404")));
    }
  }

  Future<void> getAuth() async {
    emit(const AuthState.loading());
    try {
      final auth = await _authRepository.getAuth();
      if (auth == null) {
        emit(const AuthState.unauthenticated());
      } else {
        emit(AuthState.authenticated(auth));
      }
    } on MyException catch (e) {
      locator<Log>().error(e.toString());
      emit(AuthState.error(e));
    } catch (e) {
      locator<Log>().error(e.toString());
      emit(const AuthState.error(MyException("Unknown error", "404")));
    }
  }

  Future<void> logout() async {
    emit(const AuthState.loading());
    try {
      await _authRepository.logout();
      locator<StorageService>().clearAll();
      emit(const AuthState.unauthenticated());
    } on MyException catch (e) {
      locator<Log>().error(e.toString());
      emit(AuthState.error(e));
    } catch (e) {
      locator<Log>().error(e.toString());
      emit(const AuthState.error(MyException("Unknown error", "404")));
    }
  }

  Future<void> deleteAccount() async {
    emit(const AuthState.loading());
    try {
      await _authRepository.deleteAccount();
      locator<StorageService>().clearAll();
      emit(const AuthState.unauthenticated());
    } on MyException catch (e) {
      locator<Log>().error(e.toString());
      emit(AuthState.error(e));
    } catch (e) {
      locator<Log>().error(e.toString());
      emit(const AuthState.error(MyException("Unknown error", "404")));
    }
  }
}
