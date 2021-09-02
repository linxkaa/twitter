// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_tweet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateTweetEventTearOff {
  const _$UpdateTweetEventTearOff();

  _UpdateTweetEventuploadNewTweets uploadNewTweets(
      {required String userId,
      required String name,
      required String email,
      required String profilePicture}) {
    return _UpdateTweetEventuploadNewTweets(
      userId: userId,
      name: name,
      email: email,
      profilePicture: profilePicture,
    );
  }

  _UpdateTweetEvent initial(TweetModel mod) {
    return _UpdateTweetEvent(
      mod,
    );
  }

  _UpdateTweetEventdeleteTweet deleteTweet(TweetModel mod) {
    return _UpdateTweetEventdeleteTweet(
      mod,
    );
  }

  _UpdateTweetEventupdateTweet updateTweet() {
    return const _UpdateTweetEventupdateTweet();
  }
}

/// @nodoc
const $UpdateTweetEvent = _$UpdateTweetEventTearOff();

/// @nodoc
mixin _$UpdateTweetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId, String name, String email, String profilePicture)
        uploadNewTweets,
    required TResult Function(TweetModel mod) initial,
    required TResult Function(TweetModel mod) deleteTweet,
    required TResult Function() updateTweet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId, String name, String email, String profilePicture)?
        uploadNewTweets,
    TResult Function(TweetModel mod)? initial,
    TResult Function(TweetModel mod)? deleteTweet,
    TResult Function()? updateTweet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTweetEventuploadNewTweets value)
        uploadNewTweets,
    required TResult Function(_UpdateTweetEvent value) initial,
    required TResult Function(_UpdateTweetEventdeleteTweet value) deleteTweet,
    required TResult Function(_UpdateTweetEventupdateTweet value) updateTweet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTweetEventuploadNewTweets value)? uploadNewTweets,
    TResult Function(_UpdateTweetEvent value)? initial,
    TResult Function(_UpdateTweetEventdeleteTweet value)? deleteTweet,
    TResult Function(_UpdateTweetEventupdateTweet value)? updateTweet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTweetEventCopyWith<$Res> {
  factory $UpdateTweetEventCopyWith(
          UpdateTweetEvent value, $Res Function(UpdateTweetEvent) then) =
      _$UpdateTweetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateTweetEventCopyWithImpl<$Res>
    implements $UpdateTweetEventCopyWith<$Res> {
  _$UpdateTweetEventCopyWithImpl(this._value, this._then);

  final UpdateTweetEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateTweetEvent) _then;
}

/// @nodoc
abstract class _$UpdateTweetEventuploadNewTweetsCopyWith<$Res> {
  factory _$UpdateTweetEventuploadNewTweetsCopyWith(
          _UpdateTweetEventuploadNewTweets value,
          $Res Function(_UpdateTweetEventuploadNewTweets) then) =
      __$UpdateTweetEventuploadNewTweetsCopyWithImpl<$Res>;
  $Res call({String userId, String name, String email, String profilePicture});
}

