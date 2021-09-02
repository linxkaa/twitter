import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter/application/auth_bloc/auth_bloc.dart';
import 'package:twitter/application/login_bloc/login_bloc.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';
import 'package:twitter/domain/core/injection/injection.dart';
import 'package:twitter/domain/core/router/router.gr.dart';
import 'package:twitter/presentation/widgets/twitter_button.dart';
import 'package:twitter/presentation/widgets/twitter_scaffold.dart';
import 'package:twitter/presentation/widgets/ui_helper.dart';

class LandingRegisterPage extends StatelessWidget {
  const LandingRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: Builder(
        builder: (
          context,
        ) {
          return BlocListener<AuthBloc, AuthState>(
            listener: (context, authState) {
              if (authState.isAuthenticated) {
                AutoRouter.of(context).pushAndPopUntil(MainRoute(), predicate: (route) => false);
              }
            },
            child: TwitterLoggedOutScaffold(
              needBackIcon: false,
              body: SingleChildScrollView(
                padding: UIHelper.padSymmetric(vertical: 20, horizontal: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UIHelper.verticalSpace(300),
                    Center(
                      child: Text(
                        "See what's happening in the world right now.",
                        style: Theme.of(context).textTheme.headline3!.copyWith(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    UIHelper.verticalSpace(300),
                    BlocConsumer<LoginBloc, LoginState>(
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
                        return TwitterButton(
                          isLoading: state.isLoading,
                          needIcon: true,
                          isBgBlue: false,
                          icon: "assets/image/google_logo.png",
                          isIconImage: true,
                          color: ColorConstant.primary,
                          width: double.infinity,
                          title: "Continue with Google",
                          onPressed: () {
                            context.read<LoginBloc>().add(LoginEvent.loginWithSocial());
                          },
                        );
                      },
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        UIHelper.divider(),
                        Container(
                          padding: UIHelper.padAll(10),
                          color: ColorConstant.whiteColor,
                          child: Text(
                            'Or',
                            style: Theme.of(context).textTheme.caption!.copyWith(
                                  color: ColorConstant.darkGrey,
                                ),
                          ),
                        ),
                      ],
                    ),
                    TwitterButton(
                      width: double.infinity,
                      title: "Create account",
                      onPressed: () {
                        AutoRouter.of(context).push(RegisterRoute());
                      },
                    ),
                    UIHelper.verticalSpace(30),
                    Text.rich(
                      TextSpan(
                        style: Theme.of(context).textTheme.caption!.copyWith(
                              color: ColorConstant.darkGrey,
                            ),
                        children: [
                          TextSpan(text: "By signing up, you agree to our "),
                          TextSpan(
                            text: "Term, Privacy Policy, ",
                            style: Theme.of(context).textTheme.caption!.copyWith(color: ColorConstant.primary),
                          ),
                          TextSpan(text: "and "),
                          TextSpan(
                            text: "Cookie use. ",
                            style: Theme.of(context).textTheme.caption!.copyWith(color: ColorConstant.primary),
                          ),
                        ],
                      ),
                    ),
                    UIHelper.verticalSpace(100),
                    Text.rich(
                      TextSpan(
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: ColorConstant.darkGrey,
                            ),
                        children: [
                          TextSpan(text: "Have an account already? "),
                          TextSpan(
                            text: "Log in",
                            style: TextStyle(
                              color: ColorConstant.primary,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                AutoRouter.of(context).push(LoginRoute());
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
