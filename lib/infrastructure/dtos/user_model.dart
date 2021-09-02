// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String name,
    required String token,
    required String email,
    @Default(AuthStatus.Initial) AuthStatus status,
  }) = _UserModel;
  @JsonKey(ignore: true)
  factory UserModel.empty() => UserModel(
        name: "",
        token: "",
        email: "",
      );
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class FirebaseUserModel with _$FirebaseUserModel {
  const factory FirebaseUserModel({
    required String name,
    required String email,
    required String bgImage,
    required String profilePicture,
  }) = _FirebaseUserModel;

  @JsonKey(ignore: true)
  factory FirebaseUserModel.fromDoc(DocumentSnapshot data) {
    return FirebaseUserModel(
      name: data["name"],
      email: data["email"],
      bgImage: data["bgImage"],
      profilePicture: data["profilePicture"],
    );
  }
  @JsonKey(ignore: true)
  factory FirebaseUserModel.empty() => FirebaseUserModel(
        name: "",
        email: "",
        bgImage: "",
        profilePicture: "",
      );

  factory FirebaseUserModel.fromJson(Map<String, dynamic> json) => _$FirebaseUserModelFromJson(json);
}

enum AuthStatus { Initial, Authenticated, Unauthenticated }
