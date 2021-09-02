part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.submit() = _Submit;
  const factory RegisterEvent.inputEmail(String val) = _RegisterEventinputEmail;
  const factory RegisterEvent.inputPwd(String val) = _RegisterEventinputPwd;
  const factory RegisterEvent.repeatPwd(String val) = _RegisterEventrepeatPwd;
  const factory RegisterEvent.inputName(String val) = _RegisterEventinputName;
}
