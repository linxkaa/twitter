import 'package:twitter/infrastructure/dtos/user_all_tweets_model.dart';

class TestConstant {
  static DateTime dateTime = DateTime.parse('20120227T132700');
  static TweetModel tweetModel = TweetModel(
    content: "Testing event",
    userId: "1234",
    timestamp: TestConstant.dateTime,
    uniqueId: "9823917ywiwey",
  );
  static UserAllTweetsModel userAllTweetsModel = UserAllTweetsModel(
    tweets: [TestConstant.tweetModel],
    name: "test",
    email: "test@gmail.com",
    profilePicture: "www.google.com",
  );
}
