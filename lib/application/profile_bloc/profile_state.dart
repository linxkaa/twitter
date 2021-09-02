part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();
  const factory ProfileState({
    required FirebaseUserModel firebaseModel,
    required bool isLoading,
  }) = _ProfileState;
  factory ProfileState.initial() => ProfileState(
        firebaseModel: FirebaseUserModel.empty(),
        isLoading: true,
      );

  ProfileState get unmodified => copyWith(isLoading: false);
}
