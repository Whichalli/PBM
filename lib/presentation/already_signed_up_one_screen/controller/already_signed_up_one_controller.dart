<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/already_signed_up_one_screen/models/already_signed_up_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the AlreadySignedUpOneScreen.
///
/// This class manages the state of the AlreadySignedUpOneScreen, including the
/// current alreadySignedUpOneModelObj
class AlreadySignedUpOneController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController group3849Controller = TextEditingController();

Rx<AlreadySignedUpOneModel> alreadySignedUpOneModelObj = AlreadySignedUpOneModel().obs;

Rx<String> radioGroup = "".obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); group3849Controller.dispose(); } 
onSelected(dynamic value) { for (var element in alreadySignedUpOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} alreadySignedUpOneModelObj.value.dropdownItemList.refresh(); } 
 }
=======
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/domain/googleauth/google_auth_helper.dart';
import 'package:pbm_app/presentation/already_signed_up_one_screen/models/already_signed_up_one_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/widgets/widgets.dart';

/// A controller class for the AlreadySignedUpOneScreen.
///
/// This class manages the state of the AlreadySignedUpOneScreen, including the
/// current alreadySignedUpOneModelObj
class AlreadySignedUpOneController extends GetxController {
  // final AlreadySignedUpOneDatabase _database = AlreadySignedUpOneDatabase();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController regNumController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController expController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String language = '';
  String gender = '';

  final Authentication authentication = Authentication();
  RxBool loading = false.obs;

  Rx<AlreadySignedUpOneModel> alreadySignedUpOneModelObj =
      AlreadySignedUpOneModel().obs;

  Rx<String> radioGroup = "".obs;

  SelectionPopupModel? selectedDropDownValue;
  DocumentSnapshot<Map<String, dynamic>>? resp;
  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
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

        User? user = await authentication.signin(
            credential: credential, isParent: false);
        resp = await Database.read(userId: user!.uid, table: 'employee');
        if (resp!.data() == null) {
          var data = {
            'name': user.displayName,
            'email': user.email,
            'phone': user.phoneNumber,
            'bio': bioController.text,
            'regNum': regNumController.text,
            'address': addressController.text,
            'photoUrl': user.photoURL,
            'dob': '',
            'profession': '',
            'experience': '',
            'language': '',
            'gender': '',
          };
          log('data = $data');
          var response =
              await authentication.signup(accountType: 'employee', data: data);

          if (response['user'] != null && response['code'] == 200) {
            return onSuccessResponse(response['user'], context);
          }
        } else {
          Fluttertoast.showToast(
            msg: "Error Signing Up in please try again",
          );
        }
      }
    }).catchError((onError) {
      log("////.......user =..... $onError");
      onErrorGoogleAuthResponse();
    });
  }

  onTapBtnSignup(context) async {
    var data = {
      'name': nameController.text,
      'email': emailController.text,
      'phone': phoneController.text,
      'bio': bioController.text,
      'regNum': regNumController.text,
      'address': addressController.text,
      'photoUrl': '',
      'dob': dobController.text,
      'profession': radioGroup.value,
      'experience': expController.text,
      'language': language,
      'gender': gender,
    };
    log('data = $data');
    var response =
        await authentication.signup(accountType: 'employee', data: data);

    if (response['user'] != null && response['code'] == 200) {
      return onSuccessResponse(response['user'], context);
    }
    snackbar(
        icon: const Icon(Icons.mail_outline_outlined),
        color: Colors.black,
        message: response['message'],
        context: context);
    // Get.back();
  }

  /// Displays a toast message using the Fluttertoast library.
  onErrorGoogleAuthResponse() {
    Fluttertoast.showToast(
      msg: "Error logging in please try again",
    );
  }

  /// Navigates to the chooseAgeScreen when the action is triggered.
  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chooseAgeScreen.
  onSuccessResponse(User user, context) async {
    if (!user.emailVerified) {
      await user.sendEmailVerification();
      snackbar(
          icon: const Icon(Icons.mail_outline_outlined),
          color: ColorConstant.pinkA100,
          message:
              'A verification link has been sent to the \nprovided email address',
          context: context);
      Get.back();
      return;
    }
    Get.toNamed(
      AppRoutes.dashboardScreen,
    );
  }
}
>>>>>>> dev
