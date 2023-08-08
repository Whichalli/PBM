<<<<<<< HEAD
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
=======
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'controller/appointments_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_bottom_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class AppointmentsScreen extends GetWidget<AppointmentsController> {
  const AppointmentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: GetBuilder<AppointmentsController>(builder: (controller) {
        return SizedBox(
>>>>>>> dev
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
<<<<<<< HEAD
                    borderRadius: BorderRadiusStyle.roundedBorder40,
=======
                    borderRadius: BorderRadiusStyle.roundedBorder16,
>>>>>>> dev
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomAppBar(
                        height: getVerticalSize(
<<<<<<< HEAD
                          78,
=======
                          50,
>>>>>>> dev
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
<<<<<<< HEAD
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
=======
>>>>>>> dev
                            ],
                          ),
                        ),
                      ),
                      Padding(
<<<<<<< HEAD
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
=======
                        padding: const EdgeInsets.only(top: 12.0),
                        child: SizedBox(
                          width: double.maxFinite,
                          height: 80,
                          child: RotatedBox(
                            quarterTurns: -1,
                            // angle: 1,
                            child: ListWheelScrollView(
                                // magnification: 1.2,
                                // useMagnifier: true,
                                physics: const BouncingScrollPhysics(),
                                itemExtent: 50,
                                onSelectedItemChanged: (value) {
                                  controller.selectedIndex?.value = value + 1;
                                  log('value ${controller.selectedIndex?.value} value = $value');
                                  controller.update();
                                },
                                children: List.generate(
                                    controller.data!['booking'].length,
                                    (index) {
                                  controller.date.value =
                                      (controller.data!['booking'][index]
                                              ['date'] as Timestamp)
                                          .toDate();
                                  controller.date.value = DateTime(
                                      controller.date.value.year,
                                      controller.date.value.month,
                                      controller.date.value.day);
                                  DateTime now = DateTime.now();

                                  // log('controller.date.value.difference(DateTime.now()) = ${controller.date.value.difference(DateTime(now.year, now.month, now.day))}');
                                  if (controller.date.value
                                              .difference(DateTime(
                                                  now.year, now.month, now.day))
                                              .inHours >=
                                          0 &&
                                      !controller.isNextDate.value) {
                                    controller.isNextDate.value = true;
                                    controller.nextDate = controller.date;
                                    controller.activeBookingIndex = index.obs;
                                    controller.getBookingTime(index);
                                    controller.activeBookingTime =
                                        controller.data!['booking'][index];
                                  }
                                  return RotatedBox(
                                      quarterTurns: -3,
                                      child: Column(
                                        children: [
                                          Text(
                                            days[
                                                (controller.date.value.weekday -
                                                    1)],
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.whiteA70001),
                                          ),
                                          Container(
                                            width: 40,
                                            height: 50,
                                            alignment: Alignment.center,
                                            decoration: index.obs ==
                                                    controller
                                                        .activeBookingIndex
                                                ? BoxDecoration(
                                                    color: ColorConstant
                                                        .whiteA70001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            1000))
                                                : null,
                                            child: Text(
                                              '${controller.date.value.day}',
                                              style: TextStyle(
                                                  fontSize: index.obs ==
                                                          controller
                                                              .activeBookingIndex
                                                      ? 24
                                                      : 18,
                                                  color: index.obs ==
                                                          controller
                                                              .activeBookingIndex
                                                      ? ColorConstant.blue400
                                                      : ColorConstant
                                                          .whiteA70001),
                                            ),
                                          ),
                                        ],
                                      ));
                                })),
                          ),
>>>>>>> dev
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: getPadding(
<<<<<<< HEAD
                            top: 28,
=======
                            top: 12,
>>>>>>> dev
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
<<<<<<< HEAD
                                        color: ColorConstant.pinkA100,
=======
                                        color: ColorConstant.whiteA70001,
>>>>>>> dev
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
<<<<<<< HEAD
                                        color: ColorConstant.pinkA100,
=======
                                        color: ColorConstant.whiteA70001,
>>>>>>> dev
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
<<<<<<< HEAD
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
=======
              // Expanded(
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Align(
              //         alignment: Alignment.center,
              //         child: Padding(
              //           padding: getPadding(
              //             left: 19,
              //             top: 8,
              //             right: 19,
              //           ),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Expanded(
              //                 child: Obx(() => CustomButton(
              //                       onTap: () async {
              //                         await controller.switchTab(
              //                             upcoming: true);
              //                       },
              //                       height: getVerticalSize(
              //                         45,
              //                       ),
              //                       text: "lbl_upcoming".tr,
              //                       margin: getMargin(
              //                         right: 11,
              //                       ),
              //                       variant: (controller.upcoming.value)
              //                           ? null
              //                           : ButtonVariant.OutlinePinkA100_1,
              //                       shape: ButtonShape.RoundedBorder22,
              //                       padding: ButtonPadding.PaddingT14,
              //                       fontStyle: (controller.upcoming.value)
              //                           ? ButtonFontStyle.NunitoBold15
              //                           : ButtonFontStyle.NunitoBold15PinkA100,
              //                     )),
              //               ),
              //               Expanded(
              //                 child: Obx(() => CustomButton(
              //                       onTap: () async {
              //                         await controller.switchTab(
              //                             upcoming: false);
              //                       },
              //                       height: getVerticalSize(
              //                         45,
              //                       ),
              //                       text: "lbl_past".tr,
              //                       margin: getMargin(
              //                         left: 11,
              //                       ),
              //                       variant: (controller.upcoming.value)
              //                           ? ButtonVariant.OutlinePinkA100_1
              //                           : null,
              //                       shape: ButtonShape.RoundedBorder22,
              //                       padding: ButtonPadding.PaddingT14,
              //                       fontStyle: (!controller.upcoming.value)
              //                           ? ButtonFontStyle.NunitoBold15
              //                           : ButtonFontStyle.NunitoBold15PinkA100,
              //                     )),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: getPadding(
                    left: 18,
                    top: 8,
                    right: 18,
                    bottom: 23,
                  ),
                  child: Obx(() => Column(
                        children: List.generate(
                            controller.bookingTime.value.length, (index) {
                          return Padding(
                            padding: getPadding(
                              top: 36,
                              // right: 22,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 20,
                                    bottom: 18,
                                  ),
                                  child: Obx(() => Text(
                                        "${controller.bookingTime.value[index]['start']}"
                                            .tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtNunitoBold10.copyWith(
                                          fontSize: 12,
                                          letterSpacing: getHorizontalSize(
                                            0.4,
                                          ),
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                  ),
                                  child: SizedBox(
                                    height: getVerticalSize(
                                      53,
                                    ),
                                    child: Obx(() => VerticalDivider(
                                          width: getHorizontalSize(
                                            6,
                                          ),
                                          thickness: getVerticalSize(
                                            6,
                                          ),
                                          color: controller.bookingTime
                                                  .value[index]['active']
                                              ? ColorConstant.pinkA100
                                              : ColorConstant.pink5001,
                                        )),
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
                                      begin: const Alignment(
                                        0.5,
                                        0,
                                      ),
                                      end: const Alignment(
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
                                Expanded(
                                  child: Obx(() => Container(
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
                                          color: controller.bookingTime
                                                  .value[index]['active']
                                              ? ColorConstant.pinkA100
                                              : ColorConstant.pink5001,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              10,
                                            ),
                                          ),
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding:
                                      getPadding(top: 20, bottom: 18, left: 8),
                                  child: Obx(() => Text(
                                        "${controller.bookingTime.value[index]['end']}"
                                            .tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtNunitoBold10.copyWith(
                                          fontSize: 12,
                                          letterSpacing: getHorizontalSize(
                                            0.4,
                                          ),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          );
                        }),
                      )),
>>>>>>> dev
                ),
              ),
            ],
          ),
<<<<<<< HEAD
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
=======
          //   ),
          // ],
          // ),
        );
      }),
      // bottomNavigationBar: CustomBottomBar(
      //   onChanged: (BottomBarEnum type) {
      //     Get.toNamed(getCurrentRoute(type), id: 1);
      //   },
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
            side: BorderSide(color: ColorConstant.pinkA100, width: 3)),
        backgroundColor: ColorConstant.whiteA70001,
        child: Icon(
          Icons.chat,
          // size: 30,
          color: ColorConstant.pinkA100,
>>>>>>> dev
        ),
      ),
    );
  }

<<<<<<< HEAD
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
=======
  // ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Volume:
  //       return "/";
  //     case BottomBarEnum.Sort:
  //       return "/";
  //     case BottomBarEnum.Vuesaxlinearaddpinka100:
  //       return "/";
  //     case BottomBarEnum.Car:
  //       return "/";
  //     case BottomBarEnum.User:
  //       return "/";
  //     default:
  //       return "/";
  //   }
  // }

  // ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     default:
  //       return DefaultWidget();
  //   }
  // }
>>>>>>> dev
}
