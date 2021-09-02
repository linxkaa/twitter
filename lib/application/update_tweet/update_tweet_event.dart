part of 'update_tweet_bloc.dart';

@freezed
class UpdateTweetEvent with _$UpdateTweetEvent {
  const factory UpdateTweetEvent.uploadNewTweets({
    required String userId,
    required String name,
    required String email,
    required String profilePicture,
  }) = _UpdateTweetEventuploadNewTweets;
  const factory UpdateTweetEvent.initial(TweetModel mod) = _UpdateTweetEvent;
  const factory UpdateTweetEvent.deleteTweet(TweetModel mod) = _UpdateTweetEventdeleteTweet;
  const factory UpdateTweetEvent.updateTweet() = _UpdateTweetEventupdateTweet;
}
