// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_all_tweets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAllTweetsModel _$$_UserAllTweetsModelFromJson(
        Map<String, dynamic> json) =>
    _$_UserAllTweetsModel(
      tweets: (json['tweets'] as List<dynamic>)
          .map((e) => TweetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      email: json['email'] as String,
      profilePicture: json['profilePicture'] as String,
    );

Map<String, dynamic> _$$_UserAllTweetsModelToJson(
        _$_UserAllTweetsModel instance) =>
    <String, dynamic>{
      'tweets': instance.tweets,
      'name': instance.name,
      'email': instance.email,
      'profilePicture': instance.profilePicture,
    };

_$_TweetModel _$$_TweetModelFromJson(Map<String, dynamic> json) =>
    _$_TweetModel(
      content: json['content'] as String,
      userId: json['userId'] as String,
      timestamp:
          const TimeStampConverter().fromJson(json['timestamp'] as Timestamp),
      uniqueId: json['uniqueId'] as String,
    );

Map<String, dynamic> _$$_TweetModelToJson(_$_TweetModel instance) =>
    <String, dynamic>{
      'content': instance.content,
      'userId': instance.userId,
      'timestamp': const TimeStampConverter().toJson(instance.timestamp),
      'uniqueId': instance.uniqueId,
    };
