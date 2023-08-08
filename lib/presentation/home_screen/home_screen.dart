<<<<<<< HEAD
import 'controller/home_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/custom_button.dart';import 'package:pbm_care/widgets/custom_floating_button.dart';class HomeScreen extends GetWidget<HomeController> {const HomeScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray200, body: SizedBox(width: getHorizontalSize(411), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgMdiarrowleft, height: getVerticalSize(28), width: getHorizontalSize(32), onTap: () {onTapImgArrowleft();}), Padding(padding: getPadding(left: 32, top: 12), child: Text("lbl_routines".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular30)), CustomButton(height: getVerticalSize(38), text: "lbl_sleep".tr, margin: getMargin(left: 16, top: 8, right: 60), variant: ButtonVariant.FillWhiteA700, shape: ButtonShape.RoundedBorder8, padding: ButtonPadding.PaddingT2, fontStyle: ButtonFontStyle.OpenSansLight24Black90001, suffixWidget: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgMdiplay)), onTap: () {onTapSleep();}), CustomButton(height: getVerticalSize(38), text: "lbl_activity".tr, margin: getMargin(left: 16, top: 17, right: 60), variant: ButtonVariant.FillWhiteA700, shape: ButtonShape.RoundedBorder8, padding: ButtonPadding.PaddingT2, fontStyle: ButtonFontStyle.OpenSansLight24Black90001, suffixWidget: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgMdiplay)), onTap: () {onTapActivity();}), CustomButton(height: getVerticalSize(38), text: "lbl_last_fed_time".tr, margin: getMargin(left: 16, top: 17, right: 64), variant: ButtonVariant.FillWhiteA700, shape: ButtonShape.RoundedBorder8, padding: ButtonPadding.PaddingT2, fontStyle: ButtonFontStyle.OpenSansLight24Black90001, suffixWidget: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgMdiplay)), onTap: () {onTapLastfedtime();}), CustomButton(height: getVerticalSize(38), text: "lbl_diaper_change".tr, margin: getMargin(left: 16, top: 17, right: 60), variant: ButtonVariant.FillWhiteA700, shape: ButtonShape.RoundedBorder8, padding: ButtonPadding.PaddingT2, fontStyle: ButtonFontStyle.OpenSansLight24Black90001, suffixWidget: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgMdiplay)), onTap: () {onTapDiaperchange();}), CustomButton(height: getVerticalSize(38), text: "lbl_note".tr, margin: getMargin(left: 16, top: 17, right: 60), variant: ButtonVariant.FillWhiteA700, shape: ButtonShape.RoundedBorder8, padding: ButtonPadding.PaddingT2, fontStyle: ButtonFontStyle.OpenSansLight24Black90001, suffixWidget: Container(margin: getMargin(left: 30), child: CustomImageView(svgPath: ImageConstant.imgMdiplay)), onTap: () {onTapNote();}), Container(margin: getMargin(left: 16, top: 17, right: 60), padding: getPadding(left: 16, top: 1, right: 16, bottom: 1), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(left: 7, top: 1), child: Text("lbl_moment".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansLight24)), CustomImageView(svgPath: ImageConstant.imgMdiplay, height: getSize(32), width: getSize(32), margin: getMargin(top: 1, bottom: 1))])), Container(margin: getMargin(left: 16, top: 17, right: 60), padding: getPadding(left: 16, top: 2, right: 16, bottom: 2), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(left: 7), child: Text("lbl_milestone".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansLight24)), CustomImageView(svgPath: ImageConstant.imgMdiplay, height: getSize(32), width: getSize(32))])), Container(margin: getMargin(left: 16, top: 17, right: 60), padding: getPadding(left: 16, top: 2, right: 16, bottom: 2), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_growth".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansLight24), CustomImageView(svgPath: ImageConstant.imgMdiplay, height: getSize(32), width: getSize(32))])), Container(margin: getMargin(left: 16, top: 17, right: 60), padding: getPadding(left: 16, top: 2, right: 16, bottom: 2), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_medication".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansLight24), CustomImageView(svgPath: ImageConstant.imgMdiplay, height: getSize(32), width: getSize(32))])), Container(margin: getMargin(left: 16, top: 12, right: 60), padding: getPadding(left: 16, right: 16), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 5), child: Text("lbl_teething".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansLight24)), CustomImageView(svgPath: ImageConstant.imgMdiplay, height: getSize(32), width: getSize(32), margin: getMargin(top: 3, bottom: 3))])), Container(margin: getMargin(left: 16, top: 12, right: 60), padding: getPadding(left: 16, right: 16), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 5), child: Text("lbl_pumping".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansLight24)), CustomImageView(svgPath: ImageConstant.imgMdiplay, height: getSize(32), width: getSize(32), margin: getMargin(top: 3, bottom: 3))])), Container(margin: getMargin(left: 16, top: 12, right: 64, bottom: 73), padding: getPadding(left: 12, right: 12), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 5), child: Text("lbl_temperature".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansLight24)), CustomImageView(svgPath: ImageConstant.imgMdiplay, height: getSize(32), width: getSize(32), margin: getMargin(top: 3, right: 4, bottom: 3))]))])), floatingActionButton: CustomFloatingButton(height: 64, width: 64, onTap: () {onTapFloatingactionb();}, child: CustomImageView(svgPath: ImageConstant.imgPlus, height: getVerticalSize(32.0), width: getHorizontalSize(32.0))))); } 
/// Navigates to the homeEmptyScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the homeEmptyScreen.
onTapFloatingactionb() { Get.offNamed(AppRoutes.homeEmptyScreen,); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] library to 
/// navigate to the previous screen in the navigation stack.
onTapImgArrowleft() { Get.back(); } 
/// Navigates to the tasktimerpageScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the tasktimerpageScreen.
onTapSleep() { Get.toNamed(AppRoutes.tasktimerpageScreen, ); } 
/// Navigates to the routinefinishedpageScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the routinefinishedpageScreen.
onTapActivity() { Get.toNamed(AppRoutes.routinefinishedpageScreen, ); } 
/// Navigates to the viewroutineScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the viewroutineScreen.
onTapLastfedtime() { Get.toNamed(AppRoutes.viewroutineScreen, ); } 
/// Navigates to the newroutineScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the newroutineScreen.
onTapDiaperchange() { Get.toNamed(AppRoutes.newroutineScreen, ); } 
/// Navigates to the home1Screen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the home1Screen.
onTapNote() { Get.toNamed(AppRoutes.home1Screen, ); } 
 }
