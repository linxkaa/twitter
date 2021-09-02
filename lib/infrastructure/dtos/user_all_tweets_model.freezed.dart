// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_all_tweets_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAllTweetsModel _$UserAllTweetsModelFromJson(Map<String, dynamic> json) {
  return _UserAllTweetsModel.fromJson(json);
}

/// @nodoc
class _$UserAllTweetsModelTearOff {
  const _$UserAllTweetsModelTearOff();

  _UserAllTweetsModel call(
      {required List<TweetModel> tweets,
      required String name,
      required String email,
      required String profilePicture}) {
    return _UserAllTweetsModel(
      tweets: tweets,
      name: name,
      email: email,
      profilePicture: profilePicture,
    );
  }

  UserAllTweetsModel fromJson(Map<String, Object> json) {
    return UserAllTweetsModel.fromJson(json);
  }
}

/// @nodoc
const $UserAllTweetsModel = _$UserAllTweetsModelTearOff();

/// @nodoc
mixin _$UserAllTweetsModel {
  List<TweetModel> get tweets => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAllTweetsModelCopyWith<UserAllTweetsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAllTweetsModelCopyWith<$Res> {
  factory $UserAllTweetsModelCopyWith(
          UserAllTweetsModel value, $Res Function(UserAllTweetsModel) then) =
      _$UserAllTweetsModelCopyWithImpl<$Res>;
  $Res call(
      {List<TweetModel> tweets,
      String name,
      String email,
      String profilePicture});
}

/// @nodoc
class _$UserAllTweetsModelCopyWithImpl<$Res>
    implements $UserAllTweetsModelCopyWith<$Res> {
  _$UserAllTweetsModelCopyWithImpl(this._value, this._then);

  final UserAllTweetsModel _value;
  // ignore: unused_field
  final $Res Function(UserAllTweetsModel) _then;

  @override
  $Res call({
    Object? tweets = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_value.copyWith(
      tweets: tweets == freezed
          ? _value.tweets
          : tweets // ignore: cast_nullable_to_non_nullable
              as List<TweetModel>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserAllTweetsModelCopyWith<$Res>
    implements $UserAllTweetsModelCopyWith<$Res> {
  factory _$UserAllTweetsModelCopyWith(
          _UserAllTweetsModel value, $Res Function(_UserAllTweetsModel) then) =
      __$UserAllTweetsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TweetModel> tweets,
      String name,
      String email,
      String profilePicture});
}

/// @nodoc
class __$UserAllTweetsModelCopyWithImpl<$Res>
    extends _$UserAllTweetsModelCopyWithImpl<$Res>
    implements _$UserAllTweetsModelCopyWith<$Res> {
  __$UserAllTweetsModelCopyWithImpl(
      _UserAllTweetsModel _value, $Res Function(_UserAllTweetsModel) _then)
      : super(_value, (v) => _then(v as _UserAllTweetsModel));

  @override
  _UserAllTweetsModel get _value => super._value as _UserAllTweetsModel;

  @override
  $Res call({
    Object? tweets = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_UserAllTweetsModel(
      tweets: tweets == freezed
          ? _value.tweets
          : tweets // ignore: cast_nullable_to_non_nullable
              as List<TweetModel>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$_UserAllTweetsModel implements _UserAllTweetsModel {
  const _$_UserAllTweetsModel(
      {required this.tweets,
      required this.name,
      required this.email,
      required this.profilePicture});

  factory _$_UserAllTweetsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserAllTweetsModelFromJson(json);

  @override
  final List<TweetModel> tweets;
  @override
  final String name;
  @override
  final String email;
  @override
  final String profilePicture;

  @override
  String toString() {
    return 'UserAllTweetsModel(tweets: $tweets, name: $name, email: $email, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserAllTweetsModel &&
            (identical(other.tweets, tweets) ||
                const DeepCollectionEquality().equals(other.tweets, tweets)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.profilePicture, profilePicture) ||
                const DeepCollectionEquality()
                    .equals(other.profilePicture, profilePicture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tweets) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(profilePicture);

  @JsonKey(ignore: true)
  @override
  _$UserAllTweetsModelCopyWith<_UserAllTweetsModel> get copyWith =>
      __$UserAllTweetsModelCopyWithImpl<_UserAllTweetsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserAllTweetsModelToJson(this);
  }
}

abstract class _UserAllTweetsModel implements UserAllTweetsModel {
  const factory _UserAllTweetsModel(
      {required List<TweetModel> tweets,
      required String name,
      required String email,
      required String profilePicture}) = _$_UserAllTweetsModel;

  factory _UserAllTweetsModel.fromJson(Map<String, dynamic> json) =
      _$_UserAllTweetsModel.fromJson;

  @override
  List<TweetModel> get tweets => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get profilePicture => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserAllTweetsModelCopyWith<_UserAllTweetsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TweetModel _$TweetModelFromJson(Map<String, dynamic> json) {
  return _TweetModel.fromJson(json);
}

/// @nodoc
class _$TweetModelTearOff {
  const _$TweetModelTearOff();

  _TweetModel call(
      {required String content,
      required String userId,
      @TimeStampConverter() required DateTime timestamp,
      required String uniqueId}) {
    return _TweetModel(
      content: content,
      userId: userId,
      timestamp: timestamp,
      uniqueId: uniqueId,
    );
  }

  TweetModel fromJson(Map<String, Object> json) {
    return TweetModel.fromJson(json);
  }
}

/// @nodoc
const $TweetModel = _$TweetModelTearOff();

/// @nodoc
mixin _$TweetModel {
  String get content => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @TimeStampConverter()
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get uniqueId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TweetModelCopyWith<TweetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetModelCopyWith<$Res> {
  factory $TweetModelCopyWith(
          TweetModel value, $Res Function(TweetModel) then) =
      _$TweetModelCopyWithImpl<$Res>;
  $Res call(
      {String content,
      String userId,
      @TimeStampConverter() DateTime timestamp,
      String uniqueId});
}

/// @nodoc
class _$TweetModelCopyWithImpl<$Res> implements $TweetModelCopyWith<$Res> {
  _$TweetModelCopyWithImpl(this._value, this._then);

  final TweetModel _value;
  // ignore: unused_field
  final $Res Function(TweetModel) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? userId = freezed,
    Object? timestamp = freezed,
    Object? uniqueId = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TweetModelCopyWith<$Res> implements $TweetModelCopyWith<$Res> {
  factory _$TweetModelCopyWith(
          _TweetModel value, $Res Function(_TweetModel) then) =
      __$TweetModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String content,
      String userId,
      @TimeStampConverter() DateTime timestamp,
      String uniqueId});
}

/// @nodoc
class __$TweetModelCopyWithImpl<$Res> extends _$TweetModelCopyWithImpl<$Res>
    implements _$TweetModelCopyWith<$Res> {
  __$TweetModelCopyWithImpl(
      _TweetModel _value, $Res Function(_TweetModel) _then)
      : super(_value, (v) => _then(v as _TweetModel));

  @override
  _TweetModel get _value => super._value as _TweetModel;

  @override
  $Res call({
    Object? content = freezed,
    Object? userId = freezed,
    Object? timestamp = freezed,
    Object? uniqueId = freezed,
  }) {
    return _then(_TweetModel(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uniqueId: uniqueId == freezed
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TweetModel implements _TweetModel {
  const _$_TweetModel(
      {required this.content,
      required this.userId,
      @TimeStampConverter() required this.timestamp,
      required this.uniqueId});

  factory _$_TweetModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TweetModelFromJson(json);

  @override
  final String content;
  @override
  final String userId;
  @override
  @TimeStampConverter()
  final DateTime timestamp;
  @override
  final String uniqueId;

  @override
  String toString() {
    return 'TweetModel(content: $content, userId: $userId, timestamp: $timestamp, uniqueId: $uniqueId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TweetModel &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.uniqueId, uniqueId) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueId, uniqueId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(uniqueId);

  @JsonKey(ignore: true)
  @override
  _$TweetModelCopyWith<_TweetModel> get copyWith =>
      __$TweetModelCopyWithImpl<_TweetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TweetModelToJson(this);
  }
}

abstract class _TweetModel implements TweetModel {
  const factory _TweetModel(
      {required String content,
      required String userId,
      @TimeStampConverter() required DateTime timestamp,
      required String uniqueId}) = _$_TweetModel;

  factory _TweetModel.fromJson(Map<String, dynamic> json) =
      _$_TweetModel.fromJson;

  @override
  String get content => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @TimeStampConverter()
  DateTime get timestamp => throw _privateConstructorUsedError;
  @override
  String get uniqueId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TweetModelCopyWith<_TweetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
