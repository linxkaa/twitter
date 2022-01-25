// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TweetsEventTearOff {
  const _$TweetsEventTearOff();

  _TweetsEventinitial initial(String userId) {
    return _TweetsEventinitial(
      userId,
    );
  }

  _TweetsEventnewTweetsStreamed newTweetsStreamed(UserAllTweetsModel mod) {
    return _TweetsEventnewTweetsStreamed(
      mod,
    );
  }
}

/// @nodoc
const $TweetsEvent = _$TweetsEventTearOff();

/// @nodoc
mixin _$TweetsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initial,
    required TResult Function(UserAllTweetsModel mod) newTweetsStreamed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? initial,
    TResult Function(UserAllTweetsModel mod)? newTweetsStreamed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initial,
    TResult Function(UserAllTweetsModel mod)? newTweetsStreamed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TweetsEventinitial value) initial,
    required TResult Function(_TweetsEventnewTweetsStreamed value)
        newTweetsStreamed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TweetsEventinitial value)? initial,
    TResult Function(_TweetsEventnewTweetsStreamed value)? newTweetsStreamed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TweetsEventinitial value)? initial,
    TResult Function(_TweetsEventnewTweetsStreamed value)? newTweetsStreamed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetsEventCopyWith<$Res> {
  factory $TweetsEventCopyWith(
          TweetsEvent value, $Res Function(TweetsEvent) then) =
      _$TweetsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TweetsEventCopyWithImpl<$Res> implements $TweetsEventCopyWith<$Res> {
  _$TweetsEventCopyWithImpl(this._value, this._then);

  final TweetsEvent _value;
  // ignore: unused_field
  final $Res Function(TweetsEvent) _then;
}

/// @nodoc
abstract class _$TweetsEventinitialCopyWith<$Res> {
  factory _$TweetsEventinitialCopyWith(
          _TweetsEventinitial value, $Res Function(_TweetsEventinitial) then) =
      __$TweetsEventinitialCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$TweetsEventinitialCopyWithImpl<$Res>
    extends _$TweetsEventCopyWithImpl<$Res>
    implements _$TweetsEventinitialCopyWith<$Res> {
  __$TweetsEventinitialCopyWithImpl(
      _TweetsEventinitial _value, $Res Function(_TweetsEventinitial) _then)
      : super(_value, (v) => _then(v as _TweetsEventinitial));

  @override
  _TweetsEventinitial get _value => super._value as _TweetsEventinitial;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_TweetsEventinitial(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TweetsEventinitial
    with DiagnosticableTreeMixin
    implements _TweetsEventinitial {
  const _$_TweetsEventinitial(this.userId);

  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TweetsEvent.initial(userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TweetsEvent.initial'))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TweetsEventinitial &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$TweetsEventinitialCopyWith<_TweetsEventinitial> get copyWith =>
      __$TweetsEventinitialCopyWithImpl<_TweetsEventinitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initial,
    required TResult Function(UserAllTweetsModel mod) newTweetsStreamed,
  }) {
    return initial(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? initial,
    TResult Function(UserAllTweetsModel mod)? newTweetsStreamed,
  }) {
    return initial?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initial,
    TResult Function(UserAllTweetsModel mod)? newTweetsStreamed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TweetsEventinitial value) initial,
    required TResult Function(_TweetsEventnewTweetsStreamed value)
        newTweetsStreamed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TweetsEventinitial value)? initial,
    TResult Function(_TweetsEventnewTweetsStreamed value)? newTweetsStreamed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TweetsEventinitial value)? initial,
    TResult Function(_TweetsEventnewTweetsStreamed value)? newTweetsStreamed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TweetsEventinitial implements TweetsEvent {
  const factory _TweetsEventinitial(String userId) = _$_TweetsEventinitial;

  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TweetsEventinitialCopyWith<_TweetsEventinitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TweetsEventnewTweetsStreamedCopyWith<$Res> {
  factory _$TweetsEventnewTweetsStreamedCopyWith(
          _TweetsEventnewTweetsStreamed value,
          $Res Function(_TweetsEventnewTweetsStreamed) then) =
      __$TweetsEventnewTweetsStreamedCopyWithImpl<$Res>;
  $Res call({UserAllTweetsModel mod});

  $UserAllTweetsModelCopyWith<$Res> get mod;
}

/// @nodoc
class __$TweetsEventnewTweetsStreamedCopyWithImpl<$Res>
    extends _$TweetsEventCopyWithImpl<$Res>
    implements _$TweetsEventnewTweetsStreamedCopyWith<$Res> {
  __$TweetsEventnewTweetsStreamedCopyWithImpl(
      _TweetsEventnewTweetsStreamed _value,
      $Res Function(_TweetsEventnewTweetsStreamed) _then)
      : super(_value, (v) => _then(v as _TweetsEventnewTweetsStreamed));

  @override
  _TweetsEventnewTweetsStreamed get _value =>
      super._value as _TweetsEventnewTweetsStreamed;

  @override
  $Res call({
    Object? mod = freezed,
  }) {
    return _then(_TweetsEventnewTweetsStreamed(
      mod == freezed
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as UserAllTweetsModel,
    ));
  }

  @override
  $UserAllTweetsModelCopyWith<$Res> get mod {
    return $UserAllTweetsModelCopyWith<$Res>(_value.mod, (value) {
      return _then(_value.copyWith(mod: value));
    });
  }
}

/// @nodoc

class _$_TweetsEventnewTweetsStreamed
    with DiagnosticableTreeMixin
    implements _TweetsEventnewTweetsStreamed {
  const _$_TweetsEventnewTweetsStreamed(this.mod);

  @override
  final UserAllTweetsModel mod;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TweetsEvent.newTweetsStreamed(mod: $mod)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TweetsEvent.newTweetsStreamed'))
      ..add(DiagnosticsProperty('mod', mod));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TweetsEventnewTweetsStreamed &&
            (identical(other.mod, mod) ||
                const DeepCollectionEquality().equals(other.mod, mod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mod);

  @JsonKey(ignore: true)
  @override
  _$TweetsEventnewTweetsStreamedCopyWith<_TweetsEventnewTweetsStreamed>
      get copyWith => __$TweetsEventnewTweetsStreamedCopyWithImpl<
          _TweetsEventnewTweetsStreamed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) initial,
    required TResult Function(UserAllTweetsModel mod) newTweetsStreamed,
  }) {
    return newTweetsStreamed(mod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? initial,
    TResult Function(UserAllTweetsModel mod)? newTweetsStreamed,
  }) {
    return newTweetsStreamed?.call(mod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? initial,
    TResult Function(UserAllTweetsModel mod)? newTweetsStreamed,
    required TResult orElse(),
  }) {
    if (newTweetsStreamed != null) {
      return newTweetsStreamed(mod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TweetsEventinitial value) initial,
    required TResult Function(_TweetsEventnewTweetsStreamed value)
        newTweetsStreamed,
  }) {
    return newTweetsStreamed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TweetsEventinitial value)? initial,
    TResult Function(_TweetsEventnewTweetsStreamed value)? newTweetsStreamed,
  }) {
    return newTweetsStreamed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TweetsEventinitial value)? initial,
    TResult Function(_TweetsEventnewTweetsStreamed value)? newTweetsStreamed,
    required TResult orElse(),
  }) {
    if (newTweetsStreamed != null) {
      return newTweetsStreamed(this);
    }
    return orElse();
  }
}

