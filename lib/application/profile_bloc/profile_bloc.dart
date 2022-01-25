import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/domain/core/interfaces/i_profile_repositories.dart';
import 'package:twitter/infrastructure/dtos/user_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepositories _profileRepositories;

  ProfileBloc(this._profileRepositories) : super(ProfileState.initial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.when(
      getUserProfile: (id) async* {
        yield state.unmodified.copyWith(isLoading: true);
        var response = await _profileRepositories.getUserProfile(id);
        yield* response.fold((l) async* {
          yield state.unmodified;
        }, (r) async* {
          yield state.unmodified.copyWith(firebaseModel: r);
        });
      },
    );
  }
}
