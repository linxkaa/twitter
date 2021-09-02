import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/infrastructure/dtos/user_all_tweets_model.dart';
import 'package:twitter/infrastructure/repositories/tweet_repositories.dart';

part 'tweets_event.dart';
part 'tweets_state.dart';
part 'tweets_bloc.freezed.dart';

@injectable
class TweetsBloc extends Bloc<TweetsEvent, TweetsState> {
  final TweeetRepositories _repositories;
  late StreamSubscription<UserAllTweetsModel> _tweetSubscription;
  TweetsBloc(this._repositories) : super(TweetsState.initial());

  @override
  Stream<TweetsState> mapEventToState(
    TweetsEvent event,
  ) async* {
    yield* event.map(
      initial: (e) async* {
        yield state.unmodified.copyWith(isLoading: true);
        await Future.delayed(Duration(seconds: 1));
        _tweetSubscription = this._repositories.getUserTweets(userId: e.userId).listen((event) {
          add(TweetsEvent.newTweetsStreamed(event));
        });
      },
      newTweetsStreamed: (e) async* {
        yield state.unmodified.copyWith(mod: e.mod);
      },
    );
  }

  @override
  Future<void> close() {
    _tweetSubscription.cancel();
    return super.close();
  }
}
