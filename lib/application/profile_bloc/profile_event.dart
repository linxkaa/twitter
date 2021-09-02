part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getUserProfile(String id) = _ProfileEventgetUserProfile;
}
