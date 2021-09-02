// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_regis_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginRegisEntitiesTearOff {
  const _$LoginRegisEntitiesTearOff();

  _LoginRegisEntities call(
      {required String name,
      required String email,
      required String password,
      required String repeatedPassword}) {
    return _LoginRegisEntities(
      name: name,
      email: email,
      password: password,
      repeatedPassword: repeatedPassword,
    );
  }
}

/// @nodoc
const $LoginRegisEntities = _$LoginRegisEntitiesTearOff();

/// @nodoc
mixin _$LoginRegisEntities {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get repeatedPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginRegisEntitiesCopyWith<LoginRegisEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRegisEntitiesCopyWith<$Res> {
  factory $LoginRegisEntitiesCopyWith(
          LoginRegisEntities value, $Res Function(LoginRegisEntities) then) =
      _$LoginRegisEntitiesCopyWithImpl<$Res>;
  $Res call(
      {String name, String email, String password, String repeatedPassword});
}

/// @nodoc
class _$LoginRegisEntitiesCopyWithImpl<$Res>
    implements $LoginRegisEntitiesCopyWith<$Res> {
  _$LoginRegisEntitiesCopyWithImpl(this._value, this._then);

  final LoginRegisEntities _value;
  // ignore: unused_field
  final $Res Function(LoginRegisEntities) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? repeatedPassword = freezed,
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
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatedPassword: repeatedPassword == freezed
          ? _value.repeatedPassword
          : repeatedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginRegisEntitiesCopyWith<$Res>
    implements $LoginRegisEntitiesCopyWith<$Res> {
  factory _$LoginRegisEntitiesCopyWith(
          _LoginRegisEntities value, $Res Function(_LoginRegisEntities) then) =
      __$LoginRegisEntitiesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String email, String password, String repeatedPassword});
}

/// @nodoc
class __$LoginRegisEntitiesCopyWithImpl<$Res>
    extends _$LoginRegisEntitiesCopyWithImpl<$Res>
    implements _$LoginRegisEntitiesCopyWith<$Res> {
  __$LoginRegisEntitiesCopyWithImpl(
      _LoginRegisEntities _value, $Res Function(_LoginRegisEntities) _then)
      : super(_value, (v) => _then(v as _LoginRegisEntities));

  @override
  _LoginRegisEntities get _value => super._value as _LoginRegisEntities;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? repeatedPassword = freezed,
  }) {
    return _then(_LoginRegisEntities(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatedPassword: repeatedPassword == freezed
          ? _value.repeatedPassword
          : repeatedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginRegisEntities extends _LoginRegisEntities {
  const _$_LoginRegisEntities(
      {required this.name,
      required this.email,
      required this.password,
      required this.repeatedPassword})
      : super._();

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String repeatedPassword;

  @override
  String toString() {
    return 'LoginRegisEntities(name: $name, email: $email, password: $password, repeatedPassword: $repeatedPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginRegisEntities &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.repeatedPassword, repeatedPassword) ||
                const DeepCollectionEquality()
                    .equals(other.repeatedPassword, repeatedPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(repeatedPassword);

  @JsonKey(ignore: true)
  @override
  _$LoginRegisEntitiesCopyWith<_LoginRegisEntities> get copyWith =>
      __$LoginRegisEntitiesCopyWithImpl<_LoginRegisEntities>(this, _$identity);
}

abstract class _LoginRegisEntities extends LoginRegisEntities {
  const factory _LoginRegisEntities(
      {required String name,
      required String email,
      required String password,
      required String repeatedPassword}) = _$_LoginRegisEntities;
  const _LoginRegisEntities._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get repeatedPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginRegisEntitiesCopyWith<_LoginRegisEntities> get copyWith =>
      throw _privateConstructorUsedError;
}
