import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter/domain/core/constant/variable_constnt.dart';
import 'package:twitter/infrastructure/data_sources/firebase_data_sources.dart';
import 'package:twitter/infrastructure/helper/exceptions.dart';

@singleton
class AuthDataSources {
  final FirebaseDataSource _firebaseDataSources;
  AuthDataSources(this._firebaseDataSources);
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
          _firebaseDataSources.firebaseFirestore.collection(VarConst.userCollection).doc(userCred.user!.uid).set({
            "name": userCred.user!.displayName,
            "email": userCred.user!.email,
            "profilePicture":
                "https://www.pngkit.com/png/detail/176-1768859_myeong-hwan-yoo-unknown-profile-picture-png.png",
            "bgImage": "https://wallpaperaccess.com/full/632900.jpg",
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
}
