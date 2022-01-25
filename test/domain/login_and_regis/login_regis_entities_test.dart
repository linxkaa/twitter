import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:twitter/domain/login_and_regis/login_regis_entities.dart';
import 'package:twitter/domain/login_and_regis/login_regis_failure.dart';

void main() {
  group(
    "Test LoginRegis Entities part failureLoginOption -> ",
    () {
      test("When password is invalid", () {
        LoginRegisEntities entities = LoginRegisEntities.empty().copyWith(
          email: "lintang@gmail.com",
          password: "lin",
        );
        expect(
          entities.failureLoginOption,
          some(
            LoginRegisFailure.passwordInvalid(),
          ),
        );
      });

      test("When email is invalid", () {
        LoginRegisEntities entities = LoginRegisEntities.empty().copyWith(
          email: "lintang@gmail",
          password: "lintang",
        );
        expect(
          entities.failureLoginOption,
          some(
            LoginRegisFailure.invalidEmailAddress(),
          ),
        );
      });

      test("When email and password is valid", () {
        LoginRegisEntities entities = LoginRegisEntities.empty().copyWith(
          email: "lintang@gmail.com",
          password: "lintang",
        );
        expect(
          entities.failureLoginOption,
          none(),
        );
      });
    },
  );

  group("Test LoginRegis Entities part failureRegisterOption -> ", () {
    test("when repeat password is empty", () {
      LoginRegisEntities entities = LoginRegisEntities(
        email: "lintang@gmail.com",
        password: "lintang",
        repeatedPassword: "",
        name: "lintang",
      );
      expect(
        entities.failureRegisterOption,
        some(LoginRegisFailure.empty()),
      );
    });

    test("when repeat password is invalid (fewer than 6 character)", () {
      LoginRegisEntities entities = LoginRegisEntities(
        email: "lintang@gmail.com",
        password: "lintang",
        repeatedPassword: "lin",
        name: "lintang",
      );
      expect(
        entities.failureRegisterOption,
        some(LoginRegisFailure.passwordInvalid()),
      );
    });

    test("when repeat password is didnt match (more than 6 character)", () {
      LoginRegisEntities entities = LoginRegisEntities(
        email: "lintang@gmail.com",
        password: "lintang",
        repeatedPassword: "lintangg",
        name: "lintang",
      );
      expect(
        entities.failureRegisterOption,
        some(LoginRegisFailure.passwordDidntMatch()),
      );
    });

    test("when email is invalid", () {
      LoginRegisEntities entities = LoginRegisEntities(
        email: "lintang@gmail",
        password: "lintang",
        repeatedPassword: "lintang",
        name: "lintang",
      );
      expect(
        entities.failureRegisterOption,
        some(LoginRegisFailure.invalidEmailAddress()),
      );
    });

    test("when email is empty", () {
      LoginRegisEntities entities = LoginRegisEntities(
        email: "",
        password: "lintang",
        repeatedPassword: "lintang",
        name: "lintang",
      );
      expect(
        entities.failureRegisterOption,
        some(LoginRegisFailure.empty()),
      );
    });

    test("when name is empty", () {
      LoginRegisEntities entities = LoginRegisEntities(
        email: "lintang@gmail.com",
        password: "lintang",
        repeatedPassword: "lintang",
        name: "",
      );
      expect(
        entities.failureRegisterOption,
        some(LoginRegisFailure.empty()),
      );
    });

    test("when repeat password, name, email input is valid", () {
      LoginRegisEntities entities = LoginRegisEntities(
        email: "lintang@gmail.com",
        password: "lintang",
        repeatedPassword: "lintang",
        name: "lintang",
      );
      expect(
        entities.failureRegisterOption,
        none(),
      );
    });
  });
}
