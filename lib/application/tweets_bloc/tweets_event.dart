part of 'tweets_bloc.dart';

@freezed
class TweetsEvent with _$TweetsEvent {
  const factory TweetsEvent.initial(String userId) = _TweetsEventinitial;
  const factory TweetsEvent.newTweetsStreamed(UserAllTweetsModel mod) = _TweetsEventnewTweetsStreamed;
}
