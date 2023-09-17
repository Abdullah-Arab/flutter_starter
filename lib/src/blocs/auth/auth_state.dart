part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(Auth auth) = _authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.error(RestApiException message) = _Error;

}
