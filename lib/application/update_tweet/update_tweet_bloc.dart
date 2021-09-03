import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/infrastructure/dtos/user_all_tweets_model.dart';
import 'package:twitter/infrastructure/repositories/tweet_repositories.dart';
import 'package:uuid/uuid.dart';

part 'update_tweet_event.dart';
part 'update_tweet_state.dart';
part 'update_tweet_bloc.freezed.dart';

@injectable
class UpdateTweetBloc extends Bloc<UpdateTweetEvent, UpdateTweetState> {
  late TextEditingController tweetController;
  final TweeetRepositories _repositories;
  UpdateTweetBloc(this._repositories) : super(UpdateTweetState.initial()) {
    tweetController = TextEditingController();
  }

  @override
  Stream<UpdateTweetState> mapEventToState(
    UpdateTweetEvent event,
  ) async* {
    yield* event.map(
      initial: (e) async* {
        if (e.mod == null) {
          yield state.unmodified;
        } else {
          tweetController.text = e.mod!.content;
          yield state.unmodified.copyWith(mod: e.mod!);
        }
      },
      updateTweet: (e) async* {
        yield state.unmodified.copyWith(isLoading: true);
        if (tweetController.text.isEmpty) {
          yield state.unmodified.copyWith(isAnyError: some("tweet cannot be empty"));
        } else {
          var response = await _repositories.updateTweet(
            newMod: state.mod.copyWith(
              content: tweetController.text,
              timestamp: DateTime.now(),
            ),
            oldMod: state.mod,
          );
          yield state.unmodified.copyWith(failureOrSucceedUpdateTweet: optionOf(response));
        }
      },
      deleteTweet: (e) async* {
        yield state.unmodified.copyWith(isLoading: true);
        var response = await _repositories.deleteTweedByUniqueId(
          mod: e.mod,
        );
        yield state.unmodified.copyWith(failureOrSucceedDeleteTweet: optionOf(response));
      },
      uploadNewTweets: (e) async* {
        yield state.unmodified.copyWith(isLoading: true);

        if (tweetController.text.isEmpty) {
          yield state.unmodified.copyWith(isAnyError: some("tweet cannot be empty"));
        } else {
          var mod = TweetModel(
              content: tweetController.text, userId: e.userId, timestamp: DateTime.now(), uniqueId: Uuid().v4());
          var response = await _repositories.sendNewTweets(
            email: e.email,
            userId: e.userId,
            name: e.name,
            profilePicture: e.profilePicture,
            mod: mod,
          );
          yield state.unmodified.copyWith(failureOrSucceedTweet: optionOf(response));
        }
      },
    );
  }
}
