part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState({
    required LoginRegisEntities loginEntities,
    required bool isShowError,
    required bool isLoading,
    required Option<Either<AppFailure, Unit>> failureOrSucceedLogin,
  }) = _LoginState;
  factory LoginState.initial() => LoginState(
        loginEntities: LoginRegisEntities.empty(),
        isShowError: false,
        isLoading: false,
        failureOrSucceedLogin: none(),
      );

  LoginState get unmodified => copyWith(
        isLoading: false,
        failureOrSucceedLogin: none(),
      );

  String? get isShowEmailError => isShowError ? loginEntities.emailError : null;
  String? get isShowPwdError => isShowError ? loginEntities.pwdError : null;
}
