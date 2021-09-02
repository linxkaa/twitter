part of '../home_page.dart';

class _TweetCardWidget extends StatelessWidget {
  final UserAllTweetsModel mod;
  const _TweetCardWidget({
    Key? key,
    required this.mod,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpdateTweetBloc>(),
      child: Builder(
        builder: (context) {
          return Column(
            children: mod.tweets
                .map<Widget>(
                  (tweet) => Padding(
                    padding: UIHelper.padAll(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(UIHelper.setSp(100)),
                          child: Container(
                            width: UIHelper.setSp(150),
                            height: UIHelper.setSp(150),
                            color: ColorConstant.grey,
                            child: Image.network(
                              mod.profilePicture,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        UIHelper.horizontalSpace(20),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      style: Theme.of(context).textTheme.caption!.copyWith(
                                            color: ColorConstant.darkGrey,
                                          ),
                                      children: [
                                        TextSpan(
                                          text: "${mod.name}\n",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: ColorConstant.black,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "${mod.email} ",
                                        )
                                      ],
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  PopupMenuButton<TweetOption>(
                                    iconSize: UIHelper.setSp(40),
                                    onSelected: (TweetOption result) async {
                                      if (VarConst.isEditOption(result)) {
                                        await showDialogCostum(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return UpdateNewTweetsWidget(tweet);
                                            },
                                            useRootNavigator: true);
                                      } else {
                                        context.read<UpdateTweetBloc>().add(UpdateTweetEvent.deleteTweet(tweet));
                                      }
                                    },
                                    itemBuilder: (BuildContext context) => <PopupMenuEntry<TweetOption>>[
                                      PopupMenuItem<TweetOption>(
                                        value: TweetOption.Edit,
                                        child: Text(
                                          'edit tweet',
                                          style: Theme.of(context).textTheme.caption!.copyWith(),
                                        ),
                                      ),
                                      PopupMenuItem<TweetOption>(
                                        value: TweetOption.Delete,
                                        child: Text('delete tweet',
                                            style: Theme.of(context).textTheme.caption!.copyWith()),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                "${tweet.content.replaceAll("\n", " ")}",
                                style: Theme.of(context).textTheme.caption!.copyWith(),
                              ),
                              UIHelper.verticalSpace(20),
                              Text(
                                "${DateUtility.formatHoursAndDay(tweet.timestamp)}",
                                style: Theme.of(context).textTheme.caption!.copyWith(
                                      color: ColorConstant.darkGrey,
                                    ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
