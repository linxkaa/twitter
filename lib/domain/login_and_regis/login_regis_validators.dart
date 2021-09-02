import 'package:dartz/dartz.dart';
import 'package:twitter/domain/login_and_regis/login_regis_failure.dart';

class LoginRegisValidator {
  LoginRegisValidator._();

  static Either<LoginRegisFailure, Unit> passwordFailureOption(String val) {
    if (val.isEmpty) {
      return left(LoginRegisFailure.empty());
    } else if (val.length < 6 || val.length > 30) {
      return left(LoginRegisFailure.passwordInvalid());
    } else {
      return right(unit);
    }
  }

  static Either<LoginRegisFailure, Unit> repeatPasswordFailureOption(
      {required String prevPwd, required String currPwd}) {
    if (currPwd.isEmpty) {
      return left(LoginRegisFailure.empty());
    } else if (currPwd.length < 6 || currPwd.length > 30) {
      return left(LoginRegisFailure.passwordInvalid());
    } else if (currPwd != prevPwd) {
      return left(LoginRegisFailure.passwordDidntMatch());
    } else {
      return right(unit);
    }
  }

  static Either<LoginRegisFailure, Unit> validateEmailAddress(String input) {
    const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

    if (input.isEmpty) {
      return left(LoginRegisFailure.empty());
    } else if (!RegExp(emailRegex).hasMatch(input)) {
      return left(LoginRegisFailure.invalidEmailAddress());
    } else {
      return right(unit);
    }
  }

  static Either<LoginRegisFailure, Unit> validateifEmpty(String val) {
    if (val.isEmpty) {
      return left(LoginRegisFailure.empty());
    } else {
      return right(unit);
    }
  }
}