/// @nodoc
class __$UpdateTweetEventuploadNewTweetsCopyWithImpl<$Res>
    extends _$UpdateTweetEventCopyWithImpl<$Res>
    implements _$UpdateTweetEventuploadNewTweetsCopyWith<$Res> {
  __$UpdateTweetEventuploadNewTweetsCopyWithImpl(
      _UpdateTweetEventuploadNewTweets _value,
      $Res Function(_UpdateTweetEventuploadNewTweets) _then)
      : super(_value, (v) => _then(v as _UpdateTweetEventuploadNewTweets));

  @override
  _UpdateTweetEventuploadNewTweets get _value =>
      super._value as _UpdateTweetEventuploadNewTweets;

  @override
  $Res call({
    Object? userId = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profilePicture = freezed,
  }) {
    return _then(_UpdateTweetEventuploadNewTweets(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_UpdateTweetEventuploadNewTweets
    implements _UpdateTweetEventuploadNewTweets {
  const _$_UpdateTweetEventuploadNewTweets(
      {required this.userId,
      required this.name,
      required this.email,
      required this.profilePicture});

  @override
  final String userId;
  @override
  final String name;
  @override
  final String email;
  @override
  final String profilePicture;

  @override
  String toString() {
    return 'UpdateTweetEvent.uploadNewTweets(userId: $userId, name: $name, email: $email, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateTweetEventuploadNewTweets &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
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
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(profilePicture);

  @JsonKey(ignore: true)
  @override
  _$UpdateTweetEventuploadNewTweetsCopyWith<_UpdateTweetEventuploadNewTweets>
      get copyWith => __$UpdateTweetEventuploadNewTweetsCopyWithImpl<
          _UpdateTweetEventuploadNewTweets>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId, String name, String email, String profilePicture)
        uploadNewTweets,
    required TResult Function(TweetModel mod) initial,
    required TResult Function(TweetModel mod) deleteTweet,
    required TResult Function() updateTweet,
  }) {
    return uploadNewTweets(userId, name, email, profilePicture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId, String name, String email, String profilePicture)?
        uploadNewTweets,
    TResult Function(TweetModel mod)? initial,
    TResult Function(TweetModel mod)? deleteTweet,
    TResult Function()? updateTweet,
    required TResult orElse(),
  }) {
    if (uploadNewTweets != null) {
      return uploadNewTweets(userId, name, email, profilePicture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTweetEventuploadNewTweets value)
        uploadNewTweets,
    required TResult Function(_UpdateTweetEvent value) initial,
    required TResult Function(_UpdateTweetEventdeleteTweet value) deleteTweet,
    required TResult Function(_UpdateTweetEventupdateTweet value) updateTweet,
  }) {
    return uploadNewTweets(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTweetEventuploadNewTweets value)? uploadNewTweets,
    TResult Function(_UpdateTweetEvent value)? initial,
    TResult Function(_UpdateTweetEventdeleteTweet value)? deleteTweet,
    TResult Function(_UpdateTweetEventupdateTweet value)? updateTweet,
    required TResult orElse(),
  }) {
    if (uploadNewTweets != null) {
      return uploadNewTweets(this);
    }
    return orElse();
  }
}

abstract class _UpdateTweetEventuploadNewTweets implements UpdateTweetEvent {
  const factory _UpdateTweetEventuploadNewTweets(
      {required String userId,
      required String name,
      required String email,
      required String profilePicture}) = _$_UpdateTweetEventuploadNewTweets;

  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateTweetEventuploadNewTweetsCopyWith<_UpdateTweetEventuploadNewTweets>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateTweetEventCopyWith<$Res> {
  factory _$UpdateTweetEventCopyWith(
          _UpdateTweetEvent value, $Res Function(_UpdateTweetEvent) then) =
      __$UpdateTweetEventCopyWithImpl<$Res>;
  $Res call({TweetModel mod});

  $TweetModelCopyWith<$Res> get mod;
}

/// @nodoc
class __$UpdateTweetEventCopyWithImpl<$Res>
    extends _$UpdateTweetEventCopyWithImpl<$Res>
    implements _$UpdateTweetEventCopyWith<$Res> {
  __$UpdateTweetEventCopyWithImpl(
      _UpdateTweetEvent _value, $Res Function(_UpdateTweetEvent) _then)
      : super(_value, (v) => _then(v as _UpdateTweetEvent));

  @override
  _UpdateTweetEvent get _value => super._value as _UpdateTweetEvent;

  @override
  $Res call({
    Object? mod = freezed,
  }) {
    return _then(_UpdateTweetEvent(
      mod == freezed
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as TweetModel,
    ));
  }

  @override
  $TweetModelCopyWith<$Res> get mod {
    return $TweetModelCopyWith<$Res>(_value.mod, (value) {
      return _then(_value.copyWith(mod: value));
    });
  }
}

/// @nodoc

class _$_UpdateTweetEvent implements _UpdateTweetEvent {
  const _$_UpdateTweetEvent(this.mod);

  @override
  final TweetModel mod;

