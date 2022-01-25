// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      name: json['name'] as String,
      token: json['token'] as String,
      email: json['email'] as String,
      status: _$enumDecodeNullable(_$AuthStatusEnumMap, json['status']) ??
          AuthStatus.Initial,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'token': instance.token,
      'email': instance.email,
      'status': _$AuthStatusEnumMap[instance.status],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$AuthStatusEnumMap = {
  AuthStatus.Initial: 'Initial',
  AuthStatus.Authenticated: 'Authenticated',
  AuthStatus.Unauthenticated: 'Unauthenticated',
};

_$_FirebaseUserModel _$$_FirebaseUserModelFromJson(Map<String, dynamic> json) =>
    _$_FirebaseUserModel(
      name: json['name'] as String,
      email: json['email'] as String,
      bgImage: json['bgImage'] as String,
      profilePicture: json['profilePicture'] as String,
    );

Map<String, dynamic> _$$_FirebaseUserModelToJson(
        _$_FirebaseUserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'bgImage': instance.bgImage,
      'profilePicture': instance.profilePicture,
    };
