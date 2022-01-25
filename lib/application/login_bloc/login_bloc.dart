import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/domain/core/interfaces/I_auth_repositories.dart';
import 'package:twitter/domain/login_and_regis/login_regis_entities.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepositories _repositories;

  late TextEditingController emailController;
  late TextEditingController pwdController;

  LoginBloc(this._repositories) : super(LoginState.initial()) {
    emailController = TextEditingController()
      ..addListener(
        () {
          add(LoginEvent.inputEmail(emailController.text));
        },
      );

    pwdController = TextEditingController()
      ..addListener(
        () {
          add(LoginEvent.inputPwd(pwdController.text));
        },
      );
  }

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.when(
      loginWithSocial: () async* {
        yield state.unmodified.copyWith(isLoading: true);
        var response = await _repositories.loginWithSocial();

        yield state.unmodified.copyWith(failureOrSucceedLogin: optionOf(response));
      },
      submit: () async* {
        yield state.unmodified.copyWith(isLoading: true);
        if (state.loginEntities.failureLoginOption.isNone()) {
          var response = await _repositories.loginManual(
            email: state.loginEntities.email,
            pwd: state.loginEntities.password,
          );

          yield state.unmodified.copyWith(failureOrSucceedLogin: optionOf(response));
        } else {
          yield state.unmodified.copyWith(isShowError: true);
        }
      },
      inputEmail: (val) async* {
        yield state.unmodified.copyWith(loginEntities: state.loginEntities.copyWith(email: val));
      },
      inputPwd: (val) async* {
        yield state.unmodified.copyWith(loginEntities: state.loginEntities.copyWith(password: val));
      },
    );
  }
}
