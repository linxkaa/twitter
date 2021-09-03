import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter/domain/login_and_regis/login_regis_failure.dart';
import 'package:twitter/domain/login_and_regis/login_regis_validators.dart';

part 'login_regis_entities.freezed.dart';

@freezed
class LoginRegisEntities with _$LoginRegisEntities {
  const LoginRegisEntities._();

  const factory LoginRegisEntities({
    required String name,
    required String email,
    required String password,
    required String repeatedPassword,
  }) = _LoginRegisEntities;

  Option<LoginRegisFailure> get failureLoginOption {
    return (LoginRegisValidator.passwordFailureOption(password))
        .andThen(LoginRegisValidator.validateEmailAddress(email))
        .fold((l) => some(l), (r) => none());
  }

  Option<LoginRegisFailure> get failureRegisterOption {
    return (LoginRegisValidator.repeatPasswordFailureOption(prevPwd: password, currPwd: repeatedPassword))
        .andThen(LoginRegisValidator.validateEmailAddress(email))
        .andThen(LoginRegisValidator.validateifEmpty(name))
        .fold((l) => some(l), (r) => none());
  }

  String? get nameErrorMessage {
    return LoginRegisValidator.validateifEmpty(name).fold(
      (failure) => failure.maybeMap(
        orElse: () => null,
        empty: (_) => "Please fill your name first",
      ),
      (data) => null,
    );
  }

  String? get passwordErrorMessage {
    return LoginRegisValidator.passwordFailureOption(password).fold(
      (failure) => failure.maybeMap(
        orElse: () => null,
        passwordInvalid: (_) => "Password must be at least 6 character and maximum 30 character",
        empty: (_) => "Please fill your password first",
      ),
      (data) => null,
    );
  }

  String? get repeatPasswordErrorMessage {
    return LoginRegisValidator.repeatPasswordFailureOption(prevPwd: password, currPwd: repeatedPassword).fold(
      (failure) => failure.maybeMap(
        orElse: () => null,
        passwordDidntMatch: (_) => "Password didnt match",
        passwordInvalid: (_) => "Password must be at least 6 character and maximum 30 character",
        empty: (_) => "Please fill your password first",
      ),
      (data) => null,
    );
  }

  String? get pwdError => LoginRegisValidator.passwordFailureOption(password).fold(
        (failure) => failure.maybeWhen(
          orElse: () => null,
          passwordInvalid: () => "Password must be at least 6 character and maximum 30 character",
          empty: () => "Please fill your password first",
        ),
        (valid) => null,
      );

  String? get emailError => LoginRegisValidator.validateEmailAddress(email).fold(
        (failure) => failure.maybeWhen(
          orElse: () => null,
          empty: () => "Please fill your email first",
          invalidEmailAddress: () => "Email is not in valid format",
        ),
        (valid) => null,
      );

  factory LoginRegisEntities.empty() => LoginRegisEntities(
        email: "",
        password: "",
        repeatedPassword: "",
        name: "",
      );
}
