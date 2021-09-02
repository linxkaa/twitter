part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.submit() = _Submit;
  const factory LoginEvent.inputEmail(String val) = _LoginEventinputEmail;
  const factory LoginEvent.inputPwd(String val) = _LoginEventinputPwd;
  const factory LoginEvent.loginWithSocial() = _LoginEventLoginWithSocial;
}
