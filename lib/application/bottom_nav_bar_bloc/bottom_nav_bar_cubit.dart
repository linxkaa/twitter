import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/application/bottom_nav_bar_bloc/bottom_nav_bar_event.dart';

part 'bottom_nav_bar_cubit.freezed.dart';
part 'bottom_nav_bar_state.dart';

@injectable
class BottomNavBarCubit extends Cubit<BottomNavBarCubitState> {
  BottomNavBarCubit() : super(BottomNavBarCubitState.init());

  changeTab(int index) {
    BottomNavBarEvent page = BottomNavBarEvent.home();
    switch (index) {
      case 0:
        page = BottomNavBarEvent.home();
        break;
      case 1:
        page = BottomNavBarEvent.search();
        break;
      case 2:
        page = BottomNavBarEvent.notification();
        break;
      case 3:
        page = BottomNavBarEvent.account();
        break;
    }
    emit(BottomNavBarCubitState(currentIndex: index, page: page));
  }
}
