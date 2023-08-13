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
                  // CustomButton2(
                  //   text: "lbl_note".tr,
                  //   onTap: () => onTapNote(),
                  //   icon: CustomImageView(
                  //       svgPath: ImageConstant.imgMdiplay,
                  //       height: getSize(32),
                  //       width: getSize(32),
                  //       margin: getMargin(top: 3, bottom: 3)),
                  // ),
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
