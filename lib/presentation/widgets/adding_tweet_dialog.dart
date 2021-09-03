import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as dartZ;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter/application/auth_bloc/auth_bloc.dart';
import 'package:twitter/application/profile_bloc/profile_bloc.dart';
import 'package:twitter/application/update_tweet/update_tweet_bloc.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';
import 'package:twitter/domain/core/injection/injection.dart';
import 'package:twitter/infrastructure/dtos/user_all_tweets_model.dart';
import 'package:twitter/presentation/widgets/twitter_button.dart';
import 'package:twitter/presentation/widgets/twitter_text_form_field.dart';
import 'package:twitter/presentation/widgets/ui_helper.dart';

class AddingTweetDialog extends StatelessWidget {
  final TweetModel? mod;
  AddingTweetDialog({this.mod});
  @override
  Widget build(BuildContext context) {
    var userId = context.read<AuthBloc>().state.model.token;
    return Material(
      color: Colors.black26,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) {
              return dartZ.optionOf(mod).fold(
                    () => getIt<UpdateTweetBloc>(),
                    (modIsNotNull) => getIt<UpdateTweetBloc>()
                      ..add(
                        UpdateTweetEvent.initial(mod),
                      ),
                  );
            },
          ),
          BlocProvider(
            create: (context) => getIt<ProfileBloc>()
              ..add(
                ProfileEvent.getUserProfile(
                  userId,
                ),
              ),
          )
        ],
        child: Builder(
          builder: (context) {
            return BlocListener<UpdateTweetBloc, UpdateTweetState>(
              listener: (context, state) {
                state.isAnyError.fold(
                  () => dartZ.optionOf(mod).fold(
                        () => state.failureOrSucceedTweet.fold(
                          () => null,
                          (failureOrSucceed) => failureOrSucceed.fold(
                            (failure) => UIHelper.showToast(
                              failure.maybeWhen(
                                orElse: () => "",
                                fromServerSide: (failedMsg) => failedMsg,
                              ),
                            ),
                            (_) => AutoRouter.of(context).pop(),
                          ),
                        ),
                        (modIsNotNull) => state.failureOrSucceedUpdateTweet.fold(
                          () => null,
                          (failureOrSucceed) => failureOrSucceed.fold(
                            (failure) => UIHelper.showToast(
                              failure.maybeWhen(
                                orElse: () => "",
                                fromServerSide: (failedMsg) => failedMsg,
                              ),
                            ),
                            (_) => AutoRouter.of(context).pop(),
                          ),
                        ),
                      ),
                  (errorMsg) => UIHelper.showToast(errorMsg),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: MediaQuery.of(context).viewInsets,
                    padding: UIHelper.padSymmetric(horizontal: 30),
                    child: Container(
                      padding: UIHelper.padAll(30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(UIHelper.setSp(25)),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  onTap: () => AutoRouter.of(context).pop(),
                                  child: Text(
                                    "  close",
                                    style: Theme.of(context).textTheme.caption!.copyWith(
                                          color: ColorConstant.darkGrey,
                                        ),
                                  )),
                              BlocBuilder<ProfileBloc, ProfileState>(
                                builder: (context, profileState) {
                                  if (profileState.isLoading) {
                                    return SizedBox.shrink();
                                  }
                                  return BlocBuilder<UpdateTweetBloc, UpdateTweetState>(
                                    builder: (context, state) {
                                      return TwitterButton(
                                        isLoading: state.isLoading,
                                        width: UIHelper.mediaWidth(context, 0.2),
                                        title: dartZ.optionOf(mod).fold(
                                              () => "tweet",
                                              (modIsNotNull) => "save",
                                            ),
                                        onPressed: () {
                                          dartZ.optionOf(mod).fold(
                                                () => context.read<UpdateTweetBloc>().add(
                                                      UpdateTweetEvent.uploadNewTweets(
                                                        userId: userId,
                                                        email: profileState.firebaseModel.email,
                                                        name: profileState.firebaseModel.name,
                                                        profilePicture: profileState.firebaseModel.profilePicture,
                                                      ),
                                                    ),
                                                (modIsNotNull) => context.read<UpdateTweetBloc>().add(
                                                      UpdateTweetEvent.updateTweet(),
                                                    ),
                                              );
                                        },
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                          UIHelper.verticalSpace(30),
                          TwitterTextFormField(
                            underLineBorder: false,
                            controller: context.read<UpdateTweetBloc>().tweetController,
                            maxLength: 280,
                            maxLines: 5,
                            keyboardType: TextInputType.multiline,
                            hintText: "Start telling your days by tweeting!",
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
