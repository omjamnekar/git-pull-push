// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'User.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserBase _$UserBaseFromJson(Map<String, dynamic> json) {
  return _UserBase.fromJson(json);
}

/// @nodoc
mixin _$UserBase {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  AuthUser get auth => throw _privateConstructorUsedError;

  /// Serializes this UserBase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBaseCopyWith<UserBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBaseCopyWith<$Res> {
  factory $UserBaseCopyWith(UserBase value, $Res Function(UserBase) then) =
      _$UserBaseCopyWithImpl<$Res, UserBase>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String email,
      String password,
      String imageUrl,
      AuthUser auth});

  $AuthUserCopyWith<$Res> get auth;
}

/// @nodoc
class _$UserBaseCopyWithImpl<$Res, $Val extends UserBase>
    implements $UserBaseCopyWith<$Res> {
  _$UserBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? imageUrl = null,
    Object? auth = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthUser,
    ) as $Val);
  }

  /// Create a copy of UserBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthUserCopyWith<$Res> get auth {
    return $AuthUserCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserBaseImplCopyWith<$Res>
    implements $UserBaseCopyWith<$Res> {
  factory _$$UserBaseImplCopyWith(
          _$UserBaseImpl value, $Res Function(_$UserBaseImpl) then) =
      __$$UserBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String email,
      String password,
      String imageUrl,
      AuthUser auth});

  @override
  $AuthUserCopyWith<$Res> get auth;
}

/// @nodoc
class __$$UserBaseImplCopyWithImpl<$Res>
    extends _$UserBaseCopyWithImpl<$Res, _$UserBaseImpl>
    implements _$$UserBaseImplCopyWith<$Res> {
  __$$UserBaseImplCopyWithImpl(
      _$UserBaseImpl _value, $Res Function(_$UserBaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? imageUrl = null,
    Object? auth = null,
  }) {
    return _then(_$UserBaseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBaseImpl implements _UserBase {
  const _$UserBaseImpl(
      {this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.imageUrl,
      required this.auth});

  factory _$UserBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBaseImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String imageUrl;
  @override
  final AuthUser auth;

  @override
  String toString() {
    return 'UserBase(id: $id, name: $name, email: $email, password: $password, imageUrl: $imageUrl, auth: $auth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.auth, auth) || other.auth == auth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, email, password, imageUrl, auth);

  /// Create a copy of UserBase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBaseImplCopyWith<_$UserBaseImpl> get copyWith =>
      __$$UserBaseImplCopyWithImpl<_$UserBaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBaseImplToJson(
      this,
    );
  }
}

abstract class _UserBase implements UserBase {
  const factory _UserBase(
      {final String? id,
      required final String name,
      required final String email,
      required final String password,
      required final String imageUrl,
      required final AuthUser auth}) = _$UserBaseImpl;

  factory _UserBase.fromJson(Map<String, dynamic> json) =
      _$UserBaseImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  String get imageUrl;
  @override
  AuthUser get auth;

  /// Create a copy of UserBase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBaseImplCopyWith<_$UserBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthUser _$AuthUserFromJson(Map<String, dynamic> json) {
  return _AuthUser.fromJson(json);
}

/// @nodoc
mixin _$AuthUser {
  bool get isAuth => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  String get authid => throw _privateConstructorUsedError;

  /// Serializes this AuthUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthUserCopyWith<AuthUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserCopyWith<$Res> {
  factory $AuthUserCopyWith(AuthUser value, $Res Function(AuthUser) then) =
      _$AuthUserCopyWithImpl<$Res, AuthUser>;
  @useResult
  $Res call({bool isAuth, DateTime time, String authid});
}

/// @nodoc
class _$AuthUserCopyWithImpl<$Res, $Val extends AuthUser>
    implements $AuthUserCopyWith<$Res> {
  _$AuthUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuth = null,
    Object? time = null,
    Object? authid = null,
  }) {
    return _then(_value.copyWith(
      isAuth: null == isAuth
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authid: null == authid
          ? _value.authid
          : authid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthUserImplCopyWith<$Res>
    implements $AuthUserCopyWith<$Res> {
  factory _$$AuthUserImplCopyWith(
          _$AuthUserImpl value, $Res Function(_$AuthUserImpl) then) =
      __$$AuthUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isAuth, DateTime time, String authid});
}

/// @nodoc
class __$$AuthUserImplCopyWithImpl<$Res>
    extends _$AuthUserCopyWithImpl<$Res, _$AuthUserImpl>
    implements _$$AuthUserImplCopyWith<$Res> {
  __$$AuthUserImplCopyWithImpl(
      _$AuthUserImpl _value, $Res Function(_$AuthUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuth = null,
    Object? time = null,
    Object? authid = null,
  }) {
    return _then(_$AuthUserImpl(
      isAuth: null == isAuth
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authid: null == authid
          ? _value.authid
          : authid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthUserImpl implements _AuthUser {
  const _$AuthUserImpl(
      {this.isAuth = false, required this.time, this.authid = ''});

  factory _$AuthUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthUserImplFromJson(json);

  @override
  @JsonKey()
  final bool isAuth;
  @override
  final DateTime time;
  @override
  @JsonKey()
  final String authid;

  @override
  String toString() {
    return 'AuthUser(isAuth: $isAuth, time: $time, authid: $authid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserImpl &&
            (identical(other.isAuth, isAuth) || other.isAuth == isAuth) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.authid, authid) || other.authid == authid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isAuth, time, authid);

  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserImplCopyWith<_$AuthUserImpl> get copyWith =>
      __$$AuthUserImplCopyWithImpl<_$AuthUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthUserImplToJson(
      this,
    );
  }
}

abstract class _AuthUser implements AuthUser {
  const factory _AuthUser(
      {final bool isAuth,
      required final DateTime time,
      final String authid}) = _$AuthUserImpl;

  factory _AuthUser.fromJson(Map<String, dynamic> json) =
      _$AuthUserImpl.fromJson;

  @override
  bool get isAuth;
  @override
  DateTime get time;
  @override
  String get authid;

  /// Create a copy of AuthUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthUserImplCopyWith<_$AuthUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
