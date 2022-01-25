import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:twitter/application/bottom_nav_bar_bloc/bottom_nav_bar_cubit.dart';
import 'package:twitter/application/bottom_nav_bar_bloc/bottom_nav_bar_event.dart';

void main() {
  late BottomNavBarCubit _bottomNavBarCubit;
  setUp(() {
    _bottomNavBarCubit = BottomNavBarCubit();
  });
  blocTest<BottomNavBarCubit, BottomNavBarCubitState>(
    'emits BottomNavBarEvent.home() when event changeTab(0) is added. (action to change bottom nav bar to home section page)',
    build: () => _bottomNavBarCubit,
    act: (bloc) => bloc.changeTab(0),
    expect: () => const <BottomNavBarCubitState>[
      BottomNavBarCubitState(
        currentIndex: 0,
        page: BottomNavBarEvent.home(),
      ),
    ],
  );

  blocTest<BottomNavBarCubit, BottomNavBarCubitState>(
    'emits BottomNavBarEvent.search() when event changeTab(1) is added. (action to change bottom nav bar to search section page)',
    build: () => _bottomNavBarCubit,
    act: (bloc) => bloc.changeTab(1),
    expect: () => const <BottomNavBarCubitState>[
      BottomNavBarCubitState(
        currentIndex: 1,
        page: BottomNavBarEvent.search(),
      ),
    ],
  );

  blocTest<BottomNavBarCubit, BottomNavBarCubitState>(
    'emits BottomNavBarEvent.notification() when event changeTab(2) is added. (action to change bottom nav bar to notification section page)',
    build: () => _bottomNavBarCubit,
    act: (bloc) => bloc.changeTab(2),
    expect: () => const <BottomNavBarCubitState>[
      BottomNavBarCubitState(
        currentIndex: 2,
        page: BottomNavBarEvent.notification(),
      ),
    ],
  );

  blocTest<BottomNavBarCubit, BottomNavBarCubitState>(
    'emits BottomNavBarEvent.account() when event changeTab(3) is added. (action to change bottom nav bar to account section page)',
    build: () => _bottomNavBarCubit,
    act: (bloc) => bloc.changeTab(3),
    expect: () => const <BottomNavBarCubitState>[
      BottomNavBarCubitState(
        currentIndex: 3,
        page: BottomNavBarEvent.account(),
      ),
    ],
  );
}