=======
import 'package:pbm_app/widgets/widgets.dart';

import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_floating_button.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorConstant.gray200,
        automaticallyImplyLeading: false,
        title: Text("lbl_routines".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style:
                AppStyle.txtAlegreyaSansBold24.copyWith(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),
      ),
      body: SizedBox(
          width: getHorizontalSize(411),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomButton2(
                    text: "lbl_sleep".tr,
                    onTap: () => onTapSleep(),
                    icon: CustomImageView(
                        svgPath: ImageConstant.imgMdiplay,
                        height: getSize(32),
                        width: getSize(32),
                        margin: getMargin(top: 3, bottom: 3)),
                  ),
                  CustomButton2(
                    text: "lbl_activity".tr,
                    onTap: () => onTapActivity(),
                    icon: CustomImageView(
                        svgPath: ImageConstant.imgMdiplay,
                        height: getSize(32),
                        width: getSize(32),
                        margin: getMargin(top: 3, bottom: 3)),
                  ),
                  CustomButton2(
                    text: "lbl_last_fed_time".tr,
                    onTap: () => onTapLastfedtime(),
                    icon: CustomImageView(
                        svgPath: ImageConstant.imgMdiplay,
                        height: getSize(32),
                        width: getSize(32),
                        margin: getMargin(top: 3, bottom: 3)),
                  ),
                  CustomButton2(
                    text: "lbl_diaper_change".tr,
                    onTap: () => onTapDiaperchange(),
                    icon: CustomImageView(
                        svgPath: ImageConstant.imgMdiplay,
                        height: getSize(32),
                        width: getSize(32),
                        margin: getMargin(top: 3, bottom: 3)),
                  ),
                  CustomButton2(
                    text: "lbl_note".tr,
                    onTap: () => onTapNote(),
                    icon: CustomImageView(
                        svgPath: ImageConstant.imgMdiplay,
                        height: getSize(32),
                        width: getSize(32),
                        margin: getMargin(top: 3, bottom: 3)),
                  ),
                  CustomButton2(
                    text: "lbl_pumping".tr,
                    onTap: () => onTapPumpig(),
                    icon: CustomImageView(
                        svgPath: ImageConstant.imgMdiplay,
                        height: getSize(32),
                        width: getSize(32),
                        margin: getMargin(top: 3, bottom: 3)),
                  ),
                  CustomButton2(
                    text: "lbl_moment".tr,
                    onTap: () {},
                    icon: CustomImageView(
                        svgPath: ImageConstant.imgMdiplay,
                        height: getSize(32),
                        width: getSize(32),
                        margin: getMargin(top: 3, bottom: 3)),
                  ),
                  CustomButton2(
                    text: "lbl_milestone".tr,
                    onTap: () {},
                    icon: CustomImageView(
                        svgPath: ImageConstant.imgMdiplay,
                        height: getSize(32),
                        width: getSize(32),
                        margin: getMargin(top: 3, bottom: 3)),
                  ),
                  CustomButton2(
                    text: "lbl_growth".tr,
                    onTap: () {},
                    icon: CustomImageView(
                        svgPath: ImageConstant.imgMdiplay,
                        height: getSize(32),
                        width: getSize(32),
                        margin: getMargin(top: 3, bottom: 3)),
                  ),
                  CustomButton2(
                    text: "lbl_medication".tr,
                    onTap: () {},
                    icon: CustomImageView(
                        svgPath: ImageConstant.imgMdiplay,
                        height: getSize(32),
                        width: getSize(32),
                        margin: getMargin(top: 3, bottom: 3)),
                  ),
                  CustomButton2(
                    text: "lbl_teething".tr,
                    onTap: () {},
                    icon: CustomImageView(
                        svgPath: ImageConstant.imgMdiplay,
                        height: getSize(32),
                        width: getSize(32),
                        margin: getMargin(top: 3, bottom: 3)),
                  ),
                  CustomButton2(
                    text: "lbl_temperature".tr,
                    onTap: () {},
                    icon: CustomImageView(
                        svgPath: ImageConstant.imgMdiplay,
                        height: getSize(32),
                        width: getSize(32),
                        margin: getMargin(top: 3, bottom: 3)),
                  ),
                ]),
          )),
      // floatingActionButton: CustomFloatingButton(
      //     height: 64,
      //     width: 64,
      //     onTap: () {
      //       onTapFloatingactionb();
      //     },
      //     child: CustomImageView(
      //         svgPath: ImageConstant.imgPlus,
      //         height: getVerticalSize(32.0),
      //         width: getHorizontalSize(32.0)))
    );
  }

  /// Navigates to the homeEmptyScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeEmptyScreen.
  onTapFloatingactionb() {
    Get.offNamed(AppRoutes.homeEmptyScreen, arguments: Get.arguments);
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgArrowleft() {
    Get.back();
  }

  /// Navigates to the tasktimerpageScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the tasktimerpageScreen.
  onTapSleep() {
    Get.toNamed(AppRoutes.tasktimerpageScreen, arguments: Get.arguments);
  }

  /// Navigates to the tasktimerpageScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the tasktimerpageScreen.
  onTapPumpig() {
    Get.toNamed(AppRoutes.pumpingScreen, arguments: Get.arguments);
  }

  /// Navigates to the routinefinishedpageScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the routinefinishedpageScreen.
  onTapActivity() {
    Get.toNamed(AppRoutes.routinefinishedpageScreen, arguments: Get.arguments);
  }

  /// Navigates to the viewroutineScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the viewroutineScreen.
  onTapLastfedtime() {
    Get.toNamed(AppRoutes.viewroutineScreen, arguments: Get.arguments);
  }

  /// Navigates to the newroutineScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the newroutineScreen.
  onTapDiaperchange() {
    Get.toNamed(AppRoutes.newroutineScreen, arguments: Get.arguments);
  }

  /// Navigates to the home1Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the home1Screen.
  onTapNote() {
    Get.toNamed(AppRoutes.home1Screen, arguments: Get.arguments);
  }
}
>>>>>>> dev
