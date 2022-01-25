import 'package:dartz/dartz.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/infrastructure/dtos/user_model.dart';

abstract class IAuthRepositories {
  Future<Either<AppFailure, Unit>> loginWithSocial();
  Future<Either<AppFailure, Unit>> registerManual({
    required String email,
    required String pwd,
    required String name,
  });
  Future<Either<AppFailure, Unit>> loginManual({
    required String email,
    required String pwd,
  });

  Future<Either<AppFailure, UserModel>> checkUserLoggedIn();
  Future<Either<AppFailure, Unit>> signOut();
}
