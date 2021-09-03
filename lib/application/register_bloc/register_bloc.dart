import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/domain/login_and_regis/login_regis_entities.dart';
import 'package:twitter/infrastructure/repositories/auth_repositories.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepositories _repositories;
  late TextEditingController emailController;
  late TextEditingController pwdController;
  late TextEditingController repeatPwdController;
  late TextEditingController nameController;

  RegisterBloc(this._repositories) : super(RegisterState.initial()) {
    emailController = TextEditingController()
      ..addListener(
        () {
          add(RegisterEvent.inputEmail(emailController.text));
        },
      );

    pwdController = TextEditingController()
      ..addListener(
        () {
          add(RegisterEvent.inputPwd(pwdController.text));
        },
      );
    nameController = TextEditingController()
      ..addListener(
        () {
          add(RegisterEvent.inputName(nameController.text));
        },
      );
    repeatPwdController = TextEditingController()
      ..addListener(
        () {
          add(RegisterEvent.repeatPwd(repeatPwdController.text));
        },
      );
  }

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.when(
      submit: () async* {
        yield state.unmodified.copyWith(isLoading: true);

        if (state.regisEntities.failureRegisterOption.isNone()) {
          var response = await _repositories.registerManual(
            email: state.regisEntities.email,
            pwd: state.regisEntities.repeatedPassword,
            name: state.regisEntities.name,
          );

          yield state.unmodified.copyWith(failureOrSucceedRegister: optionOf(response));
        } else {
          yield state.unmodified.copyWith(isShowError: true);
        }
      },
      inputEmail: (email) async* {
        yield state.unmodified.copyWith(regisEntities: state.regisEntities.copyWith(email: email));
      },
      inputPwd: (pwd) async* {
        yield state.unmodified.copyWith(regisEntities: state.regisEntities.copyWith(password: pwd));
      },
      repeatPwd: (repeatPwd) async* {
        yield state.unmodified.copyWith(regisEntities: state.regisEntities.copyWith(repeatedPassword: repeatPwd));
      },
      inputName: (name) async* {
        yield state.unmodified.copyWith(regisEntities: state.regisEntities.copyWith(name: name));
      },
    );
  }
}
