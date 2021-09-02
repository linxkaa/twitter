// To parse this JSON data, do
//
//     final userAllTweetsModel = userAllTweetsModelFromJson(jsonString);

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_all_tweets_model.freezed.dart';
part 'user_all_tweets_model.g.dart';

@freezed
abstract class UserAllTweetsModel with _$UserAllTweetsModel {
  const factory UserAllTweetsModel({
    required List<TweetModel> tweets,
    required String name,
    required String email,
    required String profilePicture,
  }) = _UserAllTweetsModel;

  @JsonKey(ignore: true)
  factory UserAllTweetsModel.fromFirestore(DocumentSnapshot data) {
    List? rawList = data["tweets"] as List?;

    List<TweetModel> tweets = rawList == null ? [] : rawList.map((i) => TweetModel.fromJson(i)).toList();

    return UserAllTweetsModel(
      tweets: tweets
        ..sort((a, b) {
          var adate = a.timestamp;
          var bdate = b.timestamp;
          return -adate.compareTo(bdate);
        }),
      name: data["name"],
      email: data["email"],
      profilePicture: data["profilePicture"],
    );
  }
  @JsonKey(ignore: true)
  factory UserAllTweetsModel.empty() => UserAllTweetsModel(
        tweets: [],
        name: "",
        email: "",
        profilePicture: "",
      );
  factory UserAllTweetsModel.fromJson(Map<String, dynamic> json) => _$UserAllTweetsModelFromJson(json);
}

@freezed
abstract class TweetModel with _$TweetModel {
  const factory TweetModel({
    required String content,
    required String userId,
    @TimeStampConverter() required DateTime timestamp,
    required String uniqueId,
  }) = _TweetModel;

  @JsonKey(ignore: true)
  factory TweetModel.empty() => TweetModel(content: "", userId: "", timestamp: DateTime.now(), uniqueId: "");
  factory TweetModel.fromJson(Map<String, dynamic> json) => _$TweetModelFromJson(json);
}

class TimeStampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimeStampConverter();
  @override
  DateTime fromJson(Timestamp json) {
    return DateTime.fromMicrosecondsSinceEpoch(json.microsecondsSinceEpoch);
  }

  @override
  Timestamp toJson(DateTime time) => Timestamp.fromDate(time);
}
