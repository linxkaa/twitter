import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/domain/core/constant/variable_constnt.dart';
import 'package:twitter/infrastructure/data_sources/firebase_data_sources.dart';
import 'package:twitter/infrastructure/dtos/user_model.dart';
import 'package:twitter/infrastructure/helper/exceptions.dart';

@singleton
class ProfileDataSources {
  final FirebaseDataSource _firebaseDataSource;
  ProfileDataSources(this._firebaseDataSource);

  Future<FirebaseUserModel> getUserProfile(String id) async {
    try {
      DocumentSnapshot response =
          await _firebaseDataSource.firebaseFirestore.collection(VarConst.userCollection).doc(id).get();
      var mod = FirebaseUserModel.fromDoc(response);
      return mod;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
