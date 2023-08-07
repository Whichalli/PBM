import 'controller/support_v1_0_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_checkbox.dart';

class SupportV10Screen extends GetWidget<SupportV10Controller> {
  const SupportV10Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(102),
                centerTitle: true,
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppbarImage(
                          height: getVerticalSize(46),
                          width: getHorizontalSize(375),
                          svgPath: ImageConstant.imgStatusbar),
                      Padding(
                          padding: getPadding(left: 16, top: 16, right: 218),
                          child: Row(children: [
                            AppbarImage(
                                height: getSize(24),
                                width: getSize(24),
                                svgPath:
                                    ImageConstant.imgArrowleftWhiteA70024x24,
                                margin: getMargin(bottom: 1),
                                onTap: () {
                                  onTapArrowleft5();
                                }),
                            AppbarSubtitle4(
                                text: "lbl_pbm_plan".tr,
                                margin: getMargin(left: 24))
                          ]))
                    ]),
                styleType: Style.bgFillPinkA100),
            body: SizedBox(
                width: double.maxFinite,
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(bottom: 5),
                    padding:
                        getPadding(left: 16, top: 32, right: 16, bottom: 32),
                    decoration: AppDecoration.white,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: double.maxFinite,
                              child: Container(
                                  padding: getPadding(
                                      left: 32, top: 31, right: 32, bottom: 31),
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_pbm_free".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold16),
                                        CustomButton(
                                            height: getVerticalSize(51),
                                            text: "lbl_try_now".tr,
                                            margin: getMargin(top: 23),
                                            variant:
                                                ButtonVariant.OutlineGray80001,
                                            shape: ButtonShape.RoundedBorder4,
                                            fontStyle:
                                                ButtonFontStyle.InterMedium18)
                                      ]))),
                          SizedBox(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 24, bottom: 5),
                                  padding: getPadding(
                                      left: 32, top: 31, right: 32, bottom: 31),
                                  decoration: AppDecoration.brand.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_pbm_premium".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold16),
                                        Obx(() => CustomCheckbox(
                                            text: "msg_protocol_prestige".tr,
                                            value: controller.isCheckbox.value,
                                            margin: getMargin(top: 23),
                                            fontStyle: CheckboxFontStyle
                                                .InterRegular16,
                                            onChange: (value) {
                                              controller.isCheckbox.value =
                                                  value;
                                            })),
                                        Obx(() => CustomCheckbox(
                                            text: "msg_training_school".tr,
                                            value: controller.isCheckbox1.value,
                                            margin:
                                                getMargin(top: 25, right: 72),
                                            fontStyle: CheckboxFontStyle
                                                .InterRegular16,
                                            onChange: (value) {
                                              controller.isCheckbox1.value =
                                                  value;
                                            })),
                                        Container(
                                            margin: getMargin(top: 22),
                                            decoration:
                                                AppDecoration.outlineBlack9003f,
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgIconpack,
                                                  height: getVerticalSize(23),
                                                  width: getHorizontalSize(22)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 1,
                                                      bottom: 2),
                                                  child: Text(
                                                      "msg_sell_tailored_uniform"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular16))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 24),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          bottom: 10),
                                                      child: Text("lbl_99".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold16)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 10),
                                                      child: Text(
                                                          "lbl_month".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular16))
                                                ])),
                                        CustomButton(
                                            height: getVerticalSize(51),
                                            text: "lbl_try_now".tr,
                                            margin: getMargin(top: 24),
                                            shape: ButtonShape.RoundedBorder4,
                                            fontStyle: ButtonFontStyle
                                                .InterMedium18WhiteA700,
                                            onTap: () {
                                              onTapTrynowone();
                                            })
                                      ])))
                        ])))));
  }

  /// Navigates to the upcomingBookingTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingTwoScreen.
  onTapTrynowone() {
    Get.toNamed(
      AppRoutes.upcomingBookingTwoScreen,
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft5() {
    Get.back();
  }
}