  @override
  String toString() {
    return 'UpdateTweetEvent.initial(mod: $mod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateTweetEvent &&
            (identical(other.mod, mod) ||
                const DeepCollectionEquality().equals(other.mod, mod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mod);

  @JsonKey(ignore: true)
  @override
  _$UpdateTweetEventCopyWith<_UpdateTweetEvent> get copyWith =>
      __$UpdateTweetEventCopyWithImpl<_UpdateTweetEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId, String name, String email, String profilePicture)
        uploadNewTweets,
    required TResult Function(TweetModel mod) initial,
    required TResult Function(TweetModel mod) deleteTweet,
    required TResult Function() updateTweet,
  }) {
    return initial(mod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId, String name, String email, String profilePicture)?
        uploadNewTweets,
    TResult Function(TweetModel mod)? initial,
    TResult Function(TweetModel mod)? deleteTweet,
    TResult Function()? updateTweet,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(mod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTweetEventuploadNewTweets value)
        uploadNewTweets,
    required TResult Function(_UpdateTweetEvent value) initial,
    required TResult Function(_UpdateTweetEventdeleteTweet value) deleteTweet,
    required TResult Function(_UpdateTweetEventupdateTweet value) updateTweet,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTweetEventuploadNewTweets value)? uploadNewTweets,
    TResult Function(_UpdateTweetEvent value)? initial,
    TResult Function(_UpdateTweetEventdeleteTweet value)? deleteTweet,
    TResult Function(_UpdateTweetEventupdateTweet value)? updateTweet,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UpdateTweetEvent implements UpdateTweetEvent {
  const factory _UpdateTweetEvent(TweetModel mod) = _$_UpdateTweetEvent;

  TweetModel get mod => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateTweetEventCopyWith<_UpdateTweetEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateTweetEventdeleteTweetCopyWith<$Res> {
  factory _$UpdateTweetEventdeleteTweetCopyWith(
          _UpdateTweetEventdeleteTweet value,
          $Res Function(_UpdateTweetEventdeleteTweet) then) =
      __$UpdateTweetEventdeleteTweetCopyWithImpl<$Res>;
  $Res call({TweetModel mod});

  $TweetModelCopyWith<$Res> get mod;
}

/// @nodoc
class __$UpdateTweetEventdeleteTweetCopyWithImpl<$Res>
    extends _$UpdateTweetEventCopyWithImpl<$Res>
    implements _$UpdateTweetEventdeleteTweetCopyWith<$Res> {
  __$UpdateTweetEventdeleteTweetCopyWithImpl(
      _UpdateTweetEventdeleteTweet _value,
      $Res Function(_UpdateTweetEventdeleteTweet) _then)
      : super(_value, (v) => _then(v as _UpdateTweetEventdeleteTweet));

  @override
  _UpdateTweetEventdeleteTweet get _value =>
      super._value as _UpdateTweetEventdeleteTweet;

  @override
  $Res call({
    Object? mod = freezed,
  }) {
    return _then(_UpdateTweetEventdeleteTweet(
      mod == freezed
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as TweetModel,
    ));
  }

  @override
  $TweetModelCopyWith<$Res> get mod {
    return $TweetModelCopyWith<$Res>(_value.mod, (value) {
      return _then(_value.copyWith(mod: value));
    });
  }
}

/// @nodoc

class _$_UpdateTweetEventdeleteTweet implements _UpdateTweetEventdeleteTweet {
  const _$_UpdateTweetEventdeleteTweet(this.mod);

  @override
  final TweetModel mod;

  @override
  String toString() {
    return 'UpdateTweetEvent.deleteTweet(mod: $mod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateTweetEventdeleteTweet &&
            (identical(other.mod, mod) ||
                const DeepCollectionEquality().equals(other.mod, mod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mod);

  @JsonKey(ignore: true)
  @override
  _$UpdateTweetEventdeleteTweetCopyWith<_UpdateTweetEventdeleteTweet>
      get copyWith => __$UpdateTweetEventdeleteTweetCopyWithImpl<
          _UpdateTweetEventdeleteTweet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId, String name, String email, String profilePicture)
        uploadNewTweets,
    required TResult Function(TweetModel mod) initial,
    required TResult Function(TweetModel mod) deleteTweet,
    required TResult Function() updateTweet,
  }) {
    return deleteTweet(mod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId, String name, String email, String profilePicture)?
        uploadNewTweets,
    TResult Function(TweetModel mod)? initial,
    TResult Function(TweetModel mod)? deleteTweet,
    TResult Function()? updateTweet,
    required TResult orElse(),
  }) {
    if (deleteTweet != null) {
      return deleteTweet(mod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTweetEventuploadNewTweets value)
        uploadNewTweets,
    required TResult Function(_UpdateTweetEvent value) initial,
    required TResult Function(_UpdateTweetEventdeleteTweet value) deleteTweet,
    required TResult Function(_UpdateTweetEventupdateTweet value) updateTweet,
  }) {
    return deleteTweet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTweetEventuploadNewTweets value)? uploadNewTweets,
    TResult Function(_UpdateTweetEvent value)? initial,
    TResult Function(_UpdateTweetEventdeleteTweet value)? deleteTweet,
    TResult Function(_UpdateTweetEventupdateTweet value)? updateTweet,
    required TResult orElse(),
  }) {
    if (deleteTweet != null) {
      return deleteTweet(this);
    }
    return orElse();
  }
}

