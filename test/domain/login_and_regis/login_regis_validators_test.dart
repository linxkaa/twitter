import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:twitter/domain/login_and_regis/login_regis_entities.dart';
import 'package:twitter/domain/login_and_regis/login_regis_failure.dart';
import 'package:twitter/domain/login_and_regis/login_regis_validators.dart';

void main() {
  group("Validate name field -> ", () {
    test("When name is empty return LoginRegisFailure.empty()", () {
      expect(LoginRegisValidator.validateifEmpty(""), left($LoginRegisFailure.empty()));
    });

    test("When name is not empty return unit", () {
      expect(LoginRegisValidator.validateifEmpty("Lintang Kusuma"), right(unit));
    });
  });

  group("Validate email field -> ", () {
    test("When email is empty return LoginRegisFailure.empty()", () {
      expect(LoginRegisValidator.validateEmailAddress(""), left($LoginRegisFailure.empty()));
    });
    test("When email is invalid return LoginRegisFailure.invalidEmailAddress()", () {
      expect(LoginRegisValidator.validateEmailAddress("lintang@com"), left($LoginRegisFailure.invalidEmailAddress()));
    });

    test("When email is valid return unit", () {
      expect(LoginRegisValidator.validateEmailAddress("LintangKusuma@gmail.com"), right(unit));
    });
  });

  group("Validate password field -> ", () {
    test("When password is empty return LoginRegisFailure.empty()", () {
      expect(LoginRegisValidator.passwordFailureOption(""), left(LoginRegisFailure.empty()));
    });
    test("When password is invalid (fewer than 6 character) return LoginRegisFailure.passwordInvalid()", () {
      expect(LoginRegisValidator.passwordFailureOption("lint"), left(LoginRegisFailure.passwordInvalid()));
    });

    test("When password is invalid (more than 30 character) return LoginRegisFailure.passwordInvalid()", () {
      expect(LoginRegisValidator.passwordFailureOption("lintanglintanglintanglintanglintanglin"),
          left(LoginRegisFailure.passwordInvalid()));
    });

    test("When password is invalid (equal to 30 character) return LoginRegisFailure.passwordInvalid()", () {
      expect(LoginRegisValidator.passwordFailureOption("lintanglintanglintanglintanglintang"),
          left(LoginRegisFailure.passwordInvalid()));
    });

    test("When password is invalid (equal to 6 character) return unit", () {
      expect(LoginRegisValidator.passwordFailureOption("lintan"), right(unit));
    });
    test("When password is valid return unit (more than 6 character and less than 30 character)", () {
      expect(LoginRegisValidator.passwordFailureOption("lintang"), right(unit));
    });
  });

  group("Validate input Repeat Password -> ", () {
    test("When current Password is empty return LoginRegisFailure.empty()", () {
      expect(
          LoginRegisValidator.repeatPasswordFailureOption(prevPwd: "", currPwd: ""), left(LoginRegisFailure.empty()));
    });
    test("When current Password is invalid (fewer than 6 character) return LoginRegisFailure.passwordInvalid()", () {
      expect(LoginRegisValidator.repeatPasswordFailureOption(prevPwd: "", currPwd: "lint"),
          left(LoginRegisFailure.passwordInvalid()));
    });

    test("When current Password is invalid (more than 30 character) return LoginRegisFailure.passwordInvalid()", () {
      expect(
          LoginRegisValidator.repeatPasswordFailureOption(
              prevPwd: "", currPwd: "lintanglintanglintanglintanglintanglin"),
          left(LoginRegisFailure.passwordInvalid()));
    });

    test("When current Password is invalid (equal to 30 character) return LoginRegisFailure.passwordInvalid()", () {
      expect(
          LoginRegisValidator.repeatPasswordFailureOption(prevPwd: "", currPwd: "lintanglintanglintanglintanglintang"),
          left(LoginRegisFailure.passwordInvalid()));
    });

    test("When current Password is invalid (equal to 6 character) return unit, but previous password is empty", () {
      expect(
        LoginRegisValidator.repeatPasswordFailureOption(prevPwd: "", currPwd: "lintan"),
        left(
          LoginRegisFailure.passwordDidntMatch(),
        ),
      );
    });
    test(
        "When current Password is valid return unit (more than 6 character and less than 30 character), but previous password is empty",
        () {
      expect(
        LoginRegisValidator.repeatPasswordFailureOption(prevPwd: "", currPwd: "lintang"),
        left(
          LoginRegisFailure.passwordDidntMatch(),
        ),
      );
    });

    test(
        "When current Password is valid return unit (more than 6 character and less than 30 character), but previous password is equal to current password",
        () {
      expect(
        LoginRegisValidator.repeatPasswordFailureOption(prevPwd: "lintang", currPwd: "lintang"),
        right(unit),
      );
    });
  });
}
