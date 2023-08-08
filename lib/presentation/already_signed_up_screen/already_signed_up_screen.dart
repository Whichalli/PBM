<<<<<<< HEAD
import 'controller/already_signed_up_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/custom_button.dart';class AlreadySignedUpScreen extends GetWidget<AlreadySignedUpController> {const AlreadySignedUpScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgVector3PinkA100, height: getVerticalSize(92), width: getHorizontalSize(375)), CustomImageView(svgPath: ImageConstant.imgUndrawdoctorshwty, height: getVerticalSize(147), width: getHorizontalSize(261), margin: getMargin(top: 51)), Container(width: getHorizontalSize(158), margin: getMargin(top: 56), child: Text("msg_already_signed".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtNunitoBold30PinkA100)), Padding(padding: getPadding(left: 60, top: 80, right: 51), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomButton(height: getVerticalSize(59), width: getHorizontalSize(116), text: "lbl_yes".tr, margin: getMargin(top: 3), shape: ButtonShape.RoundedBorder29, padding: ButtonPadding.PaddingAll19, fontStyle: ButtonFontStyle.NunitoExtraBold18, onTap: () {onTapYes();}), CustomButton(height: getVerticalSize(59), width: getHorizontalSize(116), text: "lbl_sign_up2".tr, margin: getMargin(left: 32, bottom: 3), shape: ButtonShape.RoundedBorder29, padding: ButtonPadding.PaddingAll19, fontStyle: ButtonFontStyle.NunitoExtraBold18, onTap: () {onTapSignup();})])), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 157, top: 58), child: Row(children: [Container(height: getVerticalSize(7), width: getHorizontalSize(14), decoration: BoxDecoration(color: ColorConstant.pinkA100, borderRadius: BorderRadius.circular(getHorizontalSize(3)))), Container(height: getVerticalSize(7), width: getHorizontalSize(30), margin: getMargin(left: 5), decoration: BoxDecoration(color: ColorConstant.pinkA100, borderRadius: BorderRadius.circular(getHorizontalSize(3))))]))), CustomImageView(imagePath: ImageConstant.imgVector3PinkA100, height: getVerticalSize(107), width: getHorizontalSize(375), margin: getMargin(top: 71))])))); } 
/// Navigates to the alreadySignedUpOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the alreadySignedUpOneScreen.
onTapYes() { Get.toNamed(AppRoutes.alreadySignedUpOneScreen, ); } 
/// Navigates to the alreadySignedUpOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the alreadySignedUpOneScreen.
onTapSignup() { Get.toNamed(AppRoutes.alreadySignedUpOneScreen, ); } 
 }
=======
import 'controller/already_signed_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class AlreadySignedUpScreen extends GetWidget<AlreadySignedUpController> {
  const AlreadySignedUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
            width: double.maxFinite,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Transform.flip(
                flipX: true,
                flipY: true,
                child: CustomImageView(
                    imagePath: ImageConstant.imgVector3,
                    height: getVerticalSize(92),
                    width: getHorizontalSize(double.maxFinite)),
              ),
              CustomImageView(
                  svgPath: ImageConstant.imgUndrawUserRegister,
                  height: getVerticalSize(147),
                  width: getHorizontalSize(261),
                  margin: getMargin(top: 51)),
              Container(
                  width: getHorizontalSize(158),
                  margin: getMargin(top: 56),
                  child: Text("msg_already_signed".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtNunitoBold30PinkA100)),
              Padding(
                  padding: getPadding(left: 60, top: 80, right: 51),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                            height: getVerticalSize(50),
                            width: getHorizontalSize(116),
                            text: "lbl_yes".tr,
                            margin: getMargin(top: 3),
                            shape: ButtonShape.RoundedBorder16,
                            padding: ButtonPadding.PaddingAll9,
                            fontStyle: ButtonFontStyle.NunitoExtraBold18,
                            onTap: () {
                              onTapYes();
                            }),
                        CustomButton(
                            height: getVerticalSize(50),
                            width: getHorizontalSize(116),
                            text: "lbl_sign_up2".tr,
                            margin: getMargin(left: 32, bottom: 3),
                            shape: ButtonShape.RoundedBorder16,
                            padding: ButtonPadding.PaddingAll9,
                            fontStyle: ButtonFontStyle.NunitoExtraBold18,
                            onTap: () {
                              onTapSignup();
                            })
                      ])),
              // Align(
              //     alignment: Alignment.centerLeft,
              //     child: Padding(
              //         padding: getPadding(left: 157, top: 58),
              //         child: Row(children: [
              //           Container(
              //               height: getVerticalSize(7),
              //               width: getHorizontalSize(14),
              //               decoration: BoxDecoration(
              //                   color: ColorConstant.pinkA100,
              //                   borderRadius: BorderRadius.circular(
              //                       getHorizontalSize(3)))),
              //           Container(
              //               height: getVerticalSize(7),
              //               width: getHorizontalSize(30),
              //               margin: getMargin(left: 5),
              //               decoration: BoxDecoration(
              //                   color: ColorConstant.pinkA100,
              //                   borderRadius: BorderRadius.circular(
              //                       getHorizontalSize(3))))
              //         ]))),
              const Spacer(),
              CustomImageView(
                  svgPath: ImageConstant.imgVector2,
                  height: getVerticalSize(102),
                  width: getHorizontalSize(double.maxFinite),
                  margin: getMargin(top: 0))
            ])));
  }

  /// Navigates to the alreadySignedUpOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the alreadySignedUpOneScreen.
  onTapYes() {
    Get.toNamed(
      AppRoutes.alreadySignedUpTwoScreen,
    );
  }

  /// Navigates to the alreadySignedUpOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the alreadySignedUpOneScreen.
  onTapSignup() {
    Get.toNamed(
      AppRoutes.alreadySignedUpOneScreen,
    );
  }
}
>>>>>>> dev
