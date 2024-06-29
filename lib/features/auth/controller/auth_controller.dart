import 'dart:io';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  void build() {}
  
  Future<void> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
              clientId: Platform.isIOS
                  //!TODO: Put this in an env file
                  ? '980240219979-j5kmm3l2qkhmoqb4ngt3kibe5hdsntn3.apps.googleusercontent.com'
                  : null)
          .signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> signInWithApple() async {
      
    }
}
