// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {required String name,
      required String token,
      required String email,
      AuthStatus status = AuthStatus.Initial}) {
    return _UserModel(
      name: name,
      token: token,
      email: email,
      status: status,
    );
  }

  UserModel fromJson(Map<String, Object> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  String get name => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  AuthStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call({String name, String token, String email, AuthStatus status});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? token = freezed,
    Object? email = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String token, String email, AuthStatus status});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? token = freezed,
    Object? email = freezed,
    Object? status = freezed,
  }) {
    return _then(_UserModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {required this.name,
      required this.token,
      required this.email,
      this.status = AuthStatus.Initial});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserModelFromJson(json);

  @override
  final String name;
  @override
  final String token;
  @override
  final String email;
  @JsonKey(defaultValue: AuthStatus.Initial)
  @override
  final AuthStatus status;

  @override
  String toString() {
    return 'UserModel(name: $name, token: $token, email: $email, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required String name,
      required String token,
      required String email,
      AuthStatus status}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  AuthStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

FirebaseUserModel _$FirebaseUserModelFromJson(Map<String, dynamic> json) {
  return _FirebaseUserModel.fromJson(json);
}

/// @nodoc
class _$FirebaseUserModelTearOff {
  const _$FirebaseUserModelTearOff();

  _FirebaseUserModel call(
      {required String name,
      required String email,
      required String bgImage,
      required String profilePicture}) {
    return _FirebaseUserModel(
      name: name,
      email: email,
      bgImage: bgImage,
      profilePicture: profilePicture,
    );
  }

  FirebaseUserModel fromJson(Map<String, Object> json) {
    return FirebaseUserModel.fromJson(json);
  }
}

/// @nodoc
const $FirebaseUserModel = _$FirebaseUserModelTearOff();

/// @nodoc
mixin _$FirebaseUserModel {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get bgImage => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseUserModelCopyWith<FirebaseUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseUserModelCopyWith<$Res> {
  factory $FirebaseUserModelCopyWith(
          FirebaseUserModel value, $Res Function(FirebaseUserModel) then) =
      _$FirebaseUserModelCopyWithImpl<$Res>;
  $Res call({String name, String email, String bgImage, String profilePicture});
}

/// @nodoc
class _$FirebaseUserModelCopyWithImpl<$Res>
    implements $FirebaseUserModelCopyWith<$Res> {
  _$FirebaseUserModelCopyWithImpl(this._value, this._then);

  final FirebaseUserModel _value;
  // ignore: unused_field
  final $Res Function(FirebaseUserModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? bgImage = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bgImage: bgImage == freezed
          ? _value.bgImage
          : bgImage // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FirebaseUserModelCopyWith<$Res>
    implements $FirebaseUserModelCopyWith<$Res> {
  factory _$FirebaseUserModelCopyWith(
          _FirebaseUserModel value, $Res Function(_FirebaseUserModel) then) =
      __$FirebaseUserModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email, String bgImage, String profilePicture});
}

/// @nodoc
class __$FirebaseUserModelCopyWithImpl<$Res>
    extends _$FirebaseUserModelCopyWithImpl<$Res>
    implements _$FirebaseUserModelCopyWith<$Res> {
  __$FirebaseUserModelCopyWithImpl(
      _FirebaseUserModel _value, $Res Function(_FirebaseUserModel) _then)
      : super(_value, (v) => _then(v as _FirebaseUserModel));

  @override
  _FirebaseUserModel get _value => super._value as _FirebaseUserModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? bgImage = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_FirebaseUserModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      bgImage: bgImage == freezed
          ? _value.bgImage
          : bgImage // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirebaseUserModel implements _FirebaseUserModel {
  const _$_FirebaseUserModel(
      {required this.name,
      required this.email,
      required this.bgImage,
      required this.profilePicture});

  factory _$_FirebaseUserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FirebaseUserModelFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String bgImage;
  @override
  final String profilePicture;

  @override
  String toString() {
    return 'FirebaseUserModel(name: $name, email: $email, bgImage: $bgImage, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirebaseUserModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.bgImage, bgImage) ||
                const DeepCollectionEquality()
                    .equals(other.bgImage, bgImage)) &&
            (identical(other.profilePicture, profilePicture) ||
                const DeepCollectionEquality()
                    .equals(other.profilePicture, profilePicture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(bgImage) ^
      const DeepCollectionEquality().hash(profilePicture);

  @JsonKey(ignore: true)
  @override
  _$FirebaseUserModelCopyWith<_FirebaseUserModel> get copyWith =>
      __$FirebaseUserModelCopyWithImpl<_FirebaseUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FirebaseUserModelToJson(this);
  }
}

abstract class _FirebaseUserModel implements FirebaseUserModel {
  const factory _FirebaseUserModel(
      {required String name,
      required String email,
      required String bgImage,
      required String profilePicture}) = _$_FirebaseUserModel;

  factory _FirebaseUserModel.fromJson(Map<String, dynamic> json) =
      _$_FirebaseUserModel.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get bgImage => throw _privateConstructorUsedError;
  @override
  String get profilePicture => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FirebaseUserModelCopyWith<_FirebaseUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
