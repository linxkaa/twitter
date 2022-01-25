import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/domain/core/interfaces/i_tweet_repositories.dart';
import 'package:twitter/infrastructure/dtos/user_all_tweets_model.dart';

part 'tweets_event.dart';
part 'tweets_state.dart';
part 'tweets_bloc.freezed.dart';

@injectable
class TweetsBloc extends Bloc<TweetsEvent, TweetsState> {
  final ITweetRepositories _repositories;
  StreamSubscription<UserAllTweetsModel>? _tweetSubscription;
  TweetsBloc(this._repositories) : super(TweetsState.initial());

  @override
  Stream<TweetsState> mapEventToState(
    TweetsEvent event,
  ) async* {
    yield* event.map(
      initial: (e) async* {
        yield state.unmodified.copyWith(isLoading: true);
        await Future.delayed(Duration(seconds: 1));
        _tweetSubscription = this._repositories.getUserTweets(userId: e.userId).listen((_listener));
      },
      newTweetsStreamed: (e) async* {
        yield state.unmodified.copyWith(mod: e.mod);
      },
    );
  }

  _listener(event) {
    add(TweetsEvent.newTweetsStreamed(event));
  }

  @override
  Future<void> close() {
    _tweetSubscription?.cancel();
    return super.close();
  }
}
