part of 'update_tweet_bloc.dart';

@freezed
class UpdateTweetState with _$UpdateTweetState {
  const UpdateTweetState._();
  const factory UpdateTweetState({
    required bool isLoading,
    required Option<String> isAnyError,
    required Option<Either<AppFailure, Unit>> failureOrSucceedTweet,
    required Option<Either<AppFailure, Unit>> failureOrSucceedDeleteTweet,
    required Option<Either<AppFailure, Unit>> failureOrSucceedUpdateTweet,
    required TweetModel mod,
  }) = _UpdateTweetState;

  factory UpdateTweetState.initial() => UpdateTweetState(
        isLoading: false,
        failureOrSucceedTweet: none(),
        isAnyError: none(),
        failureOrSucceedDeleteTweet: none(),
        failureOrSucceedUpdateTweet: none(),
        mod: TweetModel.empty(),
      );

  UpdateTweetState get unmodified => copyWith(
        isLoading: false,
        failureOrSucceedTweet: none(),
        isAnyError: none(),
        failureOrSucceedDeleteTweet: none(),
        failureOrSucceedUpdateTweet: none(),
      );
}
