// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppFailureTearOff {
  const _$AppFailureTearOff();

  _FromServerSide fromServerSide(String failedVailure) {
    return _FromServerSide(
      failedVailure,
    );
  }
}

/// @nodoc
const $AppFailure = _$AppFailureTearOff();

/// @nodoc
mixin _$AppFailure {
  String get failedVailure => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedVailure) fromServerSide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedVailure)? fromServerSide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FromServerSide value) fromServerSide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromServerSide value)? fromServerSide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppFailureCopyWith<AppFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppFailureCopyWith<$Res> {
  factory $AppFailureCopyWith(
          AppFailure value, $Res Function(AppFailure) then) =
      _$AppFailureCopyWithImpl<$Res>;
  $Res call({String failedVailure});
}

/// @nodoc
class _$AppFailureCopyWithImpl<$Res> implements $AppFailureCopyWith<$Res> {
  _$AppFailureCopyWithImpl(this._value, this._then);

  final AppFailure _value;
  // ignore: unused_field
  final $Res Function(AppFailure) _then;

  @override
  $Res call({
    Object? failedVailure = freezed,
  }) {
    return _then(_value.copyWith(
      failedVailure: failedVailure == freezed
          ? _value.failedVailure
          : failedVailure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FromServerSideCopyWith<$Res>
    implements $AppFailureCopyWith<$Res> {
  factory _$FromServerSideCopyWith(
          _FromServerSide value, $Res Function(_FromServerSide) then) =
      __$FromServerSideCopyWithImpl<$Res>;
  @override
  $Res call({String failedVailure});
}

/// @nodoc
class __$FromServerSideCopyWithImpl<$Res> extends _$AppFailureCopyWithImpl<$Res>
    implements _$FromServerSideCopyWith<$Res> {
  __$FromServerSideCopyWithImpl(
      _FromServerSide _value, $Res Function(_FromServerSide) _then)
      : super(_value, (v) => _then(v as _FromServerSide));

  @override
  _FromServerSide get _value => super._value as _FromServerSide;

  @override
  $Res call({
    Object? failedVailure = freezed,
  }) {
    return _then(_FromServerSide(
      failedVailure == freezed
          ? _value.failedVailure
          : failedVailure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FromServerSide implements _FromServerSide {
  const _$_FromServerSide(this.failedVailure);

  @override
  final String failedVailure;

  @override
  String toString() {
    return 'AppFailure.fromServerSide(failedVailure: $failedVailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FromServerSide &&
            (identical(other.failedVailure, failedVailure) ||
                const DeepCollectionEquality()
                    .equals(other.failedVailure, failedVailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedVailure);

  @JsonKey(ignore: true)
  @override
  _$FromServerSideCopyWith<_FromServerSide> get copyWith =>
      __$FromServerSideCopyWithImpl<_FromServerSide>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedVailure) fromServerSide,
  }) {
    return fromServerSide(failedVailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedVailure)? fromServerSide,
    required TResult orElse(),
  }) {
    if (fromServerSide != null) {
      return fromServerSide(failedVailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FromServerSide value) fromServerSide,
  }) {
    return fromServerSide(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromServerSide value)? fromServerSide,
    required TResult orElse(),
  }) {
    if (fromServerSide != null) {
      return fromServerSide(this);
    }
    return orElse();
  }
}

abstract class _FromServerSide implements AppFailure {
  const factory _FromServerSide(String failedVailure) = _$_FromServerSide;

  @override
  String get failedVailure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FromServerSideCopyWith<_FromServerSide> get copyWith =>
      throw _privateConstructorUsedError;
}
