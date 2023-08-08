<<<<<<< HEAD
import 'controller/choose_gender_age_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/custom_button.dart';class ChooseGenderAgeScreen extends GetWidget<ChooseGenderAgeController> {const ChooseGenderAgeScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Expanded(child: SingleChildScrollView(child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(141), width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Container(padding: getPadding(left: 28, top: 14, right: 28, bottom: 14), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgVector4), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(bottom: 49), child: Text("lbl_baby_info".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoBold20WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.8))))]))), Align(alignment: Alignment.bottomCenter, child: Text("lbl_select_age".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoBold30))])), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 19, right: 73), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Container(padding: getPadding(left: 15, top: 13, right: 15, bottom: 13), decoration: AppDecoration.outlineBlue400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder23), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.center, child: Text("lbl_0".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoRegular10)), Padding(padding: getPadding(top: 12, right: 3), child: Text("lbl_1".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoRegular15)), Padding(padding: getPadding(top: 11), child: Text("lbl_2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoBold25)), Padding(padding: getPadding(top: 6, right: 3), child: Text("lbl_3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoRegular15)), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 13, bottom: 4), child: Text("lbl_4".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoRegular10)))])), Padding(padding: getPadding(left: 1, top: 84, bottom: 75), child: Text("lbl_month_s_old".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanRegular14))]))), Padding(padding: getPadding(top: 40), child: Text("lbl_choose_gender".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoBold30)), Padding(padding: getPadding(left: 38, top: 52, right: 34), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: getVerticalSize(64), width: getHorizontalSize(129), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(left: 43, top: 5), child: Text("lbl_m".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoBold30WhiteA700))), CustomButton(height: getVerticalSize(64), width: getHorizontalSize(129), text: "lbl_m".tr, shape: ButtonShape.CircleBorder32, fontStyle: ButtonFontStyle.PoppinsRegular24, alignment: Alignment.center)])), SizedBox(height: getVerticalSize(64), width: getHorizontalSize(129), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(left: 24, top: 6), child: Text("lbl_f".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoBold30WhiteA700))), CustomButton(height: getVerticalSize(64), width: getHorizontalSize(129), text: "lbl_f".tr, shape: ButtonShape.CircleBorder32, fontStyle: ButtonFontStyle.PoppinsRegular24, alignment: Alignment.center)]))])), Container(height: getVerticalSize(289), width: double.maxFinite, margin: getMargin(top: 134), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.bottomCenter, child: SizedBox(height: getVerticalSize(242), width: double.maxFinite, child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgVector392x375, height: getVerticalSize(92), width: getHorizontalSize(375), alignment: Alignment.topCenter), Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(left: 141, top: 28), child: Row(children: [Container(height: getVerticalSize(6), width: getHorizontalSize(31), decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.14, 0), end: Alignment(1.03, 2.13), colors: [ColorConstant.pinkA700, ColorConstant.lightBlue4002d]))), Container(height: getVerticalSize(6), width: getHorizontalSize(14), margin: getMargin(left: 6), decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.14, 0), end: Alignment(1.03, 2.13), colors: [ColorConstant.pinkA700, ColorConstant.lightBlue4002d]))), Container(height: getVerticalSize(6), width: getHorizontalSize(15), margin: getMargin(left: 5), decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.14, 0), end: Alignment(1.03, 2.13), colors: [ColorConstant.pinkA700, ColorConstant.lightBlue4002d])))])))]))), CustomButton(width: getHorizontalSize(154), text: "lbl_save".tr, margin: getMargin(left: 100), variant: ButtonVariant.GradientPinkA700Lightblue4002d, shape: ButtonShape.Square, fontStyle: ButtonFontStyle.NunitoExtraBold18, onTap: () {onTapSave();}, alignment: Alignment.topLeft)]))])))])))); } 
/// Navigates to the homeOnboardingContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the homeOnboardingContainerScreen.
onTapSave() { Get.toNamed(AppRoutes.homeOnboardingContainerScreen, ); } 
 }
=======
import 'dart:developer';

