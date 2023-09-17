import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class flutter_starterUser with _$flutter_starterUser {
  const factory flutter_starterUser({
    required String uid,
    required String? name,
    required String email,
    required String? phone,
  }) = _flutter_starterUser;

  factory flutter_starterUser.fromJson(Map<String, dynamic> json) =>
      _$flutter_starterUserFromJson(json);
}
