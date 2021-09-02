part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState({
    required UserModel model,
    required bool isLoading,
  }) = _AuthState;
  factory AuthState.initial() => AuthState(
        model: UserModel.empty(),
        isLoading: true,
      );

  AuthState get unmodified => copyWith(isLoading: false);

  bool get isAuthenticated => model.status == AuthStatus.Authenticated;
}
