import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/infrastructure/data_sources/firebase_data_sources.dart';
import 'package:twitter/infrastructure/dtos/user_all_tweets_model.dart';

@injectable
class TweeetRepositories {
  final FirebaseDataSource _firebaseDataSource;
  TweeetRepositories(this._firebaseDataSource);

  Stream<UserAllTweetsModel> getUserTweets({required String userId}) {
    return _firebaseDataSource.getUserTweets(userId: userId);
  }

  Future<Either<AppFailure, Unit>> sendNewTweets({
    required String userId,
    required String name,
    required String email,
    required String profilePicture,
    required TweetModel mod,
  }) async {
    try {
      await _firebaseDataSource.sendTweet(
        userId: userId,
        name: name,
        profilePicture: profilePicture,
        mod: mod,
        email: email,
      );
      return right(unit);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  Future<Either<AppFailure, Unit>> deleteTweedByUniqueId({
    required TweetModel mod,
  }) async {
    try {
      await _firebaseDataSource.deleteTweet(mod: mod);
      return right(unit);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  Future<Either<AppFailure, Unit>> updateTweet({
    required TweetModel newMod,
    required TweetModel oldMod,
  }) async {
    try {
      await _firebaseDataSource.editedTweets(
        newMod: newMod,
        oldMod: oldMod,
      );
      return right(unit);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }
}
