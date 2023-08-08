import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/domain/googleauth/google_auth_helper.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/presentation/already_signed_up_two_screen/models/already_signed_up_one_model.dart';
import 'package:pbm_app/widgets/widgets.dart';

/// A controller class for the AlreadySignedUpTwoScreen.
///
/// This class manages the state of the AlreadySignedUpTwoScreen, including the
/// current alreadySignedUpTwoModelObj
class AlreadySignedUpTwoController extends GetxController {
  // final AlreadySignedUpTwoDatabase _database = AlreadySignedUpTwoDatabase();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController regNumController = TextEditingController();
  TextEditingController group3849Controller = TextEditingController();

  final Authentication authentication = Authentication();
  RxBool loading = false.obs;

  Rx<AlreadySignedUpTwoModel> alreadySignedUpTwoModelObj =
      AlreadySignedUpTwoModel().obs;

  Rx<String> radioGroup = "".obs;

  SelectionPopupModel? selectedDropDownValue;
  DocumentSnapshot<Map<String, dynamic>>? resp;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    group3849Controller.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in alreadySignedUpTwoModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    alreadySignedUpTwoModelObj.value.dropdownItemList.refresh();
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccessGoogleAuthResponse] method is called
  /// with the [GoogleUser] object as a parameter.
  /// If the sign-in fails, the [TworrorGoogleAuthResponse] method is called.
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

        User? user = await authentication.signin(
            credential: credential, isParent: false);
        resp = await Database.read(userId: user!.uid, table: 'employee');
        if (resp!.data() == null) {
          await Database.write(
              userId: user.uid,
              data: {
                'name': user.displayName,
                'email': user.email,
                'phone': user.phoneNumber,
                'regNum': '',
                'photoUrl': user.photoURL,
                'profession': ''
              },
              table: 'employee');

          await Database.write(
              userId: user.uid,
              data: {'email': user.email, 'accountType': 'employee'},
              table: 'user');
        }
        onSuccessResponse(user, context);
      } else {
        Fluttertoast.showToast(
          msg: "Error Signing Up in please try again",
        );
      }
    }).catchError((Tworror) {
      log("////.......user ##### = $Tworror");
      Fluttertoast.showToast(
        msg: "Error logging in please try again",
      );
    });
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  /// When the action is triggered, this function uses the `Get` package to
  onTapSignin(context) async {
    try {
      var response = await authentication.signinUsernamePassword(context,
          isParent: false,
          email: emailController.text,
          password: passwordController.text);

      log('response = $response');
      if (response['code'] == 200) {
        User user = response['user'];
        onSuccessResponse(user, context);
      } else {
        if (response['code'] <= 450) {
          snackbar(
              icon: Icon(
                Icons.mail_outline_outlined,
                color: ColorConstant.black900,
              ),
              color: ColorConstant.black900,
              message: (response['code'] <= 450)
                  ? response['message']
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
      Fluttertoast.showToast(
        msg: "Error creating account in please try again",
      );
    }
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the dashboardScreen.
  onSuccessResponse(User user, context) async {
    if (!user.emailVerified) {
      await user.sendEmailVerification();
      snackbar(
          icon: const Icon(Icons.mail_outline_outlined),
          color: ColorConstant.black900,
          message:
              'A verification link has been sent to the \nprovided email address',
          context: context);
      Get.back();
      return;
    }
    Get.offNamedUntil(AppRoutes.dashboardScreen, (route) => false);
  }
}
