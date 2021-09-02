import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter/application/auth_bloc/auth_bloc.dart';
import 'package:twitter/application/login_bloc/login_bloc.dart';
import 'package:twitter/domain/core/injection/injection.dart';
import 'package:twitter/domain/core/router/router.gr.dart';
import 'package:twitter/presentation/widgets/twitter_button.dart';
import 'package:twitter/presentation/widgets/twitter_scaffold.dart';
import 'package:twitter/presentation/widgets/twitter_text_form_field.dart';
import 'package:twitter/presentation/widgets/ui_helper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: Builder(
        builder: (context) {
          return BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              state.failureOrSucceedLogin.fold(
                () => null,
                (failureOrSucceed) => failureOrSucceed.fold(
                  (failure) => UIHelper.showToast(
                    failure.maybeWhen(
                      orElse: () => "",
                      fromServerSide: (failedMsg) => failedMsg,
                    ),
                  ),
                  (_) => context.read<AuthBloc>().add(AuthEvent.initial()),
                ),
              );
            },
            builder: (context, state) {
              return TwitterLoggedOutScaffold(
                body: Padding(
                  padding: UIHelper.padSymmetric(vertical: 20, horizontal: 40),
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UIHelper.verticalSpace(70),
                              Center(
                                child: Text(
                                  "Log in to your account",
                                  style: Theme.of(context).textTheme.headline5!.copyWith(),
                                ),
                              ),
                              UIHelper.verticalSpace(40),
                              TwitterTextFormField(
                                controller: context.read<LoginBloc>().emailController,
                                validator: (_) => state.isShowEmailError,
                                hintText: "email",
                                keyboardType: TextInputType.emailAddress,
                              ),
                              UIHelper.verticalSpace(30),
                              TwitterTextFormField(
                                obscureText: true,
                                controller: context.read<LoginBloc>().pwdController,
                                validator: (_) => state.isShowPwdError,
                                hintText: "password",
                                keyboardType: TextInputType.visiblePassword,
                              ),
                            ],
                          ),
                        ),
                      ),
                      UIHelper.verticalSpace(40),
                      BlocListener<AuthBloc, AuthState>(
                        listener: (context, authState) {
                          if (authState.isAuthenticated) {
                            AutoRouter.of(context).pushAndPopUntil(MainRoute(), predicate: (route) => false);
                          }
                        },
                        child: TwitterButton(
                          isLoading: state.isLoading,
                          width: double.infinity,
                          title: "Log in",
                          onPressed: () {
                            context.read<LoginBloc>().add(LoginEvent.submit());
                          },
                        ),
                      ),
                      UIHelper.verticalSpace(40),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
