import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/domain/core/interfaces/I_auth_repositories.dart';
import 'package:twitter/infrastructure/data_sources/firebase_data_sources.dart';
import 'package:twitter/infrastructure/dtos/user_model.dart';

@LazySingleton(as: IAuthRepositories)
class AuthRepositories implements IAuthRepositories {
  final FirebaseDataSource _dataSources;

  AuthRepositories(this._dataSources);

  Future<Either<AppFailure, Unit>> loginWithSocial() async {
    try {
      await _dataSources.signInWithGoogle();

      return right(unit);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  Future<Either<AppFailure, Unit>> registerManual({
    required String email,
    required String pwd,
    required String name,
  }) async {
    try {
      await _dataSources.registerManual(
        email: email,
        name: name,
        pwd: pwd,
      );
      return right(unit);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  Future<Either<AppFailure, Unit>> loginManual({
    required String email,
    required String pwd,
  }) async {
    try {
      await _dataSources.loginManual(
        email: email,
        pwd: pwd,
      );
      return right(unit);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  Future<Either<AppFailure, UserModel>> checkUserLoggedIn() async {
    try {
      var response = await _dataSources.checkUserLoggedIn();
      return right(response);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  Future<Either<AppFailure, Unit>> signOut() async {
    try {
      await _dataSources.signOut();

      return right(unit);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }
}