import 'controller/choose_gender_age_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class ChooseGenderAgeScreen extends GetWidget<ChooseGenderAgeController> {
  const ChooseGenderAgeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Stack(
            children: [
              CustomImageView(
                height: 70,
                width: double.maxFinite,
                imagePath: ImageConstant.imgVector4,
              ),
              Positioned(
                left: 24,
                top: 8,
                child: Padding(
                    padding: getPadding(bottom: 0),
                    child: Text("lbl_baby_info".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOpenSansRomanBold24WhiteA700
                            .copyWith(letterSpacing: getHorizontalSize(0.8)))),
              ),
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            // height: getVerticalSize(1),
                            width: double.maxFinite,
                            child: Column(
                                // alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text("lbl_select_age".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtNunitoBold30))
                                ])),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 19),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          padding:
                                              getPadding(top: 8, bottom: 8),
                                          margin: getMargin(right: 8),
                                          width: 50,
                                          height: 200,
                                          decoration: AppDecoration
                                              .outlineBlue400
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder23),
                                          child: ListWheelScrollView(
                                            useMagnifier: true,
                                            magnification: 1.3,
                                            physics:
                                                const BouncingScrollPhysics(),
                                            onSelectedItemChanged: (value) {
                                              controller.age.value = value + 1;
                                            },
                                            itemExtent: 50.0,
                                            children: List.generate(
                                                100,
                                                ((index) => Text(
                                                      '${index + 1}',
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ))),
                                          )),
                                      Column(
                                        children: [
                                          Obx(() => Padding(
                                              padding: getPadding(
                                                  left: 1,
                                                  // top: 84,
                                                  bottom: 140),
                                              child: Text(
                                                  '${controller.age.value >= 12 ? '${controller.age.value % 12}' : '${controller.age.value}'} ${"lbl_month_s_old".tr}',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold16))),
                                          Obx(() => Padding(
                                              padding: getPadding(),
                                              child: Text(
                                                  '${controller.age.value >= 12 ? '${controller.age.value ~/ 12}' : '0'} ${"lbl_year_s_old".tr}',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold16))),
                                        ],
                                      )
                                    ]))),
                        Padding(
                            padding: getPadding(top: 40),
                            child: Text("lbl_choose_gender".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoBold30)),
                        Padding(
                            padding: getPadding(left: 38, top: 14, right: 34),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Obx(() => CustomButton(
                                      height: getVerticalSize(50),
                                      width: getHorizontalSize(120),
                                      text: "lbl_m".tr,
                                      variant: (controller.gender.value
                                                  .toUpperCase() !=
                                              'M')
                                          ? ButtonVariant.OutlinePinkA100_2
                                          : null,
                                      onTap: () {
                                        controller.gender.value = 'M';
                                      },
                                      shape: ButtonShape.CircleBorder19,
                                      fontStyle: (controller.gender.value
                                                  .toUpperCase() !=
                                              'M')
                                          ? ButtonFontStyle.NunitoBold15PinkA100
                                          : ButtonFontStyle.OpenSansRomanBold18,
                                      alignment: Alignment.center)),
                                  Obx(() => CustomButton(
                                      height: getVerticalSize(50),
                                      width: getHorizontalSize(120),
                                      text: "lbl_f".tr,
                                      variant: (controller.gender.value
                                                  .toUpperCase() !=
                                              'F')
                                          ? ButtonVariant.OutlinePinkA100_2
                                          : null,
                                      onTap: () {
                                        controller.gender.value = 'F';
                                      },
                                      shape: ButtonShape.CircleBorder19,
                                      fontStyle: (controller.gender.value
                                                  .toUpperCase() !=
                                              'F')
                                          ? ButtonFontStyle.NunitoBold15PinkA100
                                          : ButtonFontStyle.OpenSansRomanBold18,
                                      alignment: Alignment.center))
                                ])),
                        Container(
                            // height: getVerticalSize(289),
                            width: double.maxFinite,
                            margin: getMargin(top: 104),
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(
                                      // height: getVerticalSize(152),
                                      width: double.maxFinite,
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 141, top: 78),
                                              child: Row(children: [
                                                Container(
                                                    height: getVerticalSize(6),
                                                    width:
                                                        getHorizontalSize(31),
                                                    decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                                begin:
                                                                    Alignment(
                                                                        0.14,
                                                                        0),
                                                                end: Alignment(
                                                                    1.03, 2.13),
                                                                colors: [
                                                          ColorConstant
                                                              .pinkA700,
                                                          ColorConstant
                                                              .lightBlue4002d
                                                        ]))),
                                                Container(
                                                    height: getVerticalSize(6),
                                                    width:
                                                        getHorizontalSize(14),
                                                    margin: getMargin(left: 6),
                                                    decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                                begin:
                                                                    Alignment(
                                                                        0.14,
                                                                        0),
                                                                end: Alignment(
                                                                    1.03, 2.13),
                                                                colors: [
                                                          ColorConstant
                                                              .pinkA700,
                                                          ColorConstant
                                                              .lightBlue4002d
                                                        ]))),
                                                Container(
                                                    height: getVerticalSize(6),
                                                    width:
                                                        getHorizontalSize(15),
                                                    margin: getMargin(left: 5),
                                                    decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                                begin:
                                                                    Alignment(
                                                                        0.14,
                                                                        0),
                                                                end: Alignment(
                                                                    1.03, 2.13),
                                                                colors: [
                                                          ColorConstant
                                                              .pinkA700,
                                                          ColorConstant
                                                              .lightBlue4002d
                                                        ])))
                                              ]))))),
                              Obx(() => CustomButton(
                                  width: getHorizontalSize(154),
                                  text: controller.loading.value
                                      ? null
                                      : "lbl_save".tr,
                                  // margin: getMargin(left: 100),
                                  variant: ButtonVariant
                                      .GradientPinkA700Lightblue4002d,
                                  shape: ButtonShape.RoundedBorder4,
                                  fontStyle: ButtonFontStyle.NunitoExtraBold18,
                                  onTap: controller.loading.value
                                      ? null
                                      : () async {
                                          controller.loading.value = true;
                                          await controller.onTapSave();
                                          controller.loading.value = false;
                                        },
                                  icon: controller.loading.value
                                      ? SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                            color: Colors.white,
                                            backgroundColor:
                                                ColorConstant.pinkA100,
                                          ),
                                        )
                                      : null,
                                  alignment: Alignment.center))
                            ]))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgVector392x375,
              height: getVerticalSize(92),
              width: getHorizontalSize(375),
              alignment: Alignment.topCenter),
        ]));
  }
}
>>>>>>> dev
