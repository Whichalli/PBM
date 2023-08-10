import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/googleauth/google_auth_helper.dart';
import 'package:pbm_app/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/presentation/signup_screen/models/signup_model.dart';
import 'package:pbm_app/widgets/widgets.dart';
import 'package:hive/hive.dart';
import '../../../domain/facebookauth/facebook_auth_helper.dart';

/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  Rx<SignUpModel> signInModelObj = SignUpModel().obs;

  final Authentication authentication = Authentication();
  RxBool loading = false.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
  }

  /// Performs a Firebase Register with email and password.
  ///
  /// If the sign-up is successful, the [onSuccessResponse] method is called
  ///
  /// Throws an exception if the sign-up process fails.
  onTapBtnSignup(context) async {
    var response = await authentication.signup(data: {
      'email': emailController.text,
      'password': passwordController.text,
      'phone': phoneController.text,
      'accountType': 'parent',
      'photoUrl': '',
      'name': '${firstNameController.text} ${lastNameController.text}'
    }, accountType: 'parent');

    if (response['user'] != null && response['code'] == 200) {
      return onSuccessResponse(response['user'], context);
    }
    snackbar(
        icon: const Icon(Icons.mail_outline_outlined),
        color: Colors.black,
        message: response['message'],
        context: context);
    Get.back();
  }

  /// Navigates to the chooseAgeScreen when the action is triggered.
  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chooseAgeScreen.
  onSuccessResponse(User user, context) async {
    if (!user.emailVerified) {
      await user.sendEmailVerification();
      Get.back();
      snackbar(
          icon: const Icon(Icons.mail_outline_outlined),
          color: Colors.black,
          message:
              'A verification link has been sent to the \nprovided email address',
          context: context);
      return;
    }
    Get.toNamed(
      AppRoutes.chooseAgeScreen,
    );
  }
}
