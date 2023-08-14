import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/domain/googleauth/google_auth_helper.dart';
import 'package:pbm_app/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/widgets/widgets.dart';
import 'package:hive/hive.dart';
import '../../../domain/facebookauth/facebook_auth_helper.dart';
import '../../parent_page/controller/controller.dart';

/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  final Authentication authentication = Authentication();
  RxBool loading = false.obs;
  final parentController = Get.find<ParentDashboardScreenController>();

  DocumentSnapshot<Map<String, dynamic>>? resp;
  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void onInit() async {
    // if (await authentication.isLoggedIn())
    //   Get.offNamedUntil(
    //       AppRoutes.dashboardScreen, (route) => false);
    super.onInit();
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccessGoogleAuthResponse] method is called
  /// with the [GoogleUser] object as a parameter.
  /// If the sign-in fails, the [onErrorGoogleAuthResponse] method is called.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapBtnSocialsgoogletw(context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) async {
      log("user = $googleUser");
      if (googleUser != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleUser.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        User? user =
            await authentication.signin(credential: credential, isParent: true);
        resp = await Database.read(userId: user!.uid, table: 'parent');
        if (resp!.data() != null)
          onSuccessResponse(user, context);
        else {
          await Database.write(
              userId: user.uid,
              data: {
                'name': user.displayName,
                'email': user.email,
                'phone': user.phoneNumber,
                'photoUrl': user.photoURL
              },
              table: 'parent');
        }
      } else {
        onErrorGoogleAuthResponse();
      }
    }).catchError((onError) {
      log("////.......user @@@ = $onError");
      onErrorGoogleAuthResponse();
    });
  }

  ///
  onTapSignin(context) async {
    try {
      var response = await authentication.signinUsernamePassword(context,
          isParent: true,
          email: emailController.text,
          password: passwordController.text);

      log('response = $response');
      if (response['code'] == 200) {
        User user = response['user'];
        // if (user.emailVerified) {
        //   Get.toNamed(
        //     AppRoutes.chooseAgeScreen,
        //   );
        //   return;
        // }
        await onSuccessResponse(user, context);
      } else {
        if (response['code'] <= 450) {
          snackbar(
              icon: Icon(
                Icons.mail_outline_outlined,
                color: ColorConstant.pinkA100,
              ),
              color: ColorConstant.pinkA100,
              message: (response['code'] <= 450)
                  ? 'Invalid email or password'
                  : 'Account with this details does not exist',
              context: context);
        } else {
          Fluttertoast.showToast(
            msg: 'Error occured please try again',
          );
        }
        return;
      }
    } catch (e) {
      e.printInfo();
      Fluttertoast.showToast(
        msg: "Error creating account in please try again",
      );
    }
  }

  onSuccessResponse(User user, context) async {
    if (!user.emailVerified) {
      await user.sendEmailVerification();
      snackbar(
          icon: const Icon(Icons.mail_outline_outlined),
          color: Colors.black,
          message:
              'A verification link has been sent to the provided email address',
          context: context);
      return;
    }
    parentController.userId.value = user.uid;
    log('id = ${user.uid} exist = ${(await FirebaseFirestore.instance.collection('user').doc('/${user.uid}').get()).exists}');

    if ((await FirebaseFirestore.instance
            .collection('user')
            .doc('/${user.uid}')
            .get())
        .exists) {
      Get.offAllNamed(
        AppRoutes.homeOnboardingContainerScreen,
      );

      return;
    }
    // Hive.box('parent').put('user', {
    //   'name': user.displayName,
    //   'email': user.email,
    //   'phone': user.phoneNumber,
    //   'photoUrl': user.photoURL
    // });

    Get.offAllNamed(
      AppRoutes.chooseAgeScreen,
    );
  }

  /// Displays a toast message using the Fluttertoast library.
  onErrorGoogleAuthResponse() {
    Fluttertoast.showToast(
      msg: "Error logging in please try again",
    );
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  onTapBtnFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the onboardingTwoScreen.
  onTapRowdonthaveanac() {
    Get.toNamed(
      AppRoutes.onboardingTwoScreen,
    );
  }

  onTapBtnSignup() {
    Get.toNamed(
      AppRoutes.parentSignupScreen,
    );
  }
}
