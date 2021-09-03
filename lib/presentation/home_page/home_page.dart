import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twitter/application/auth_bloc/auth_bloc.dart';
import 'package:twitter/application/tweets_bloc/tweets_bloc.dart';
import 'package:twitter/application/update_tweet/update_tweet_bloc.dart';
import 'package:twitter/domain/core/constant/color_constant.dart';
import 'package:twitter/domain/core/constant/variable_constant.dart';
import 'package:twitter/domain/core/utils/date_utils.dart';
import 'package:twitter/domain/core/injection/injection.dart';
import 'package:twitter/infrastructure/dtos/user_all_tweets_model.dart';
import 'package:twitter/presentation/widgets/adding_tweet_dialog.dart';
import 'package:twitter/presentation/widgets/shimmer_loading.dart';
import 'package:twitter/presentation/widgets/show_dialog_costum.dart';
import 'package:twitter/presentation/widgets/twitter_scaffold.dart';
import 'package:twitter/presentation/widgets/ui_helper.dart';

part 'widgets/tweet_card_widget.dart';
part 'widgets/loading_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TweetsBloc>()..add(TweetsEvent.initial(context.read<AuthBloc>().state.model.token)),
      child: Builder(builder: (context) {
        return TwitterLoggedOutScaffold(
          needBackIcon: false,
          body: BlocBuilder<TweetsBloc, TweetsState>(
            builder: (context, state) {
              if (state.isLoading || (state == TweetsState.initial())) {
                return _LoadingWidgetHomePage();
              } else if (state.mod.tweets.isNotEmpty) {
                return SingleChildScrollView(
                  child: _TweetCardWidget(
                    mod: state.mod,
                  ),
                );
              } else {
                return Stack(
                  children: [
                    EmptyTemplate(
                        emptyText: "You have no tweets currently, start tweeting your day by pressing button below"),
                    Positioned(
                      bottom: UIHelper.mediaHeight(context, 0.12),
                      right: UIHelper.mediaWidth(context, 0.2),
                      child: Transform(
                        child: Image.asset(
                          "assets/image/arrow.png",
                          color: ColorConstant.primary,
                          width: UIHelper.mediaWidth(context, 0.4),
                        ),
                        alignment: FractionalOffset.center,
                        transform: new Matrix4.identity()..rotateZ(139.8),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        );
      }),
    );
  }
}
