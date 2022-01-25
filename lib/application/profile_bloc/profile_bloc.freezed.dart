// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _ProfileEventgetUserProfile getUserProfile(String id) {
    return _ProfileEventgetUserProfile(
      id,
    );
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getUserProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getUserProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getUserProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileEventgetUserProfile value) getUserProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileEventgetUserProfile value)? getUserProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileEventgetUserProfile value)? getUserProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileEventCopyWith<ProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileEventgetUserProfileCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory _$ProfileEventgetUserProfileCopyWith(
          _ProfileEventgetUserProfile value,
          $Res Function(_ProfileEventgetUserProfile) then) =
      __$ProfileEventgetUserProfileCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$ProfileEventgetUserProfileCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$ProfileEventgetUserProfileCopyWith<$Res> {
  __$ProfileEventgetUserProfileCopyWithImpl(_ProfileEventgetUserProfile _value,
      $Res Function(_ProfileEventgetUserProfile) _then)
      : super(_value, (v) => _then(v as _ProfileEventgetUserProfile));

  @override
  _ProfileEventgetUserProfile get _value =>
      super._value as _ProfileEventgetUserProfile;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ProfileEventgetUserProfile(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileEventgetUserProfile implements _ProfileEventgetUserProfile {
  const _$_ProfileEventgetUserProfile(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProfileEvent.getUserProfile(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileEventgetUserProfile &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$ProfileEventgetUserProfileCopyWith<_ProfileEventgetUserProfile>
      get copyWith => __$ProfileEventgetUserProfileCopyWithImpl<
          _ProfileEventgetUserProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getUserProfile,
  }) {
    return getUserProfile(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? getUserProfile,
  }) {
    return getUserProfile?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getUserProfile,
    required TResult orElse(),
  }) {
    if (getUserProfile != null) {
      return getUserProfile(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProfileEventgetUserProfile value) getUserProfile,
  }) {
    return getUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ProfileEventgetUserProfile value)? getUserProfile,
  }) {
    return getUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProfileEventgetUserProfile value)? getUserProfile,
    required TResult orElse(),
  }) {
    if (getUserProfile != null) {
      return getUserProfile(this);
    }
    return orElse();
  }
}

abstract class _ProfileEventgetUserProfile implements ProfileEvent {
  const factory _ProfileEventgetUserProfile(String id) =
      _$_ProfileEventgetUserProfile;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileEventgetUserProfileCopyWith<_ProfileEventgetUserProfile>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileState call(
      {required FirebaseUserModel firebaseModel, required bool isLoading}) {
    return _ProfileState(
      firebaseModel: firebaseModel,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  FirebaseUserModel get firebaseModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call({FirebaseUserModel firebaseModel, bool isLoading});

  $FirebaseUserModelCopyWith<$Res> get firebaseModel;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? firebaseModel = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      firebaseModel: firebaseModel == freezed
          ? _value.firebaseModel
          : firebaseModel // ignore: cast_nullable_to_non_nullable
              as FirebaseUserModel,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $FirebaseUserModelCopyWith<$Res> get firebaseModel {
    return $FirebaseUserModelCopyWith<$Res>(_value.firebaseModel, (value) {
      return _then(_value.copyWith(firebaseModel: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({FirebaseUserModel firebaseModel, bool isLoading});

  @override
  $FirebaseUserModelCopyWith<$Res> get firebaseModel;
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object? firebaseModel = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_ProfileState(
      firebaseModel: firebaseModel == freezed
          ? _value.firebaseModel
          : firebaseModel // ignore: cast_nullable_to_non_nullable
              as FirebaseUserModel,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProfileState extends _ProfileState {
  const _$_ProfileState({required this.firebaseModel, required this.isLoading})
      : super._();

  @override
  final FirebaseUserModel firebaseModel;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ProfileState(firebaseModel: $firebaseModel, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileState &&
            (identical(other.firebaseModel, firebaseModel) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseModel, firebaseModel)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firebaseModel) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState extends ProfileState {
  const factory _ProfileState(
      {required FirebaseUserModel firebaseModel,
      required bool isLoading}) = _$_ProfileState;
  const _ProfileState._() : super._();

  @override
  FirebaseUserModel get firebaseModel => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
