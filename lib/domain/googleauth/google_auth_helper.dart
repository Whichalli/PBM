<<<<<<< HEAD
import 'package:google_sign_in/google_sign_in.dart';
class GoogleAuthHelper {

  /// Handle Google Signin to authenticate user
  Future<GoogleSignInAccount?> googleSignInProcess() async {
    GoogleSignIn _googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if(googleUser!=null){
=======
import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthHelper {
  /// Handle Google Signin to authenticate user
  Future<GoogleSignInAccount?> googleSignInProcess() async {
    GoogleSignIn _googleSignIn = GoogleSignIn();
    log('_googleSignIn = $_googleSignIn');
    GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    log('googleUser = $googleUser');
    if (googleUser != null) {
>>>>>>> dev
      return googleUser;
    }
  }

  /// To Check if the user is already signedin through google
<<<<<<< HEAD
  alreadySignIn() async{
=======
  alreadySignIn() async {
>>>>>>> dev
    GoogleSignIn _googleSignIn = GoogleSignIn();
    bool alreadySignIn = await _googleSignIn.isSignedIn();
    return alreadySignIn;
  }

  /// To signout from the application if the user is signed in through google
  Future<GoogleSignInAccount?> googleSignOutProcess() async {
    GoogleSignIn _googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await _googleSignIn.signOut();

    return googleUser;
  }
}
