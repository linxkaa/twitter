part of 'bottom_nav_bar_cubit.dart';

@freezed
abstract class BottomNavBarCubitState with _$BottomNavBarCubitState {
  const BottomNavBarCubitState._();
  const factory BottomNavBarCubitState({
    required int currentIndex,
    required BottomNavBarEvent page,
  }) = _BottomNavBarCubitState;

  factory BottomNavBarCubitState.init() => BottomNavBarCubitState(
        currentIndex: 0,
        page: BottomNavBarEvent.home(),
      );
}
