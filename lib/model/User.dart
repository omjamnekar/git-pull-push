import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:json_annotation/json_annotation.dart';

part 'User.freezed.dart';
part 'User.g.dart';

@freezed
class UserBase with _$UserBase {
  const factory UserBase({
    String? id,
    required String name,
    required String email,
    required String password,
    required String imageUrl,
    required AuthUser auth,
  }) = _UserBase;

  factory UserBase.withUuid(
      {required String name,
      required AuthUser auth,
      required String email,
      required String password,
      required String imageUrl}) {
    return UserBase(
        id: Uuid().v4(),
        name: name,
        auth: auth,
        email: email,
        imageUrl: imageUrl,
        password: password);
  }

  factory UserBase.fromJson(Map<String, dynamic> json) =>
      _$UserBaseFromJson(json);
}

@freezed
class AuthUser with _$AuthUser {
  const factory AuthUser({
    @Default(false) bool isAuth,
    required DateTime time,
    @Default('') String authid,
  }) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);
}
