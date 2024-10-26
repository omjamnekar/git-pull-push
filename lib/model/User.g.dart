// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserBaseImpl _$$UserBaseImplFromJson(Map<String, dynamic> json) =>
    _$UserBaseImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      imageUrl: json['imageUrl'] as String,
      auth: AuthUser.fromJson(json['auth'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserBaseImplToJson(_$UserBaseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'imageUrl': instance.imageUrl,
      'auth': instance.auth,
    };

_$AuthUserImpl _$$AuthUserImplFromJson(Map<String, dynamic> json) =>
    _$AuthUserImpl(
      isAuth: json['isAuth'] as bool? ?? false,
      time: DateTime.parse(json['time'] as String),
      authid: json['authid'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthUserImplToJson(_$AuthUserImpl instance) =>
    <String, dynamic>{
      'isAuth': instance.isAuth,
      'time': instance.time.toIso8601String(),
      'authid': instance.authid,
    };
