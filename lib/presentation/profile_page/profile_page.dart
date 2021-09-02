import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter/application/auth_bloc/auth_bloc.dart';
import 'package:twitter/application/profile_bloc/profile_bloc.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';
import 'package:twitter/domain/core/injection/injection.dart';
import 'package:twitter/domain/core/router/router.gr.dart';
import 'package:twitter/presentation/widgets/shimmer_loading.dart';
import 'package:twitter/presentation/widgets/twitter_button.dart';
import 'package:twitter/presentation/widgets/ui_helper.dart';

part 'widgets/loading_profile_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>()
        ..add(
          ProfileEvent.getUserProfile(
            context.read<AuthBloc>().state.model.token,
          ),
        ),
      child: Builder(builder: (context) {
        return BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return Scaffold(
              body: BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (!state.isAuthenticated) {
                    AutoRouter.of(context).pushAndPopUntil(
                      LandingRegisterRoute(),
                      predicate: (route) => false,
                    );
                  }
                },
                builder: (context, authState) {
                  return BlocBuilder<ProfileBloc, ProfileState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return _LoadingProfilePageWidget();
                      }
                      return Stack(
                        children: [
                          Container(),
                          Image.network(state.firebaseModel.bgImage),
                          Positioned(
                            top: UIHelper.setSp(500),
                            child: Container(
                              width: UIHelper.mediaWidth(context, 1),
                              padding: UIHelper.padSymmetric(horizontal: 20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: UIHelper.padAll(10),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteColor,
                                          borderRadius: BorderRadius.circular(UIHelper.setSp(100)),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(UIHelper.setSp(100)),
                                          child: Image.network(
                                            state.firebaseModel.profilePicture,
                                            fit: BoxFit.cover,
                                            width: UIHelper.setSp(200),
                                            height: UIHelper.setSp(200),
                                          ),
                                        ),
                                      ),
                                      UIHelper.verticalSpace(20),
                                      Text(state.firebaseModel.name),
                                      UIHelper.verticalSpace(30),
                                      Text(
                                        state.firebaseModel.email,
                                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                              color: ColorConstant.grey,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      UIHelper.verticalSpace(120),
                                      TwitterButton(
                                          isLoading: authState.isLoading,
                                          width: UIHelper.setSp(250),
                                          title: "Log out",
                                          onPressed: () {
                                            context.read<AuthBloc>().add(AuthEvent.unauthenticated());
                                          }),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            );
          },
        );
      }),
    );
  }
}