abstract class _UpdateTweetEventdeleteTweet implements UpdateTweetEvent {
  const factory _UpdateTweetEventdeleteTweet(TweetModel mod) =
      _$_UpdateTweetEventdeleteTweet;

  TweetModel get mod => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateTweetEventdeleteTweetCopyWith<_UpdateTweetEventdeleteTweet>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateTweetEventupdateTweetCopyWith<$Res> {
  factory _$UpdateTweetEventupdateTweetCopyWith(
          _UpdateTweetEventupdateTweet value,
          $Res Function(_UpdateTweetEventupdateTweet) then) =
      __$UpdateTweetEventupdateTweetCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateTweetEventupdateTweetCopyWithImpl<$Res>
    extends _$UpdateTweetEventCopyWithImpl<$Res>
    implements _$UpdateTweetEventupdateTweetCopyWith<$Res> {
  __$UpdateTweetEventupdateTweetCopyWithImpl(
      _UpdateTweetEventupdateTweet _value,
      $Res Function(_UpdateTweetEventupdateTweet) _then)
      : super(_value, (v) => _then(v as _UpdateTweetEventupdateTweet));

  @override
  _UpdateTweetEventupdateTweet get _value =>
      super._value as _UpdateTweetEventupdateTweet;
}

/// @nodoc

class _$_UpdateTweetEventupdateTweet implements _UpdateTweetEventupdateTweet {
  const _$_UpdateTweetEventupdateTweet();

  @override
  String toString() {
    return 'UpdateTweetEvent.updateTweet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateTweetEventupdateTweet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userId, String name, String email, String profilePicture)
        uploadNewTweets,
    required TResult Function(TweetModel mod) initial,
    required TResult Function(TweetModel mod) deleteTweet,
    required TResult Function() updateTweet,
  }) {
    return updateTweet();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userId, String name, String email, String profilePicture)?
        uploadNewTweets,
    TResult Function(TweetModel mod)? initial,
    TResult Function(TweetModel mod)? deleteTweet,
    TResult Function()? updateTweet,
    required TResult orElse(),
  }) {
    if (updateTweet != null) {
      return updateTweet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateTweetEventuploadNewTweets value)
        uploadNewTweets,
    required TResult Function(_UpdateTweetEvent value) initial,
    required TResult Function(_UpdateTweetEventdeleteTweet value) deleteTweet,
    required TResult Function(_UpdateTweetEventupdateTweet value) updateTweet,
  }) {
    return updateTweet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateTweetEventuploadNewTweets value)? uploadNewTweets,
    TResult Function(_UpdateTweetEvent value)? initial,
    TResult Function(_UpdateTweetEventdeleteTweet value)? deleteTweet,
    TResult Function(_UpdateTweetEventupdateTweet value)? updateTweet,
    required TResult orElse(),
  }) {
    if (updateTweet != null) {
      return updateTweet(this);
    }
    return orElse();
  }
}

abstract class _UpdateTweetEventupdateTweet implements UpdateTweetEvent {
  const factory _UpdateTweetEventupdateTweet() = _$_UpdateTweetEventupdateTweet;
}

/// @nodoc
class _$UpdateTweetStateTearOff {
  const _$UpdateTweetStateTearOff();

  _UpdateTweetState call(
      {required bool isLoading,
      required String isInputError,
      required Option<Either<AppFailure, Unit>> failureOrSucceedTweet,
      required Option<Either<AppFailure, Unit>> failureOrSucceedDeleteTweet,
      required Option<Either<AppFailure, Unit>> failureOrSucceedUpdateTweet,
      required TweetModel mod}) {
    return _UpdateTweetState(
      isLoading: isLoading,
      isInputError: isInputError,
      failureOrSucceedTweet: failureOrSucceedTweet,
      failureOrSucceedDeleteTweet: failureOrSucceedDeleteTweet,
      failureOrSucceedUpdateTweet: failureOrSucceedUpdateTweet,
      mod: mod,
    );
  }
}

