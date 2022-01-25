import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitter/application/auth_bloc/auth_bloc.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/domain/core/interfaces/I_auth_repositories.dart';
import 'package:twitter/infrastructure/dtos/user_model.dart';
import 'package:twitter/infrastructure/repositories/auth_repositories.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateMocks([IAuthRepositories])
void main() {
  late MockIAuthRepositories _authRepositories;
  late AuthBloc _authBloc;
  setUp(() {
    _authRepositories = MockIAuthRepositories();
    _authBloc = AuthBloc(_authRepositories);
  });

  group("Test Initial Event -> ", () {
    blocTest<AuthBloc, AuthState>(
      'emits authenticated when AuthEvent.initial() is added.',
      build: () {
        when(_authRepositories.checkUserLoggedIn()).thenAnswer(
          (_) async => right(
            UserModel(
              name: "Lintang Kusuma",
              token: "1283819uahdu23",
              email: "lintangkantor@gmail.com",
              status: AuthStatus.Authenticated,
            ),
          ),
        );
        return _authBloc;
      },
      act: (bloc) => bloc.add(AuthEvent.initial()),
      expect: () => const <AuthState>[
        AuthState(
          model: UserModel(
              name: "Lintang Kusuma",
              token: "1283819uahdu23",
              email: "lintangkantor@gmail.com",
              status: AuthStatus.Authenticated),
          isLoading: false,
        ),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits unAuthenticated when AuthEvent.initial() is added.',
      build: () {
        when(_authRepositories.checkUserLoggedIn()).thenAnswer(
          (_) async => left(
            AppFailure.fromServerSide("User Not Logged In"),
          ),
        );
        return _authBloc;
      },
      act: (bloc) => bloc.add(AuthEvent.initial()),
      expect: () => const <AuthState>[
        AuthState(
          model: UserModel(
            name: "",
            token: "",
            email: "",
            status: AuthStatus.Unauthenticated,
          ),
          isLoading: false,
        ),
      ],
    );
  });

  group("Test UnAuthenticated Event -> ", () {
    blocTest<AuthBloc, AuthState>(
      'emits Unauthenticated when AuthEvent.unAuthenticated() is added.',
      build: () {
        when(_authRepositories.signOut()).thenAnswer(
          (_) async => right(unit),
        );
        return _authBloc;
      },
      act: (bloc) => bloc.add(AuthEvent.unauthenticated()),
      expect: () => const <AuthState>[
        AuthState(
          model: UserModel(
            name: "",
            token: "",
            email: "",
            status: AuthStatus.Initial,
          ),
          isLoading: true,
        ),
        AuthState(
          model: UserModel(
            name: "",
            token: "",
            email: "",
            status: AuthStatus.Unauthenticated,
          ),
          isLoading: false,
        ),
      ],
    );
  });
}
