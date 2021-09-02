import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_bar_event.freezed.dart';

@freezed
class BottomNavBarEvent with _$BottomNavBarEvent {
  const factory BottomNavBarEvent.home() = _Home;
  const factory BottomNavBarEvent.notification() = _Live;
  const factory BottomNavBarEvent.search() = _Cart;

  const factory BottomNavBarEvent.account() = _Account;
}
