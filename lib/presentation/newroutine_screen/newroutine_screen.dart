import 'controller/newroutine_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';
import 'package:pbm_care/widgets/app_bar/appbar_image.dart';
import 'package:pbm_care/widgets/app_bar/appbar_subtitle.dart';
import 'package:pbm_care/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_care/widgets/custom_button.dart';
import 'package:pbm_care/widgets/custom_floating_button.dart';

class NewroutineScreen extends GetWidget<NewroutineController> {
  const NewroutineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: getVerticalSize(731),
                width: getHorizontalSize(411),
                child: Stack(alignment: Alignment.center, children: [
                  CustomFloatingButton(
                      height: 64,
                      width: 64,
                      alignment: Alignment.bottomRight,
                      child: CustomImageView(
                          svgPath: ImageConstant.imgCheck,
                          height: getVerticalSize(32.0),
                          width: getHorizontalSize(32.0))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(top: 36, bottom: 36),
                          decoration: AppDecoration.fillGray100,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(56),
                                    leadingWidth: 80,
                                    leading: AppbarImage(
                                        height: getSize(48),
                                        width: getSize(48),
                                        svgPath: ImageConstant.imgMdiarrowleft,
                                        margin: getMargin(
                                            left: 32, top: 3, bottom: 4),
                                        onTap: () {
                                          onTapMdiarrowleft3();
                                        }),
                                    centerTitle: true,
                                    title:
                                        AppbarSubtitle(text: "lbl_diaper_f".tr),
                                    actions: [
                                      AppbarImage(
                                          height: getSize(40),
                                          width: getSize(40),
                                          svgPath: ImageConstant.imgDelete,
                                          margin: getMargin(
                                              left: 32,
                                              top: 7,
                                              right: 32,
                                              bottom: 8))
                                    ]),
                                Padding(
                                    padding: getPadding(
                                        left: 46, top: 32, right: 37),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getSize(40),
                                              padding: getPadding(
                                                  left: 15,
                                                  top: 8,
                                                  right: 15,
                                                  bottom: 8),
                                              decoration: AppDecoration
                                                  .txtFillBlack90001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder20),
                                              child: Text("lbl_s".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansBold16)),
                                          Container(
                                              width: getSize(40),
                                              margin: getMargin(left: 8),
                                              padding: getPadding(
                                                  left: 12,
                                                  top: 8,
                                                  right: 12,
                                                  bottom: 8),
                                              decoration: AppDecoration
                                                  .txtOutlineBlack90001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder20),
                                              child: Text("lbl_m".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansBold16Black90001)),
                                          Container(
                                              width: getSize(40),
                                              margin: getMargin(left: 8),
                                              padding: getPadding(
                                                  left: 14,
                                                  top: 8,
                                                  right: 14,
                                                  bottom: 8),
                                              decoration: AppDecoration
                                                  .txtFillBlack90001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder20),
                                              child: Text("lbl_t".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansBold16)),
                                          Container(
                                              width: getSize(40),
                                              margin: getMargin(left: 8),
                                              padding: getPadding(
                                                  left: 11,
                                                  top: 8,
                                                  right: 11,
                                                  bottom: 8),
                                              decoration: AppDecoration
                                                  .txtOutlineBlack90001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder20),
                                              child: Text("lbl_w".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansBold16Black90001)),
                                          Container(
                                              width: getSize(40),
                                              margin: getMargin(left: 8),
                                              padding: getPadding(
                                                  left: 14,
                                                  top: 8,
                                                  right: 14,
                                                  bottom: 8),
                                              decoration: AppDecoration
                                                  .txtOutlineBlack90001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder20),
                                              child: Text("lbl_t".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansBold16Black90001)),
                                          Container(
                                              width: getSize(40),
                                              margin: getMargin(left: 8),
                                              padding: getPadding(
                                                  left: 15,
                                                  top: 8,
                                                  right: 15,
                                                  bottom: 8),
                                              decoration: AppDecoration
                                                  .txtFillBlack90001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder20),
                                              child: Text("lbl_f".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansBold16)),
                                          Container(
                                              width: getSize(40),
                                              margin: getMargin(left: 8),
                                              padding: getPadding(
                                                  left: 15,
                                                  top: 8,
                                                  right: 15,
                                                  bottom: 8),
                                              decoration: AppDecoration
                                                  .txtFillBlack90001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder20),
                                              child: Text("lbl_s".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansBold16))
                                        ])),
                                Container(
                                    margin:
                                        getMargin(left: 32, top: 18, right: 32),
                                    padding: getPadding(top: 12, bottom: 12),
                                    decoration: AppDecoration.white.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text(
                                                  "msg_time_of_changing".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansLight24)),
                                          Padding(
                                              padding:
                                                  getPadding(top: 3, bottom: 2),
                                              child: Text("lbl_7_30_am".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSans24Black90059))
                                        ])),
                                Container(
                                    width: getHorizontalSize(332),
                                    margin:
                                        getMargin(left: 40, top: 10, right: 39),
                                    padding: getPadding(
                                        left: 20,
                                        top: 21,
                                        right: 20,
                                        bottom: 21),
                                    decoration: AppDecoration.fillPinkA10019
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder30),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 13),
                                              child: Text(
                                                  "msg_what_s_in_the_diaper".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSans14Gray600))
                                        ])),
                                Container(
                                    margin:
                                        getMargin(left: 32, top: 10, right: 37),
                                    padding: getPadding(
                                        left: 13,
                                        top: 14,
                                        right: 13,
                                        bottom: 14),
                                    decoration: AppDecoration.white.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_poo".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansLight24)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgSwitch,
                                              height: getVerticalSize(24),
                                              width: getHorizontalSize(48),
                                              margin: getMargin(
                                                  top: 5, right: 2, bottom: 5))
                                        ])),
                                Container(
                                    margin:
                                        getMargin(left: 32, top: 14, right: 32),
                                    padding: getPadding(
                                        left: 16,
                                        top: 14,
                                        right: 16,
                                        bottom: 14),
                                    decoration: AppDecoration.white.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(left: 2, top: 1),
                                              child: Text("lbl_pee".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansLight24)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgSwitchBlack900,
                                              height: getVerticalSize(24),
                                              width: getHorizontalSize(48),
                                              margin:
                                                  getMargin(top: 5, bottom: 5))
                                        ])),
                                CustomButton(
                                    height: getVerticalSize(64),
                                    width: getHorizontalSize(129),
                                    text: "lbl_color".tr,
                                    margin: getMargin(
                                        left: 134, top: 37, bottom: 108),
                                    variant: ButtonVariant.FillPink400,
                                    shape: ButtonShape.CircleBorder32,
                                    fontStyle: ButtonFontStyle.PoppinsRegular24,
                                    alignment: Alignment.centerLeft)
                              ])))
                ]))));
  }

  /// Navigates to the homeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeScreen.
  onTapMdiarrowleft3() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
