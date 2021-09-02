part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();
  const factory RegisterState({
    required LoginRegisEntities regisEntities,
    required bool isShowError,
    required bool isLoading,
    required Option<Either<AppFailure, Unit>> failureOrSucceedRegister,
  }) = _RegisterState;
  factory RegisterState.initial() => RegisterState(
        regisEntities: LoginRegisEntities.empty(),
        isShowError: false,
        isLoading: false,
        failureOrSucceedRegister: none(),
      );

  RegisterState get unmodified => copyWith(
        isLoading: false,
        failureOrSucceedRegister: none(),
      );

  String? get isShowEmailError => isShowError ? regisEntities.emailError : null;
  String? get isShowPwdError => isShowError ? regisEntities.pwdError : null;
  String? get isShowNameError => isShowError ? regisEntities.nameErrorMessage : null;
  String? get isShowRepeatedPwdError => isShowError ? regisEntities.repeatPasswordErrorMessage : null;
}
