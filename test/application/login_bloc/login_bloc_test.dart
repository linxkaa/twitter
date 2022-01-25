import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitter/application/login_bloc/login_bloc.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/domain/core/interfaces/I_auth_repositories.dart';
import 'package:twitter/domain/login_and_regis/login_regis_entities.dart';

import 'login_bloc_test.mocks.dart';

@GenerateMocks([IAuthRepositories])
void main() {
  late MockIAuthRepositories _authRepositories;
  late LoginBloc _loginBloc;
  setUp(() {
    _authRepositories = MockIAuthRepositories();
    _loginBloc = LoginBloc(_authRepositories);
  });

  group("Login Event ; submit ->", () {
    LoginRegisEntities loginEntitiesConstant = LoginRegisEntities.empty().copyWith(
      email: "lintang@gmail.com",
      password: "lintang",
    );
    blocTest<LoginBloc, LoginState>(
      'emits isShowError = true when LoginEvent.submit() is added. Because the entities still empty (all value invalid).',
      build: () {
        return _loginBloc;
      },
      act: (bloc) => bloc.add(LoginEvent.submit()),
      expect: () => <LoginState>[
        LoginState.initial().copyWith(isLoading: true),
        LoginState.initial().copyWith(isShowError: true),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits failureOrSucceedLogin because the LoginRegisEntites value is all valid. Repositories return right(unit) as its succeed passing data to firebase',
      seed: () => LoginState.initial().copyWith(
        loginEntities: loginEntitiesConstant,
      ),
      build: () {
        when(
          _authRepositories.loginManual(
            pwd: "lintang",
            email: "lintang@gmail.com",
          ),
        ).thenAnswer((_) async => right(unit));
        return _loginBloc;
      },
      act: (bloc) => bloc.add(LoginEvent.submit()),
      expect: () => <LoginState>[
        LoginState.initial().copyWith(
          isLoading: true,
          loginEntities: loginEntitiesConstant,
        ),
        LoginState.initial().copyWith(
          failureOrSucceedLogin: some(right(unit)),
          loginEntities: loginEntitiesConstant,
        ),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits failureOrSucceedLogin because the LoginRegisEntites value is all valid. Repositories return left(AppFailure.fromServerSide("failedVailure")) as its failed passing data to firebase',
      seed: () => LoginState.initial().copyWith(
        loginEntities: loginEntitiesConstant,
      ),
      build: () {
        when(
          _authRepositories.loginManual(
            pwd: "lintang",
            email: "lintang@gmail.com",
          ),
        ).thenAnswer(
          (_) async => left(
            AppFailure.fromServerSide("failedVailure"),
          ),
        );
        return _loginBloc;
      },
      act: (bloc) => bloc.add(LoginEvent.submit()),
      expect: () => <LoginState>[
        LoginState.initial().copyWith(
          isLoading: true,
          loginEntities: loginEntitiesConstant,
        ),
        LoginState.initial().copyWith(
          failureOrSucceedLogin: some(
            left(
              AppFailure.fromServerSide("failedVailure"),
            ),
          ),
          loginEntities: loginEntitiesConstant,
        ),
      ],
    );
  });

  group("Login Event ; loginWithSocial -> ", () {
    blocTest<LoginBloc, LoginState>(
      'emits failureOrSucceedLogin in LoginEvent.loginWithSocial(). Repositories return right(unit) as its succeed passing data to firebase',
      build: () {
        when(
          _authRepositories.loginWithSocial(),
        ).thenAnswer((_) async => right(unit));
        return _loginBloc;
      },
      act: (bloc) => bloc.add(LoginEvent.loginWithSocial()),
      expect: () => <LoginState>[
        LoginState.initial().copyWith(
          isLoading: true,
        ),
        LoginState.initial().copyWith(
          failureOrSucceedLogin: some(right(unit)),
        ),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits failureOrSucceedLogin in LoginEvent.loginWithSocial(). Repositories return left(AppFailure.fromServerSide("failedVailure")) as its failed passing data to firebase',
      build: () {
        when(
          _authRepositories.loginWithSocial(),
        ).thenAnswer(
          (_) async => left(
            AppFailure.fromServerSide(
              "failedVailure",
            ),
          ),
        );
        return _loginBloc;
      },
      act: (bloc) => bloc.add(LoginEvent.loginWithSocial()),
      expect: () => <LoginState>[
        LoginState.initial().copyWith(
          isLoading: true,
        ),
        LoginState.initial().copyWith(
          failureOrSucceedLogin: some(
            left(
              AppFailure.fromServerSide(
                "failedVailure",
              ),
            ),
          ),
        ),
      ],
    );
  });
}
