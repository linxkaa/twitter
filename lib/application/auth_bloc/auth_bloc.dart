import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/infrastructure/dtos/user_model.dart';
import 'package:twitter/infrastructure/repositories/auth_repositories.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepositories _authRepositories;
  AuthBloc(
    this._authRepositories,
  ) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.when(
      initial: () async* {
        Either<AppFailure, UserModel> response = await _authRepositories.checkUserLoggedIn();
        yield* response.fold((l) async* {
          yield state.unmodified.copyWith.model(status: AuthStatus.Unauthenticated);
        }, (r) async* {
          yield state.unmodified.copyWith(
              model: r.copyWith(
            status: AuthStatus.Authenticated,
          ));
        });
      },
      unauthenticated: () async* {
        yield state.unmodified.copyWith(isLoading: true);
        var response = await _authRepositories.signOut();
        await Future.delayed(Duration(seconds: 1));
        yield* response.fold((l) async* {}, (_) async* {
          yield state.unmodified.copyWith.model(status: AuthStatus.Unauthenticated);
        });
      },
    );
  }
}
