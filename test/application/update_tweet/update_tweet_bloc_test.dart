import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitter/application/update_tweet/update_tweet_bloc.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/domain/core/interfaces/i_tweet_repositories.dart';

import '../../domain/core/constant/test_constant.dart';
import 'update_tweet_bloc_test.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<ITweetRepositories>(returnNullOnMissingStub: true)])
void main() {
  late MockITweetRepositories _tweetRepositories;
  late UpdateTweetBloc _updateTweetBloc;
  setUp(() {
    _tweetRepositories = MockITweetRepositories();
    _updateTweetBloc = UpdateTweetBloc(_tweetRepositories);
  });

  group("Update Tweet Event - initial -> ", () {
    blocTest<UpdateTweetBloc, UpdateTweetState>(
      'emits with TweetModel is NOT null when UpdateTweetEvent.initial() is added.',
      build: () => _updateTweetBloc,
      act: (bloc) => bloc.add(
        UpdateTweetEvent.initial(
          TestConstant.tweetModel,
        ),
      ),
      expect: () => <UpdateTweetState>[
        UpdateTweetState.initial().copyWith(
          mod: TestConstant.tweetModel,
        ),
      ],
    );
  });

  group("Update Tweet Event - deleteTweet -> ", () {
    blocTest<UpdateTweetBloc, UpdateTweetState>(
      'emits failureOrSucceedUpdateTweet when UpdateTweetEvent.deleteTweet(mod) is added. Repositories return unit as in succeed passing data to Firebase.',
      build: () {
        when(
          _tweetRepositories.deleteTweedByUniqueId(mod: TestConstant.tweetModel),
        ).thenAnswer(
          (_) async => right(unit),
        );
        return _updateTweetBloc;
      },
      act: (bloc) => bloc.add(
        UpdateTweetEvent.deleteTweet(
          TestConstant.tweetModel,
        ),
      ),
      expect: () => <UpdateTweetState>[
        UpdateTweetState.initial().copyWith(
          isLoading: true,
          failureOrSucceedDeleteTweet: none(),
        ),
        UpdateTweetState.initial().copyWith(
          failureOrSucceedDeleteTweet: some(
            right(unit),
          ),
        ),
      ],
    );

    blocTest<UpdateTweetBloc, UpdateTweetState>(
      'emits failureOrSucceedUpdateTweet when UpdateTweetEvent.deleteTweet(mod) is added. Repositories return AppFailure as in failed while passing data to Firebase.',
      build: () {
        when(
          _tweetRepositories.deleteTweedByUniqueId(
            mod: TestConstant.tweetModel,
          ),
        ).thenAnswer(
          (_) async => left(AppFailure.fromServerSide("failedVailure")),
        );
        return _updateTweetBloc;
      },
      act: (bloc) => bloc.add(
        UpdateTweetEvent.deleteTweet(
          TestConstant.tweetModel,
        ),
      ),
      expect: () => <UpdateTweetState>[
        UpdateTweetState.initial().copyWith(
          isLoading: true,
          failureOrSucceedDeleteTweet: none(),
        ),
        UpdateTweetState.initial().copyWith(
          failureOrSucceedDeleteTweet: some(
            left(AppFailure.fromServerSide("failedVailure")),
          ),
        ),
      ],
    );
  });

  group("Update Tweet Event - UpdateTweet -> ", () {
    blocTest<UpdateTweetBloc, UpdateTweetState>(
      'emits isAnyError when UpdateTweetEvent.updateTweet(mod) is added. state return isAnyError: some("tweet cannot be empty") if tweet controller is Empty',
      build: () {
        return _updateTweetBloc..tweetController.text = "";
      },
      act: (bloc) => bloc.add(
        UpdateTweetEvent.updateTweet(),
      ),
      expect: () => <UpdateTweetState>[
        UpdateTweetState.initial().copyWith(
          isLoading: true,
          isAnyError: none(),
        ),
        UpdateTweetState.initial().copyWith(
          isAnyError: some("tweet cannot be empty"),
        ),
      ],
    );

    blocTest<UpdateTweetBloc, UpdateTweetState>(
      'emits failureOrSucceedUpdateTweet when UpdateTweetEvent.updateTweet(mod) is added. Repositories return right(unit) as its succeed when passing data to firebase.',
      build: () {
        when(
          _tweetRepositories.updateTweet(
            newMod: captureThat(isNotNull, named: 'newMod'),
            oldMod: captureThat(isNotNull, named: 'oldMod'),
          ),
        ).thenAnswer((_) async => right(unit));
        return _updateTweetBloc..tweetController.text = "test";
      },
      act: (bloc) => bloc.add(
        UpdateTweetEvent.updateTweet(),
      ),
      expect: () => <UpdateTweetState>[
        UpdateTweetState.initial().copyWith(
          isLoading: true,
          failureOrSucceedUpdateTweet: none(),
        ),
        UpdateTweetState.initial().copyWith(
          failureOrSucceedUpdateTweet: some(right(unit)),
        ),
      ],
    );

    blocTest<UpdateTweetBloc, UpdateTweetState>(
      'emits failureOrSucceedUpdateTweet when UpdateTweetEvent.updateTweet(mod) is added. Repositories return AppFailure.fromServerSide("failedVailure") as its failed when passing data to firebase.',
      build: () {
        when(
          _tweetRepositories.updateTweet(
            newMod: captureThat(isNotNull, named: 'newMod'),
            oldMod: captureThat(isNotNull, named: 'oldMod'),
          ),
        ).thenAnswer(
          (_) async => left(
            AppFailure.fromServerSide("failedVailure"),
          ),
        );
        return _updateTweetBloc..tweetController.text = "test";
      },
      act: (bloc) => bloc.add(
        UpdateTweetEvent.updateTweet(),
      ),
      expect: () => <UpdateTweetState>[
        UpdateTweetState.initial().copyWith(
          isLoading: true,
          failureOrSucceedUpdateTweet: none(),
        ),
        UpdateTweetState.initial().copyWith(
          failureOrSucceedUpdateTweet: some(
            left(
              AppFailure.fromServerSide("failedVailure"),
            ),
          ),
        ),
      ],
    );
  });

  group("Update Tweet Event - uploadNewTweets -> ", () {
    blocTest<UpdateTweetBloc, UpdateTweetState>(
      'emits failureOrSucceedTweet when UpdateTweetEvent.uploadNewTweets(mod) is added. Repositories return right(unit) as its succeed when passing data to firebase.',
      build: () {
        // var mod = TweetModel(
        //   content: "test",
        //   userId: "1234",
        //   timestamp: DateTime.parse(
        //     '20120227T132700',
        //   ),
        //   uniqueId: "2222",
        // );
        when(
          _tweetRepositories.sendNewTweets(
            email: "lintang@gmail.com",
            userId: "1234",
            name: "lintang",
            profilePicture: "www.google.com",
            mod: captureThat(isNotNull, named: 'mod'),
          ),
        ).thenAnswer((_) async => right(unit));
        return _updateTweetBloc..tweetController.text = "test";
      },
      act: (bloc) => bloc.add(
        UpdateTweetEvent.uploadNewTweets(
          email: "lintang@gmail.com",
          userId: "1234",
          name: "lintang",
          profilePicture: "www.google.com",
        ),
      ),
      expect: () => <UpdateTweetState>[
        UpdateTweetState.initial().copyWith(
          isLoading: true,
          failureOrSucceedTweet: none(),
        ),
        UpdateTweetState.initial().copyWith(
          failureOrSucceedTweet: some(
            right(unit),
          ),
        ),
      ],
    );

    blocTest<UpdateTweetBloc, UpdateTweetState>(
      'emits failureOrSucceedTweet when UpdateTweetEvent.uploadNewTweets(mod) is added. Repositories return left(AppFailure.fromServerSide("failedVailure")) as its failed when passing data to firebase.',
      build: () {
        when(
          _tweetRepositories.sendNewTweets(
            email: "lintang@gmail.com",
            userId: "1234",
            name: "lintang",
            profilePicture: "www.google.com",
            mod: captureThat(isNotNull, named: 'mod'),
          ),
        ).thenAnswer(
          (_) async => left(
            AppFailure.fromServerSide("failedVailure"),
          ),
        );
        return _updateTweetBloc..tweetController.text = "test";
      },
      act: (bloc) => bloc.add(
        UpdateTweetEvent.uploadNewTweets(
          email: "lintang@gmail.com",
          userId: "1234",
          name: "lintang",
          profilePicture: "www.google.com",
        ),
      ),
      expect: () => <UpdateTweetState>[
        UpdateTweetState.initial().copyWith(
          isLoading: true,
          failureOrSucceedTweet: none(),
        ),
        UpdateTweetState.initial().copyWith(
          failureOrSucceedTweet: some(
            left(
              AppFailure.fromServerSide("failedVailure"),
            ),
          ),
        ),
      ],
    );

    blocTest<UpdateTweetBloc, UpdateTweetState>(
      'emits isAnyError when UpdateTweetEvent.uploadNewTweets(mod) is added. State return isAnyError: some("tweet cannot be empty") as the textController is Empty.',
      build: () {
        return _updateTweetBloc..tweetController.text = "";
      },
      act: (bloc) => bloc.add(
        UpdateTweetEvent.uploadNewTweets(
          email: "lintang@gmail.com",
          userId: "1234",
          name: "lintang",
          profilePicture: "www.google.com",
        ),
      ),
      expect: () => <UpdateTweetState>[
        UpdateTweetState.initial().copyWith(
          isLoading: true,
          isAnyError: none(),
        ),
        UpdateTweetState.initial().copyWith(
          isAnyError: some("tweet cannot be empty"),
        ),
      ],
    );
  });
}