/// @nodoc
const $UpdateTweetState = _$UpdateTweetStateTearOff();

/// @nodoc
mixin _$UpdateTweetState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get isInputError => throw _privateConstructorUsedError;
  Option<Either<AppFailure, Unit>> get failureOrSucceedTweet =>
      throw _privateConstructorUsedError;
  Option<Either<AppFailure, Unit>> get failureOrSucceedDeleteTweet =>
      throw _privateConstructorUsedError;
  Option<Either<AppFailure, Unit>> get failureOrSucceedUpdateTweet =>
      throw _privateConstructorUsedError;
  TweetModel get mod => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateTweetStateCopyWith<UpdateTweetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTweetStateCopyWith<$Res> {
  factory $UpdateTweetStateCopyWith(
          UpdateTweetState value, $Res Function(UpdateTweetState) then) =
      _$UpdateTweetStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String isInputError,
      Option<Either<AppFailure, Unit>> failureOrSucceedTweet,
      Option<Either<AppFailure, Unit>> failureOrSucceedDeleteTweet,
      Option<Either<AppFailure, Unit>> failureOrSucceedUpdateTweet,
      TweetModel mod});

  $TweetModelCopyWith<$Res> get mod;
}

/// @nodoc
class _$UpdateTweetStateCopyWithImpl<$Res>
    implements $UpdateTweetStateCopyWith<$Res> {
  _$UpdateTweetStateCopyWithImpl(this._value, this._then);

  final UpdateTweetState _value;
  // ignore: unused_field
  final $Res Function(UpdateTweetState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isInputError = freezed,
    Object? failureOrSucceedTweet = freezed,
    Object? failureOrSucceedDeleteTweet = freezed,
    Object? failureOrSucceedUpdateTweet = freezed,
    Object? mod = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInputError: isInputError == freezed
          ? _value.isInputError
          : isInputError // ignore: cast_nullable_to_non_nullable
              as String,
      failureOrSucceedTweet: failureOrSucceedTweet == freezed
          ? _value.failureOrSucceedTweet
          : failureOrSucceedTweet // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, Unit>>,
      failureOrSucceedDeleteTweet: failureOrSucceedDeleteTweet == freezed
          ? _value.failureOrSucceedDeleteTweet
          : failureOrSucceedDeleteTweet // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, Unit>>,
      failureOrSucceedUpdateTweet: failureOrSucceedUpdateTweet == freezed
          ? _value.failureOrSucceedUpdateTweet
          : failureOrSucceedUpdateTweet // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, Unit>>,
      mod: mod == freezed
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as TweetModel,
    ));
  }

  @override
  $TweetModelCopyWith<$Res> get mod {
    return $TweetModelCopyWith<$Res>(_value.mod, (value) {
      return _then(_value.copyWith(mod: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateTweetStateCopyWith<$Res>
    implements $UpdateTweetStateCopyWith<$Res> {
  factory _$UpdateTweetStateCopyWith(
          _UpdateTweetState value, $Res Function(_UpdateTweetState) then) =
      __$UpdateTweetStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String isInputError,
      Option<Either<AppFailure, Unit>> failureOrSucceedTweet,
      Option<Either<AppFailure, Unit>> failureOrSucceedDeleteTweet,
      Option<Either<AppFailure, Unit>> failureOrSucceedUpdateTweet,
      TweetModel mod});

  @override
  $TweetModelCopyWith<$Res> get mod;
}

/// @nodoc
class __$UpdateTweetStateCopyWithImpl<$Res>
    extends _$UpdateTweetStateCopyWithImpl<$Res>
    implements _$UpdateTweetStateCopyWith<$Res> {
  __$UpdateTweetStateCopyWithImpl(
      _UpdateTweetState _value, $Res Function(_UpdateTweetState) _then)
      : super(_value, (v) => _then(v as _UpdateTweetState));

  @override
  _UpdateTweetState get _value => super._value as _UpdateTweetState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isInputError = freezed,
    Object? failureOrSucceedTweet = freezed,
    Object? failureOrSucceedDeleteTweet = freezed,
    Object? failureOrSucceedUpdateTweet = freezed,
    Object? mod = freezed,
  }) {
    return _then(_UpdateTweetState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isInputError: isInputError == freezed
          ? _value.isInputError
          : isInputError // ignore: cast_nullable_to_non_nullable
              as String,
      failureOrSucceedTweet: failureOrSucceedTweet == freezed
          ? _value.failureOrSucceedTweet
          : failureOrSucceedTweet // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, Unit>>,
      failureOrSucceedDeleteTweet: failureOrSucceedDeleteTweet == freezed
          ? _value.failureOrSucceedDeleteTweet
          : failureOrSucceedDeleteTweet // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, Unit>>,
      failureOrSucceedUpdateTweet: failureOrSucceedUpdateTweet == freezed
          ? _value.failureOrSucceedUpdateTweet
          : failureOrSucceedUpdateTweet // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, Unit>>,
      mod: mod == freezed
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as TweetModel,
    ));
  }
}

