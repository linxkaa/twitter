import 'package:dartz/dartz.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/infrastructure/dtos/user_model.dart';

abstract class IProfileRepositories {
  Future<Either<AppFailure, FirebaseUserModel>> getUserProfile(String id);
}
