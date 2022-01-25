import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitter/application/register_bloc/register_bloc.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/domain/core/interfaces/I_auth_repositories.dart';
import 'package:twitter/domain/login_and_regis/login_regis_entities.dart';
import 'package:twitter/infrastructure/repositories/auth_repositories.dart';

import 'register_bloc_test.mocks.dart';

@GenerateMocks([IAuthRepositories])
void main() {
  late MockIAuthRepositories _authRepositories;
  late RegisterBloc _registerBloc;
  setUp(() {
    _authRepositories = MockIAuthRepositories();
    _registerBloc = RegisterBloc(_authRepositories);
  });

  group(
    "Register Event ; submit ->",
    () {
      LoginRegisEntities regisEntitiesConstant = LoginRegisEntities(
        repeatedPassword: "lintang",
        email: "lintang@gmail.com",
        password: "lintang",
        name: "Lintang Kusuma",
      );
      blocTest<RegisterBloc, RegisterState>(
        'emits isShowError = true when RegisterEvent.submit() is added. Because the entities still empty (all value invalid).',
        build: () {
          return _registerBloc;
        },
        act: (bloc) => bloc.add(RegisterEvent.submit()),
        expect: () => <RegisterState>[
          RegisterState.initial().copyWith(isLoading: true),
          RegisterState.initial().copyWith(isShowError: true),
        ],
      );

      blocTest<RegisterBloc, RegisterState>(
        'emits failureOrSucceedRegister because the LoginRegisEntites value is all valid. Repositories return right(unit) as its succeed passing data to firebase',
        seed: () => RegisterState.initial().copyWith(
          regisEntities: regisEntitiesConstant,
        ),
        build: () {
          when(
            _authRepositories.registerManual(
              name: "Lintang Kusuma",
              pwd: "lintang",
              email: "lintang@gmail.com",
            ),
          ).thenAnswer((_) async => right(unit));
          return _registerBloc;
        },
        act: (bloc) => bloc.add(RegisterEvent.submit()),
        expect: () => <RegisterState>[
          RegisterState.initial().copyWith(
            isLoading: true,
            regisEntities: regisEntitiesConstant,
          ),
          RegisterState.initial().copyWith(
            failureOrSucceedRegister: some(right(unit)),
            regisEntities: regisEntitiesConstant,
          ),
        ],
      );

      blocTest<RegisterBloc, RegisterState>(
        'emits failureOrSucceedRegister because the LoginRegisEntites value is all valid. Repositories return left(AppFailure.fromServerSide("failedVailure")) as its failed passing data to firebase',
        seed: () => RegisterState.initial().copyWith(
          regisEntities: regisEntitiesConstant,
        ),
        build: () {
          when(
            _authRepositories.registerManual(
              name: "Lintang Kusuma",
              pwd: "lintang",
              email: "lintang@gmail.com",
            ),
          ).thenAnswer(
            (_) async => left(
              AppFailure.fromServerSide("failedVailure"),
            ),
          );
          return _registerBloc;
        },
        act: (bloc) => bloc.add(RegisterEvent.submit()),
        expect: () => <RegisterState>[
          RegisterState.initial().copyWith(
            isLoading: true,
            regisEntities: regisEntitiesConstant,
          ),
          RegisterState.initial().copyWith(
            failureOrSucceedRegister: some(
              left(
                AppFailure.fromServerSide("failedVailure"),
              ),
            ),
            regisEntities: regisEntitiesConstant,
          ),
        ],
      );
    },
  );
}