abstract class _TweetsEventnewTweetsStreamed implements TweetsEvent {
  const factory _TweetsEventnewTweetsStreamed(UserAllTweetsModel mod) =
      _$_TweetsEventnewTweetsStreamed;

  UserAllTweetsModel get mod => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TweetsEventnewTweetsStreamedCopyWith<_TweetsEventnewTweetsStreamed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TweetsStateTearOff {
  const _$TweetsStateTearOff();

  _TweetsState call(
      {required UserAllTweetsModel mod, required bool isLoading}) {
    return _TweetsState(
      mod: mod,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $TweetsState = _$TweetsStateTearOff();

/// @nodoc
mixin _$TweetsState {
  UserAllTweetsModel get mod => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TweetsStateCopyWith<TweetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetsStateCopyWith<$Res> {
  factory $TweetsStateCopyWith(
          TweetsState value, $Res Function(TweetsState) then) =
      _$TweetsStateCopyWithImpl<$Res>;
  $Res call({UserAllTweetsModel mod, bool isLoading});

  $UserAllTweetsModelCopyWith<$Res> get mod;
}

/// @nodoc
class _$TweetsStateCopyWithImpl<$Res> implements $TweetsStateCopyWith<$Res> {
  _$TweetsStateCopyWithImpl(this._value, this._then);

  final TweetsState _value;
  // ignore: unused_field
  final $Res Function(TweetsState) _then;

  @override
  $Res call({
    Object? mod = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      mod: mod == freezed
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as UserAllTweetsModel,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserAllTweetsModelCopyWith<$Res> get mod {
    return $UserAllTweetsModelCopyWith<$Res>(_value.mod, (value) {
      return _then(_value.copyWith(mod: value));
    });
  }
}

/// @nodoc
abstract class _$TweetsStateCopyWith<$Res>
    implements $TweetsStateCopyWith<$Res> {
  factory _$TweetsStateCopyWith(
          _TweetsState value, $Res Function(_TweetsState) then) =
      __$TweetsStateCopyWithImpl<$Res>;
  @override
  $Res call({UserAllTweetsModel mod, bool isLoading});

  @override
  $UserAllTweetsModelCopyWith<$Res> get mod;
}

/// @nodoc
class __$TweetsStateCopyWithImpl<$Res> extends _$TweetsStateCopyWithImpl<$Res>
    implements _$TweetsStateCopyWith<$Res> {
  __$TweetsStateCopyWithImpl(
      _TweetsState _value, $Res Function(_TweetsState) _then)
      : super(_value, (v) => _then(v as _TweetsState));

  @override
  _TweetsState get _value => super._value as _TweetsState;

  @override
  $Res call({
    Object? mod = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_TweetsState(
      mod: mod == freezed
          ? _value.mod
          : mod // ignore: cast_nullable_to_non_nullable
              as UserAllTweetsModel,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TweetsState extends _TweetsState with DiagnosticableTreeMixin {
  const _$_TweetsState({required this.mod, required this.isLoading})
      : super._();

  @override
  final UserAllTweetsModel mod;
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TweetsState(mod: $mod, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TweetsState'))
      ..add(DiagnosticsProperty('mod', mod))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TweetsState &&
            (identical(other.mod, mod) ||
                const DeepCollectionEquality().equals(other.mod, mod)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mod) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$TweetsStateCopyWith<_TweetsState> get copyWith =>
      __$TweetsStateCopyWithImpl<_TweetsState>(this, _$identity);
}

abstract class _TweetsState extends TweetsState {
  const factory _TweetsState(
      {required UserAllTweetsModel mod,
      required bool isLoading}) = _$_TweetsState;
  const _TweetsState._() : super._();

  @override
  UserAllTweetsModel get mod => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TweetsStateCopyWith<_TweetsState> get copyWith =>
      throw _privateConstructorUsedError;
}
