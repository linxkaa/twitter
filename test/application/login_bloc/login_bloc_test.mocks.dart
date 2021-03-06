// Mocks generated by Mockito 5.0.16 from annotations
// in twitter/test/application/login_bloc/login_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:twitter/domain/core/failure/app_failure.dart' as _i5;
import 'package:twitter/domain/core/interfaces/I_auth_repositories.dart' as _i3;
import 'package:twitter/infrastructure/dtos/user_model.dart' as _i6;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [IAuthRepositories].
///
/// See the documentation for Mockito's code generation for more information.
class MockIAuthRepositories extends _i1.Mock implements _i3.IAuthRepositories {
  MockIAuthRepositories() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.AppFailure, _i2.Unit>> loginWithSocial() =>
      (super.noSuchMethod(Invocation.method(#loginWithSocial, []),
              returnValue: Future<_i2.Either<_i5.AppFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.AppFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.AppFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.AppFailure, _i2.Unit>> registerManual(
          {String? email, String? pwd, String? name}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #registerManual, [], {#email: email, #pwd: pwd, #name: name}),
              returnValue: Future<_i2.Either<_i5.AppFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.AppFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.AppFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.AppFailure, _i2.Unit>> loginManual(
          {String? email, String? pwd}) =>
      (super.noSuchMethod(
              Invocation.method(#loginManual, [], {#email: email, #pwd: pwd}),
              returnValue: Future<_i2.Either<_i5.AppFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.AppFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.AppFailure, _i2.Unit>>);
  @override
  _i4.Future<_i2.Either<_i5.AppFailure, _i6.UserModel>> checkUserLoggedIn() =>
      (super.noSuchMethod(Invocation.method(#checkUserLoggedIn, []),
          returnValue: Future<_i2.Either<_i5.AppFailure, _i6.UserModel>>.value(
              _FakeEither_0<_i5.AppFailure, _i6.UserModel>())) as _i4
          .Future<_i2.Either<_i5.AppFailure, _i6.UserModel>>);
  @override
  _i4.Future<_i2.Either<_i5.AppFailure, _i2.Unit>> signOut() =>
      (super.noSuchMethod(Invocation.method(#signOut, []),
              returnValue: Future<_i2.Either<_i5.AppFailure, _i2.Unit>>.value(
                  _FakeEither_0<_i5.AppFailure, _i2.Unit>()))
          as _i4.Future<_i2.Either<_i5.AppFailure, _i2.Unit>>);
  @override
  String toString() => super.toString();
}
