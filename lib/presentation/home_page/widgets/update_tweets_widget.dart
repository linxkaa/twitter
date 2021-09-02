part of '../home_page.dart';

class UpdateNewTweetsWidget extends StatelessWidget {
  final TweetModel mod;

  UpdateNewTweetsWidget(this.mod);
  @override
  Widget build(BuildContext context) {
    var userId = context.read<AuthBloc>().state.model.token;
    return Material(
      color: Colors.black26,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<UpdateTweetBloc>()..add(UpdateTweetEvent.initial(mod)),
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
                if (state.isInputError.isNotEmpty) {
                  UIHelper.showToast(state.isInputError);
                } else {
                  state.failureOrSucceedUpdateTweet.fold(
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
                  );
                }
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
                                        title: "save",
                                        onPressed: () {
                                          if (context.read<UpdateTweetBloc>().tweetController.text.isEmpty) {
                                            UIHelper.showToast("Tweet cannot be empty");
                                          } else {
                                            context.read<UpdateTweetBloc>().add(
                                                  UpdateTweetEvent.updateTweet(),
                                                );
                                          }
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
