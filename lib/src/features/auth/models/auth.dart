
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth {
  const factory Auth({
    required flutter_starterUser user,
    required String token,
  }) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}
