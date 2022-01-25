import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/infrastructure/data_sources/firebase_data_sources.dart';
import 'package:twitter/infrastructure/repositories/auth_repositories.dart';

import 'auth_repositories_test.mocks.dart';

@GenerateMocks([FirebaseDataSource])
void main() {
  late MockFirebaseDataSource _firebaseDataSources;
  late AuthRepositories _authRepositories;
  setUp(() {
    _firebaseDataSources = MockFirebaseDataSource();
    _authRepositories = AuthRepositories(_firebaseDataSources);
  });

  group(" Auth Repositories Test Social Login (Login With google) -> ", () {
    test("Login With Google succeed", () async {
      when(await _firebaseDataSources.signInWithGoogle()).thenAnswer(
        (_) async => null,
      );
      expect(await _authRepositories.loginWithSocial(), right<AppFailure, Unit>(unit));
    });

    test("Login With Google failed because User has cancelled google sign in", () async {
      when(await _firebaseDataSources.signInWithGoogle()).thenThrow(
        "User has cancelled google sign in",
      );
      expect(
        await _authRepositories.loginWithSocial(),
        left<AppFailure, Unit>(
          AppFailure.fromServerSide(
            "User has cancelled google sign in",
          ),
        ),
      );
    });

    test("Login With Google failed because Exception from firebase", () async {
      when(await _firebaseDataSources.signInWithGoogle()).thenThrow(
        "The provided sign-in provider is disabled for your Firebase project. Enable it from the Sign-in Method section of the Firebase console",
      );
      expect(
        await _authRepositories.loginWithSocial(),
        left<AppFailure, Unit>(
          AppFailure.fromServerSide(
              "The provided sign-in provider is disabled for your Firebase project. Enable it from the Sign-in Method section of the Firebase console"),
        ),
      );
    });
  });

  group("Auth Repositories Test Login Manual -> ", () {
    test("Login Manual succeed ", () async {
      when(await _firebaseDataSources.loginManual(
        email: "lintangkantor@gmail.com",
        pwd: "lintang",
      ))
          .thenAnswer(
        (_) async => null,
      );
      expect(
        await _authRepositories.loginManual(
          email: "lintangkantor@gmail.com",
          pwd: "lintang",
        ),
        right<AppFailure, Unit>(unit),
      );
    });

    test("Login Manual failed because FirebaseAuthException from firebase", () async {
      when(await _firebaseDataSources.loginManual(
        email: "lintangkantor@gmail.com",
        pwd: "lintang",
      ))
          .thenThrow(
        "${FirebaseAuthException(
          code: "auth/operation-not-allowed",
          message:
              "The provided sign-in provider is disabled for your Firebase project. Enable it from the Sign-in Method section of the Firebase console",
        ).message}",
      );
      expect(
        await _authRepositories.loginManual(
          email: "lintangkantor@gmail.com",
          pwd: "lintang",
        ),
        left<AppFailure, Unit>(
          AppFailure.fromServerSide(
              "The provided sign-in provider is disabled for your Firebase project. Enable it from the Sign-in Method section of the Firebase console"),
        ),
      );
    });
  });
}
