import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter/application/auth_bloc/auth_bloc.dart';
import 'package:twitter/application/register_bloc/register_bloc.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';
import 'package:twitter/domain/core/injection/injection.dart';
import 'package:twitter/domain/core/router/router.gr.dart';
import 'package:twitter/presentation/widgets/twitter_button.dart';
import 'package:twitter/presentation/widgets/twitter_scaffold.dart';
import 'package:twitter/presentation/widgets/twitter_text_form_field.dart';
import 'package:twitter/presentation/widgets/ui_helper.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegisterBloc>(),
      child: Builder(builder: (context) {
        return BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.isAuthenticated) {
              AutoRouter.of(context).replace(MainRoute());
            }
          },
          child: TwitterLoggedOutScaffold(
            body: Padding(
              padding: UIHelper.padSymmetric(vertical: 20, horizontal: 40),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: BlocConsumer<RegisterBloc, RegisterState>(
                        listener: (context, state) {
                          state.failureOrSucceedRegister.fold(
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
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UIHelper.verticalSpace(70),
                              Center(
                                child: Text(
                                  "Create your account",
                                  style: Theme.of(context).textTheme.headline5!.copyWith(),
                                ),
                              ),
                              UIHelper.verticalSpace(40),
                              TwitterTextFormField(
                                controller: context.read<RegisterBloc>().nameController,
                                validator: (_) => state.isShowNameError,
                                hintText: "name",
                              ),
                              UIHelper.verticalSpace(30),
                              TwitterTextFormField(
                                controller: context.read<RegisterBloc>().emailController,
                                validator: (_) => state.isShowEmailError,
                                hintText: "email",
                                keyboardType: TextInputType.emailAddress,
                              ),
                              UIHelper.verticalSpace(30),
                              TwitterTextFormField(
                                controller: context.read<RegisterBloc>().pwdController,
                                validator: (_) => state.isShowPwdError,
                                hintText: "password",
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                              ),
                              UIHelper.verticalSpace(30),
                              TwitterTextFormField(
                                controller: context.read<RegisterBloc>().repeatPwdController,
                                validator: (_) => state.isShowRepeatedPwdError,
                                hintText: "repeat password",
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                              ),
                              UIHelper.verticalSpace(60),
                              Text.rich(
                                TextSpan(
                                  style: Theme.of(context).textTheme.caption!.copyWith(
                                        color: ColorConstant.darkGrey,
                                      ),
                                  children: [
                                    TextSpan(text: "By signing up, you agree to our "),
                                    TextSpan(
                                      text: "Term, Privacy Policy, ",
                                      style:
                                          Theme.of(context).textTheme.caption!.copyWith(color: ColorConstant.primary),
                                    ),
                                    TextSpan(text: "and "),
                                    TextSpan(
                                      text: "Cookie use. ",
                                      style:
                                          Theme.of(context).textTheme.caption!.copyWith(color: ColorConstant.primary),
                                    ),
                                    TextSpan(
                                        text:
                                            "Others will be able to find you by email or phone number when provided."),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  UIHelper.verticalSpace(40),
                  BlocBuilder<RegisterBloc, RegisterState>(
                    builder: (context, state) {
                      return TwitterButton(
                        isLoading: state.isLoading,
                        width: double.infinity,
                        title: "Sign Up",
                        onPressed: () {
                          context.read<RegisterBloc>().add(RegisterEvent.submit());
                        },
                      );
                    },
                  ),
                  UIHelper.verticalSpace(40),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
