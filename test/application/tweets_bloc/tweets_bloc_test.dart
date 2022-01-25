import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitter/application/tweets_bloc/tweets_bloc.dart';
import 'package:twitter/domain/core/interfaces/i_tweet_repositories.dart';
import 'dart:async';

import '../../domain/core/constant/test_constant.dart';
import 'tweets_bloc_test.mocks.dart';

@GenerateMocks([ITweetRepositories])
void main() {
  group("Tweets Bloc Event -> initial ", () {
    TestWidgetsFlutterBinding.ensureInitialized();

    late MockITweetRepositories _tweetRepositories;
    late TweetsBloc _tweetsBloc;
    setUp(() {
      _tweetRepositories = MockITweetRepositories();
      _tweetsBloc = TweetsBloc(_tweetRepositories);
    });

    blocTest<TweetsBloc, TweetsState>(
      'emits List<TweetModel> when TweetsEvent.initial("1234") is added.',
      wait: Duration(seconds: 2),
      build: () {
        when(_tweetRepositories.getUserTweets(userId: "1234")).thenAnswer(
          (_) => Stream.value(TestConstant.userAllTweetsModel),
        );
        return _tweetsBloc;
      },
      act: (bloc) => bloc.add(TweetsEvent.initial("1234")),
      expect: () => <TweetsState>[
        TweetsState.initial().copyWith(
          isLoading: true,
        ),
        TweetsState.initial().copyWith(
          mod: TestConstant.userAllTweetsModel,
        ),
      ],
    );

    blocTest<TweetsBloc, TweetsState>(
      'emits UserAllTweetModel when TweetsEvent.newTweetsStreamed(userAllTweetsModel) is added.',
      build: () {
        return _tweetsBloc;
      },
      act: (bloc) => bloc.add(TweetsEvent.newTweetsStreamed(TestConstant.userAllTweetsModel)),
      expect: () => <TweetsState>[
        TweetsState.initial().copyWith(
          mod: TestConstant.userAllTweetsModel,
        ),
      ],
    );
  });
}
