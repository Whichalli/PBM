import 'controller/sign_in_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/core/utils/validation_functions.dart';import 'package:pbm_care/widgets/custom_button.dart';import 'package:pbm_care/widgets/custom_icon_button.dart';import 'package:pbm_care/widgets/custom_text_form_field.dart';import 'package:pbm_care/domain/googleauth/google_auth_helper.dart';import 'package:google_sign_in/google_sign_in.dart';import 'package:fluttertoast/fluttertoast.dart';import 'package:pbm_care/domain/facebookauth/facebook_auth_helper.dart';
// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {SignInScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.whiteA700, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(226), width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgRectangle1372, height: getVerticalSize(226), width: getHorizontalSize(375), radius: BorderRadius.only(bottomRight: Radius.circular(getHorizontalSize(30))), alignment: Alignment.center), Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(left: 52, top: 71, right: 52), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_welcome_back".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanBold30), Padding(padding: getPadding(top: 11), child: Text("msg_let_s_get_you_signed".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanBold15))])))])), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 31), child: Text("msg_please_enter_your".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15))), CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.emailController, hintText: "lbl_email_address".tr, margin: getMargin(left: 20, top: 27, right: 23), textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "Please enter valid email";} return null;}), CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.passwordController, hintText: "lbl_password".tr, margin: getMargin(left: 20, top: 20, right: 23), textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "Please enter valid password";} return null;}, isObscureText: true), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 36, top: 8), child: Text("msg_forgot_password".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSans11))), CustomButton(height: getVerticalSize(53), text: "lbl_sign_in".tr, margin: getMargin(left: 20, top: 28, right: 19)), Padding(padding: getPadding(top: 30), child: Text("lbl_or".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold16)), Padding(padding: getPadding(top: 26), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 54, width: 54, variant: IconButtonVariant.OutlineBluegray100, shape: IconButtonShape.CircleBorder27, onTap: () {onTapBtnSocialsgoogletw();}, child: CustomImageView(svgPath: ImageConstant.imgSocialsgoogle2)), CustomIconButton(height: 54, width: 54, margin: getMargin(left: 20), variant: IconButtonVariant.OutlineBluegray100, shape: IconButtonShape.CircleBorder27, onTap: () {onTapBtnFacebook();}, child: CustomImageView(svgPath: ImageConstant.imgFacebook)), CustomIconButton(height: 54, width: 54, margin: getMargin(left: 20), variant: IconButtonVariant.OutlineBluegray100, shape: IconButtonShape.CircleBorder27, child: CustomImageView(svgPath: ImageConstant.imgTwitter))])), GestureDetector(onTap: () {onTapRowdonthaveanac();}, child: Padding(padding: getPadding(top: 28, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_sign_in_as_a_nurse_employee".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14), Padding(padding: getPadding(left: 8), child: Text("lbl_sign_in".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14PinkA100))])))]))))); } 
/// Performs a Google sign-in and returns a [GoogleUser] object.
///
/// If the sign-in is successful, the [onSuccessGoogleAuthResponse] method is called
/// with the [GoogleUser] object as a parameter.
/// If the sign-in fails, the [onErrorGoogleAuthResponse] method is called.
///
/// Throws an exception if the Google sign-in process fails.
onTapBtnSocialsgoogletw() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            onSuccessGoogleAuthResponse(googleUser);
          } else {
            onErrorGoogleAuthResponse();
          }
        }).catchError((onError) {
            onErrorGoogleAuthResponse();
        });
         } 
/// Navigates to the chooseAgeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the chooseAgeScreen.
onSuccessGoogleAuthResponse(GoogleSignInAccount googleUser) { Get.offNamed(AppRoutes.chooseAgeScreen,); } 
/// Displays a toast message using the Fluttertoast library.
onErrorGoogleAuthResponse() { Fluttertoast.showToast(msg: "Error logging in please try again",); } 
/// Performs a Facebook sign-in and returns a [FacebookUser] object.
///
/// If the sign-in is successful, the [onSuccess] callback will be called with
/// a TODO comment needed to be modified by you.
/// If the sign-in fails, the [onError] callback will be called with the error message.
///
/// Throws an exception if the Facebook sign-in process fails.
onTapBtnFacebook() async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              Get.snackbar('Error', onError.toString());
            });
             } 
/// Navigates to the onboardingTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the onboardingTwoScreen.
onTapRowdonthaveanac() { Get.toNamed(AppRoutes.onboardingTwoScreen, ); } 
 }
