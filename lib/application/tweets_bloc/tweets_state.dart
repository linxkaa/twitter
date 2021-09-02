part of 'tweets_bloc.dart';

@freezed
class TweetsState with _$TweetsState {
  const TweetsState._();
  const factory TweetsState({
    required UserAllTweetsModel mod,
    required bool isLoading,
  }) = _TweetsState;

  factory TweetsState.initial() => TweetsState(
        isLoading: false,
        mod: UserAllTweetsModel.empty(),
      );
  TweetsState get unmodified => copyWith(isLoading: false);
}
