import 'package:dartz/dartz.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/infrastructure/dtos/user_all_tweets_model.dart';

abstract class ITweetRepositories {
  Future<Either<AppFailure, Unit>> updateTweet({
    required TweetModel newMod,
    required TweetModel oldMod,
  });

  Future<Either<AppFailure, Unit>> deleteTweedByUniqueId({
    required TweetModel mod,
  });

  Future<Either<AppFailure, Unit>> sendNewTweets({
    required String userId,
    required String name,
    required String email,
    required String profilePicture,
    required TweetModel mod,
  });

  Stream<UserAllTweetsModel> getUserTweets({required String userId});
}
