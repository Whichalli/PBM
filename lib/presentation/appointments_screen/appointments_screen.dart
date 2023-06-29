import 'controller/appointments_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';
import 'package:pbm_care/widgets/app_bar/appbar_image.dart';
import 'package:pbm_care/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_care/widgets/custom_bottom_bar.dart';
import 'package:pbm_care/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class AppointmentsScreen extends GetWidget<AppointmentsController> {
  const AppointmentsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    top: 14,
                    bottom: 14,
                  ),
                  decoration: AppDecoration.brand.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder40,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomAppBar(
                        height: getVerticalSize(
                          78,
                        ),
                        title: Padding(
                          padding: getPadding(
                            left: 20,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 13,
                                ),
                                child: Text(
                                  "lbl_june".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoBold20WhiteA700
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.8,
                                    ),
                                  ),
                                ),
                              ),
                              AppbarImage(
                                height: getSize(
                                  17,
                                ),
                                width: getSize(
                                  17,
                                ),
                                svgPath: ImageConstant.imgArrowrightYellow5002,
                                margin: getMargin(
                                  left: 6,
                                  top: 21,
                                  bottom: 2,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 49,
                                  bottom: 20,
                                ),
                                child: Text(
                                  "lbl_appointments".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoRegular15PinkA100
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.6,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 27,
                          top: 14,
                          right: 33,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "lbl_s".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoLight10.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                            Text(
                              "lbl_m".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtNunitoRegular10WhiteA700.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                            Text(
                              "lbl_t".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtNunitoRegular10WhiteA700.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                            Text(
                              "lbl_w".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtNunitoRegular10WhiteA700.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                            Text(
                              "lbl_th".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtNunitoRegular10WhiteA700.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                            Text(
                              "lbl_f".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtNunitoRegular10WhiteA700.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                            Text(
                              "lbl_s".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoLight10.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 24,
                          top: 2,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "lbl_6".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoRegular20.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.8,
                                ),
                              ),
                            ),
                            Container(
                              width: getSize(
                                26,
                              ),
                              margin: getMargin(
                                left: 30,
                                top: 1,
                              ),
                              padding: getPadding(
                                left: 8,
                                top: 1,
                                right: 8,
                                bottom: 1,
                              ),
                              decoration:
                                  AppDecoration.txtFillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtRoundedBorder11,
                              ),
                              child: Text(
                                "lbl_7".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoBold15LightblueA700
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.6,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 31,
                              ),
                              child: Text(
                                "lbl_8".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoRegular20.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.8,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 39,
                              ),
                              child: Text(
                                "lbl_9".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoRegular20.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.8,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 34,
                              ),
                              child: Text(
                                "lbl_10".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoRegular20.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.8,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 31,
                              ),
                              child: Text(
                                "lbl_11".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoRegular20.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.8,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 25,
                              ),
                              child: Text(
                                "lbl_122".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoRegular20.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.8,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: getPadding(
                            top: 28,
                            right: 42,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_monday".tr,
                                      style: TextStyle(
                                        color: ColorConstant.pinkA100,
                                        fontSize: getFontSize(
                                          15,
                                        ),
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: getHorizontalSize(
                                          0.6,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "lbl_june_7_2021".tr,
                                      style: TextStyle(
                                        color: ColorConstant.pinkA100,
                                        fontSize: getFontSize(
                                          15,
                                        ),
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: getHorizontalSize(
                                          0.6,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgUcalendaralt,
                                height: getSize(
                                  18,
                                ),
                                width: getSize(
                                  18,
                                ),
                                margin: getMargin(
                                  left: 49,
                                  bottom: 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: getPadding(
                  left: 18,
                  top: 23,
                  right: 18,
                  bottom: 23,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 19,
                          top: 8,
                          right: 19,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: CustomButton(
                                height: getVerticalSize(
                                  45,
                                ),
                                text: "lbl_upcoming".tr,
                                margin: getMargin(
                                  right: 11,
                                ),
                                shape: ButtonShape.RoundedBorder22,
                                padding: ButtonPadding.PaddingT14,
                                fontStyle: ButtonFontStyle.NunitoBold15,
                              ),
                            ),
                            Expanded(
                              child: CustomButton(
                                height: getVerticalSize(
                                  45,
                                ),
                                text: "lbl_past".tr,
                                margin: getMargin(
                                  left: 11,
                                ),
                                variant: ButtonVariant.OutlinePinkA100_1,
                                shape: ButtonShape.RoundedBorder22,
                                padding: ButtonPadding.PaddingT14,
                                fontStyle: ButtonFontStyle.NunitoBold15PinkA100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 36,
                        right: 22,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 20,
                              bottom: 18,
                            ),
                            child: Text(
                              "lbl_12_pm".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoBold10.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: SizedBox(
                              height: getVerticalSize(
                                53,
                              ),
                              child: VerticalDivider(
                                width: getHorizontalSize(
                                  6,
                                ),
                                thickness: getVerticalSize(
                                  6,
                                ),
                                color: ColorConstant.pinkA100,
                              ),
                            ),
                          ),
                          Container(
                            height: getSize(
                              3,
                            ),
                            width: getSize(
                              3,
                            ),
                            margin: getMargin(
                              left: 12,
                              top: 25,
                              bottom: 25,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  1,
                                ),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(
                                  0.5,
                                  0,
                                ),
                                end: Alignment(
                                  0.5,
                                  1,
                                ),
                                colors: [
                                  ColorConstant.lightBlueA700,
                                  ColorConstant.lightBlueA400,
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              53,
                            ),
                            width: getHorizontalSize(
                              240,
                            ),
                            margin: getMargin(
                              left: 14,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.pinkA100,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 3,
                        top: 15,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 17,
                              bottom: 21,
                            ),
                            child: Text(
                              "lbl_1_pm".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoBold10.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 14,
                            ),
                            child: SizedBox(
                              height: getVerticalSize(
                                53,
                              ),
                              child: VerticalDivider(
                                width: getHorizontalSize(
                                  6,
                                ),
                                thickness: getVerticalSize(
                                  6,
                                ),
                                color: ColorConstant.gray40099,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 3,
                        top: 15,
                        right: 12,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 19,
                              bottom: 19,
                            ),
                            child: Text(
                              "lbl_2_pm".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoBold10.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 14,
                            ),
                            child: SizedBox(
                              height: getVerticalSize(
                                53,
                              ),
                              child: VerticalDivider(
                                width: getHorizontalSize(
                                  6,
                                ),
                                thickness: getVerticalSize(
                                  6,
                                ),
                                color: ColorConstant.pinkA100,
                              ),
                            ),
                          ),
                          Container(
                            height: getSize(
                              3,
                            ),
                            width: getSize(
                              3,
                            ),
                            margin: getMargin(
                              left: 13,
                              top: 25,
                              bottom: 25,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  1,
                                ),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(
                                  0.5,
                                  0,
                                ),
                                end: Alignment(
                                  0.5,
                                  1,
                                ),
                                colors: [
                                  ColorConstant.lightBlueA700,
                                  ColorConstant.lightBlueA400,
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              53,
                            ),
                            width: getHorizontalSize(
                              202,
                            ),
                            margin: getMargin(
                              left: 13,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.pinkA100,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  10,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgUtrash,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 24,
                              top: 15,
                              bottom: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 3,
                        top: 15,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 17,
                              bottom: 21,
                            ),
                            child: Text(
                              "lbl_3_pm".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoBold10.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 14,
                            ),
                            child: SizedBox(
                              height: getVerticalSize(
                                53,
                              ),
                              child: VerticalDivider(
                                width: getHorizontalSize(
                                  6,
                                ),
                                thickness: getVerticalSize(
                                  6,
                                ),
                                color: ColorConstant.blueGray10001,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 3,
                        top: 15,
                        right: 22,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 19,
                              bottom: 19,
                            ),
                            child: Text(
                              "lbl_4_pm".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoBold10.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 14,
                            ),
                            child: SizedBox(
                              height: getVerticalSize(
                                53,
                              ),
                              child: VerticalDivider(
                                width: getHorizontalSize(
                                  6,
                                ),
                                thickness: getVerticalSize(
                                  6,
                                ),
                                color: ColorConstant.pinkA100,
                              ),
                            ),
                          ),
                          Container(
                            height: getSize(
                              3,
                            ),
                            width: getSize(
                              3,
                            ),
                            margin: getMargin(
                              left: 13,
                              top: 25,
                              bottom: 25,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  1,
                                ),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(
                                  0.5,
                                  0,
                                ),
                                end: Alignment(
                                  0.5,
                                  1,
                                ),
                                colors: [
                                  ColorConstant.lightBlueA700,
                                  ColorConstant.lightBlueA400,
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              53,
                            ),
                            width: getHorizontalSize(
                              240,
                            ),
                            margin: getMargin(
                              left: 13,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.pinkA100,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 3,
                        top: 15,
                        right: 17,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 17,
                              bottom: 24,
                            ),
                            child: Text(
                              "lbl_5_pm".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtNunitoBold10.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.4,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 14,
                            ),
                            child: SizedBox(
                              height: getVerticalSize(
                                56,
                              ),
                              child: VerticalDivider(
                                width: getHorizontalSize(
                                  6,
                                ),
                                thickness: getVerticalSize(
                                  6,
                                ),
                                color: ColorConstant.blueGray10001,
                                endIndent: getHorizontalSize(
                                  3,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgPlusPinkA100,
                            height: getSize(
                              47,
                            ),
                            width: getSize(
                              47,
                            ),
                            margin: getMargin(
                              top: 9,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Volume:
        return "/";
      case BottomBarEnum.Sort:
        return "/";
      case BottomBarEnum.Vuesaxlinearaddpinka100:
        return "/";
      case BottomBarEnum.Car:
        return "/";
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      default:
        return DefaultWidget();
    }
  }
}
