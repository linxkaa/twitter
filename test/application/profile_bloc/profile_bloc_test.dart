import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitter/application/profile_bloc/profile_bloc.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/domain/core/interfaces/i_profile_repositories.dart';
import 'package:twitter/infrastructure/dtos/user_model.dart';
import 'package:twitter/infrastructure/repositories/profile_repositories.dart';

import 'profile_bloc_test.mocks.dart';

@GenerateMocks([IProfileRepositories])
void main() {
  late MockIProfileRepositories _profileRepositories;
  late ProfileBloc _profileBloc;
  setUp(() {
    _profileRepositories = MockIProfileRepositories();
    _profileBloc = ProfileBloc(_profileRepositories);
  });

  group("Profile Event Test -> getUserProfile()", () {
    blocTest<ProfileBloc, ProfileState>(
      'emits FirebaseUserModel when ProfileEvent.getUserProfile(id) is added. Repositories return FirebaseUserModel as its succeed when passing data to firebase',
      build: () {
        when(_profileRepositories.getUserProfile("1234")).thenAnswer(
          (_) async => right(
            FirebaseUserModel(
              name: "lintang",
              email: "lintang@gmail.com",
              bgImage: "www.google.com",
              profilePicture: "www.google.com",
            ),
          ),
        );
        return _profileBloc;
      },
      act: (bloc) => bloc.add(ProfileEvent.getUserProfile("1234")),
      expect: () => <ProfileState>[
        ProfileState(
          isLoading: true,
          firebaseModel: FirebaseUserModel.empty(),
        ),
        ProfileState(
          isLoading: false,
          firebaseModel: FirebaseUserModel(
            name: "lintang",
            email: "lintang@gmail.com",
            bgImage: "www.google.com",
            profilePicture: "www.google.com",
          ),
        ),
      ],
    );

    blocTest<ProfileBloc, ProfileState>(
      'emits FirebaseUserModel.empty() when ProfileEvent.getUserProfile(id) is added. Repositories return AppFailure.fromServerSide("failedVailure") as its failed when passing data to firebase',
      build: () {
        when(_profileRepositories.getUserProfile("1234")).thenAnswer(
          (_) async => left(
            AppFailure.fromServerSide(
              "failedVailure",
            ),
          ),
        );
        return _profileBloc;
      },
      act: (bloc) => bloc.add(ProfileEvent.getUserProfile("1234")),
      expect: () => <ProfileState>[
        ProfileState(
          isLoading: true,
          firebaseModel: FirebaseUserModel.empty(),
        ),
        ProfileState(
          isLoading: false,
          firebaseModel: FirebaseUserModel.empty(),
        ),
      ],
    );
  });
}
