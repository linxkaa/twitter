// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'bottom_nav_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BottomNavBarCubitStateTearOff {
  const _$BottomNavBarCubitStateTearOff();

  _BottomNavBarCubitState call(
      {required int currentIndex, required BottomNavBarEvent page}) {
    return _BottomNavBarCubitState(
      currentIndex: currentIndex,
      page: page,
    );
  }
}

/// @nodoc
const $BottomNavBarCubitState = _$BottomNavBarCubitStateTearOff();

/// @nodoc
mixin _$BottomNavBarCubitState {
  int get currentIndex => throw _privateConstructorUsedError;
  BottomNavBarEvent get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavBarCubitStateCopyWith<BottomNavBarCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavBarCubitStateCopyWith<$Res> {
  factory $BottomNavBarCubitStateCopyWith(BottomNavBarCubitState value,
          $Res Function(BottomNavBarCubitState) then) =
      _$BottomNavBarCubitStateCopyWithImpl<$Res>;
  $Res call({int currentIndex, BottomNavBarEvent page});

  $BottomNavBarEventCopyWith<$Res> get page;
}

/// @nodoc
class _$BottomNavBarCubitStateCopyWithImpl<$Res>
    implements $BottomNavBarCubitStateCopyWith<$Res> {
  _$BottomNavBarCubitStateCopyWithImpl(this._value, this._then);

  final BottomNavBarCubitState _value;
  // ignore: unused_field
  final $Res Function(BottomNavBarCubitState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BottomNavBarEvent,
    ));
  }

  @override
  $BottomNavBarEventCopyWith<$Res> get page {
    return $BottomNavBarEventCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value));
    });
  }
}

/// @nodoc
abstract class _$BottomNavBarCubitStateCopyWith<$Res>
    implements $BottomNavBarCubitStateCopyWith<$Res> {
  factory _$BottomNavBarCubitStateCopyWith(_BottomNavBarCubitState value,
          $Res Function(_BottomNavBarCubitState) then) =
      __$BottomNavBarCubitStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex, BottomNavBarEvent page});

  @override
  $BottomNavBarEventCopyWith<$Res> get page;
}

/// @nodoc
class __$BottomNavBarCubitStateCopyWithImpl<$Res>
    extends _$BottomNavBarCubitStateCopyWithImpl<$Res>
    implements _$BottomNavBarCubitStateCopyWith<$Res> {
  __$BottomNavBarCubitStateCopyWithImpl(_BottomNavBarCubitState _value,
      $Res Function(_BottomNavBarCubitState) _then)
      : super(_value, (v) => _then(v as _BottomNavBarCubitState));

  @override
  _BottomNavBarCubitState get _value => super._value as _BottomNavBarCubitState;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? page = freezed,
  }) {
    return _then(_BottomNavBarCubitState(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BottomNavBarEvent,
    ));
  }
}

/// @nodoc

class _$_BottomNavBarCubitState extends _BottomNavBarCubitState {
  const _$_BottomNavBarCubitState(
      {required this.currentIndex, required this.page})
      : super._();

  @override
  final int currentIndex;
  @override
  final BottomNavBarEvent page;

  @override
  String toString() {
    return 'BottomNavBarCubitState(currentIndex: $currentIndex, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BottomNavBarCubitState &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentIndex) ^
      const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$BottomNavBarCubitStateCopyWith<_BottomNavBarCubitState> get copyWith =>
      __$BottomNavBarCubitStateCopyWithImpl<_BottomNavBarCubitState>(
          this, _$identity);
}

abstract class _BottomNavBarCubitState extends BottomNavBarCubitState {
  const factory _BottomNavBarCubitState(
      {required int currentIndex,
      required BottomNavBarEvent page}) = _$_BottomNavBarCubitState;
  const _BottomNavBarCubitState._() : super._();

  @override
  int get currentIndex => throw _privateConstructorUsedError;
  @override
  BottomNavBarEvent get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BottomNavBarCubitStateCopyWith<_BottomNavBarCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
