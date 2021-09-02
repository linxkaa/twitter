import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:twitter/domain/core/constant/variable_constnt.dart';
import 'package:twitter/infrastructure/dtos/user_all_tweets_model.dart';
import 'package:twitter/infrastructure/dtos/user_model.dart';
import 'package:twitter/infrastructure/helper/exceptions.dart';

@singleton
class FirebaseDataSource {
  late final FirebaseFirestore firebaseFirestore;
  late final FirebaseAuth firebaseAuth;

  FirebaseDataSource();

  Future<void> initialize() async {
    try {
      await Firebase.initializeApp();
      firebaseFirestore = FirebaseFirestore.instance;
      firebaseAuth = FirebaseAuth.instance;
    } catch (e) {
      print(e);
    }
  }

  // * Auth Related
  Future<void> registerManual({
    required String email,
    required String pwd,
    required String name,
  }) async {
    try {
      UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: pwd,
      );

      User? signedInUser = userCredential.user;

      if (signedInUser != null) {
        firebaseFirestore.collection(VarConst.userCollection).doc(signedInUser.uid).set({
          "name": name,
          "email": email,
          "profilePicture": VarConst.profilePicture,
          "bgImage": VarConst.bgImageUserProfile,
        });
        await signedInUser.updateDisplayName(name);
      } else {
        throw ServerException(message: "Something wrong, please report this to us");
      }
    } on FirebaseAuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw UnknownException(e);
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
        OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        UserCredential userCred = await FirebaseAuth.instance.signInWithCredential(credential);
        if (userCred.user != null) {
          firebaseFirestore.collection(VarConst.userCollection).doc(userCred.user!.uid).set({
            "name": userCred.user!.displayName,
            "email": userCred.user!.email,
            "profilePicture": VarConst.profilePicture,
            "bgImage": VarConst.bgImageUserProfile,
          });
          return;
        }
      } else {
        throw ServerException(message: "User has cancelled google sign in.");
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  Future<void> loginManual({
    required String email,
    required String pwd,
  }) async {
    try {
      UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: pwd,
      );

      User? signedInUser = userCredential.user;

      if (signedInUser == null) {
        throw ServerException(message: "Something wrong, please report this to us");
      }
      return;
    } on FirebaseAuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw UnknownException(e);
    }
  }

  Future<UserModel> checkUserLoggedIn() async {
    User? currentUser = firebaseAuth.currentUser;

    if (currentUser != null) {
      return UserModel(
        name: currentUser.displayName ?? "",
        token: currentUser.uid,
        email: currentUser.email ?? "",
      );
    } else {
      throw ServerException(message: "No user found");
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  // * Tweets Related
  Future<void> sendTweet({
    required String userId,
    required String email,
    required String name,
    required String profilePicture,
    required TweetModel mod,
  }) async {
    try {
      var ref = firebaseFirestore.collection(VarConst.tweetCollection).doc(userId);
      var isAlreadyHaveFieldTweet = await ref.get();
      if (isAlreadyHaveFieldTweet.exists) {
        return await ref.update({
          "tweets": FieldValue.arrayUnion(
            [
              mod.toJson(),
            ],
          ),
        });
      } else {
        return await ref.set({
          "name": name,
          "email": email,
          "profilePicture": profilePicture,
          "tweets": [mod.toJson()]
        });
      }
    } on FirebaseAuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw UnknownException(e);
    }
  }

  Future<void> deleteTweet({
    required TweetModel mod,
  }) async {
    try {
      var ref = firebaseFirestore.collection(VarConst.tweetCollection).doc(mod.userId);
      return await ref.update({
        "tweets": FieldValue.arrayRemove([mod.toJson()]),
      });
    } on FirebaseAuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw UnknownException(e);
    }
  }

  Future<void> editedTweets({
    required TweetModel newMod,
    required TweetModel oldMod,
  }) async {
    try {
      var ref = firebaseFirestore.collection(VarConst.tweetCollection).doc(oldMod.userId);
      await ref.update({
        "tweets": FieldValue.arrayRemove([oldMod.toJson()]),
      });
      return await ref.update({
        "tweets": FieldValue.arrayUnion([newMod.toJson()]),
      });
    } on FirebaseAuthException catch (e) {
      throw ServerException(message: e.message);
    } catch (e) {
      throw UnknownException(e);
    }
  }

  Stream<UserAllTweetsModel> getUserTweets({required String userId}) {
    var ref = firebaseFirestore.collection(VarConst.tweetCollection).doc(userId);

    return ref.snapshots().map(
      (data) {
        if (data.exists) {
          return UserAllTweetsModel.fromFirestore(data);
        } else {
          return UserAllTweetsModel.empty();
        }
      },
    );
  }

  // * User Profile

  Future<FirebaseUserModel> getUserProfile(String id) async {
    try {
      DocumentSnapshot response = await firebaseFirestore.collection(VarConst.userCollection).doc(id).get();
      var mod = FirebaseUserModel.fromDoc(response);
      return mod;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
