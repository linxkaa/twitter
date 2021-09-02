import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/domain/core/failure/app_failure.dart';
import 'package:twitter/infrastructure/data_sources/profile_data_sources.dart';
import 'package:twitter/infrastructure/dtos/user_model.dart';

@injectable
class ProfileRepositories {
  final ProfileDataSources _dataSources;
  ProfileRepositories(this._dataSources);

  Future<Either<AppFailure, FirebaseUserModel>> getUserProfile(String id) async {
    try {
      var userModelFromFirebase = await _dataSources.getUserProfile(id);

      return right(userModelFromFirebase);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }
}