/// @nodoc

class _$_UpdateTweetState extends _UpdateTweetState {
  const _$_UpdateTweetState(
      {required this.isLoading,
      required this.isInputError,
      required this.failureOrSucceedTweet,
      required this.failureOrSucceedDeleteTweet,
      required this.failureOrSucceedUpdateTweet,
      required this.mod})
      : super._();

  @override
  final bool isLoading;
  @override
  final String isInputError;
  @override
  final Option<Either<AppFailure, Unit>> failureOrSucceedTweet;
  @override
  final Option<Either<AppFailure, Unit>> failureOrSucceedDeleteTweet;
  @override
  final Option<Either<AppFailure, Unit>> failureOrSucceedUpdateTweet;
  @override
  final TweetModel mod;

  @override
  String toString() {
    return 'UpdateTweetState(isLoading: $isLoading, isInputError: $isInputError, failureOrSucceedTweet: $failureOrSucceedTweet, failureOrSucceedDeleteTweet: $failureOrSucceedDeleteTweet, failureOrSucceedUpdateTweet: $failureOrSucceedUpdateTweet, mod: $mod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateTweetState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isInputError, isInputError) ||
                const DeepCollectionEquality()
                    .equals(other.isInputError, isInputError)) &&
            (identical(other.failureOrSucceedTweet, failureOrSucceedTweet) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSucceedTweet, failureOrSucceedTweet)) &&
            (identical(other.failureOrSucceedDeleteTweet,
                    failureOrSucceedDeleteTweet) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSucceedDeleteTweet,
                    failureOrSucceedDeleteTweet)) &&
            (identical(other.failureOrSucceedUpdateTweet,
                    failureOrSucceedUpdateTweet) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSucceedUpdateTweet,
                    failureOrSucceedUpdateTweet)) &&
            (identical(other.mod, mod) ||
                const DeepCollectionEquality().equals(other.mod, mod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isInputError) ^
      const DeepCollectionEquality().hash(failureOrSucceedTweet) ^
      const DeepCollectionEquality().hash(failureOrSucceedDeleteTweet) ^
      const DeepCollectionEquality().hash(failureOrSucceedUpdateTweet) ^
      const DeepCollectionEquality().hash(mod);

  @JsonKey(ignore: true)
  @override
  _$UpdateTweetStateCopyWith<_UpdateTweetState> get copyWith =>
      __$UpdateTweetStateCopyWithImpl<_UpdateTweetState>(this, _$identity);
}

abstract class _UpdateTweetState extends UpdateTweetState {
  const factory _UpdateTweetState(
      {required bool isLoading,
      required String isInputError,
      required Option<Either<AppFailure, Unit>> failureOrSucceedTweet,
      required Option<Either<AppFailure, Unit>> failureOrSucceedDeleteTweet,
      required Option<Either<AppFailure, Unit>> failureOrSucceedUpdateTweet,
      required TweetModel mod}) = _$_UpdateTweetState;
  const _UpdateTweetState._() : super._();

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  String get isInputError => throw _privateConstructorUsedError;
  @override
  Option<Either<AppFailure, Unit>> get failureOrSucceedTweet =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AppFailure, Unit>> get failureOrSucceedDeleteTweet =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AppFailure, Unit>> get failureOrSucceedUpdateTweet =>
      throw _privateConstructorUsedError;
  @override
  TweetModel get mod => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateTweetStateCopyWith<_UpdateTweetState> get copyWith =>
      throw _privateConstructorUsedError;
}
