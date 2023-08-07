import 'dart:developer';

import 'package:pbm_app/widgets/custom_radio_button.dart';

import 'controller/upcoming_booking_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';

class UpcomingBookingOneScreen extends GetWidget<UpcomingBookingOneController> {
  const UpcomingBookingOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Stack(
                  // alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: getVerticalSize(170),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: ColorConstant.pinkA100,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(28),
                              bottomRight: Radius.circular(28))),
                    ),

                    // CustomButton(

                    //     width: double.maxFinite,
                    //     text: "msg_pbm_consent_forms".tr,
                    //     shape: ButtonShape.CustomBorderBL30,
                    //     padding: ButtonPadding.PaddingT97,
                    //     fontStyle:
                    //         ButtonFontStyle.OpenSansRomanBold18,
                    //     // prefixWidget: ,
                    //     // onTap: () {
                    //     //   onTapPbmconsent();
                    //     // },
                    //     alignment: Alignment.topCenter),
                    Container(
                        margin:
                            getMargin(left: 20, right: 20, top: 100, bottom: 0),
                        // height: double.maxFinite,
                        padding: getPadding(
                            left: 18, top: 50, right: 18, bottom: 20),
                        decoration: AppDecoration.outlinePinkA10019.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: getVerticalSize(15),
                                  width: getHorizontalSize(293),
                                  margin: getMargin(left: 6),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(5),
                                                width: getHorizontalSize(292),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.blue5001,
                                                    borderRadius: BorderRadius.circular(
                                                        getHorizontalSize(2))),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                2)),
                                                    child: LinearProgressIndicator(
                                                        value: 0.7,
                                                        backgroundColor:
                                                            ColorConstant
                                                                .blue5001,
                                                        valueColor:
                                                            AlwaysStoppedAnimation<Color>(
                                                                ColorConstant
                                                                    .pinkA100))))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(left: 44),
                                                child: Row(children: [
                                                  Container(
                                                      height: getSize(15),
                                                      width: getSize(15),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      7)),
                                                          gradient:
                                                              LinearGradient(
                                                                  begin:
                                                                      Alignment(
                                                                          0.5,
                                                                          0),
                                                                  end:
                                                                      Alignment(
                                                                          0.5,
                                                                          1),
                                                                  colors: [
                                                                ColorConstant
                                                                    .pinkA100,
                                                                ColorConstant
                                                                    .lightBlueA400
                                                              ]))),
                                                  Container(
                                                      height: getSize(15),
                                                      width: getSize(15),
                                                      margin: getMargin(
                                                          left: 66),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      7)),
                                                          gradient:
                                                              LinearGradient(
                                                                  begin:
                                                                      Alignment(
                                                                          0.5,
                                                                          0),
                                                                  end:
                                                                      Alignment(
                                                                          0.5,
                                                                          1),
                                                                  colors: [
                                                                ColorConstant
                                                                    .pinkA100,
                                                                ColorConstant
                                                                    .lightBlueA400
                                                              ]))),
                                                  Container(
                                                      height: getSize(15),
                                                      width: getSize(15),
                                                      margin: getMargin(
                                                          left: 57),
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      7)),
                                                          gradient:
                                                              LinearGradient(
                                                                  begin:
                                                                      Alignment(
                                                                          0.5,
                                                                          0),
                                                                  end:
                                                                      Alignment(
                                                                          0.5,
                                                                          1),
                                                                  colors: [
                                                                ColorConstant
                                                                    .pinkA100,
                                                                ColorConstant
                                                                    .lightBlueA400
                                                              ])))
                                                ]))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getSize(15),
                                                width: getSize(15),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                7)),
                                                    gradient: LinearGradient(
                                                        begin:
                                                            Alignment(0.5, 0),
                                                        end: Alignment(0.5, 1),
                                                        colors: [
                                                          ColorConstant
                                                              .pinkA100,
                                                          ColorConstant
                                                              .lightBlueA400
                                                        ]))))
                                      ])),
                              SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  top: 16, bottom: 0),
                                              child: Text("lbl_registration".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtNunitoRegular20
                                                      .copyWith(
                                                          color:
                                                              Colors.black))),
                                          CustomIconButton(
                                              height: 35,
                                              width: 35,
                                              margin:
                                                  getMargin(left: 34, top: 8),
                                              variant: IconButtonVariant
                                                  .GradientPinkA100LightblueA70089,
                                              padding:
                                                  IconButtonPadding.PaddingAll6,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmarkWhiteA700))
                                        ]),
                                    Padding(
                                        padding: getPadding(left: 6, top: 12),
                                        child: Text("lbl_consent".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtNunitoRegular15)),
                                    Padding(
                                        padding: getPadding(left: 16, top: 8),
                                        child: Obx(() => Column(children: [
                                              CustomRadioButton(
                                                  margin: getMargin(all: 0),
                                                  text: "Yes".tr,
                                                  iconSize:
                                                      getHorizontalSize(12),
                                                  value: controller
                                                      .consentOption.value[0],
                                                  groupValue:
                                                      controller.consent.value,
                                                  padding:
                                                      RadioPadding.PaddingAll8,
                                                  fontStyle: RadioFontStyle
                                                      .NunitoRegular12,
                                                  onChange: (value) {
                                                    controller.consent.value =
                                                        value;
                                                    log('value = $value');
                                                  }),
                                              CustomRadioButton(
                                                  text: "No".tr,
                                                  iconSize:
                                                      getHorizontalSize(12),
                                                  value: controller
                                                      .consentOption.value[1],
                                                  groupValue:
                                                      controller.consent.value,
                                                  padding:
                                                      RadioPadding.PaddingAll8,
                                                  fontStyle: RadioFontStyle
                                                      .NunitoRegular12,
                                                  onChange: (value) {
                                                    controller.consent.value =
                                                        value;
                                                    log('value = $value');
                                                  })
                                            ]))),
                                    Padding(
                                        padding: getPadding(left: 6, top: 4),
                                        child: Text("lbl_medication".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtNunitoRegular15)),
                                    Padding(
                                        padding: getPadding(left: 16, top: 8),
                                        child: Obx(() => Column(children: [
                                              CustomRadioButton(
                                                  text: "Yes".tr,
                                                  iconSize:
                                                      getHorizontalSize(12),
                                                  value: controller
                                                      .medsOption.value[0],
                                                  groupValue: controller
                                                      .medication.value,
                                                  padding:
                                                      RadioPadding.PaddingAll8,
                                                  fontStyle: RadioFontStyle
                                                      .NunitoRegular12,
                                                  onChange: (value) {
                                                    controller.medication
                                                        .value = value;
                                                  }),
                                              CustomRadioButton(
                                                  text: "No".tr,
                                                  iconSize:
                                                      getHorizontalSize(12),
                                                  value: controller
                                                      .medsOption.value[1],
                                                  groupValue: controller
                                                      .medication.value,
                                                  padding:
                                                      RadioPadding.PaddingAll8,
                                                  fontStyle: RadioFontStyle
                                                      .NunitoRegular12,
                                                  onChange: (value) {
                                                    controller.medication
                                                        .value = value;
                                                  })
                                            ]))),
                                    Padding(
                                        padding: getPadding(left: 6, top: 17),
                                        child: Text("msg_outdoor_swimming".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtNunitoRegular15)),
                                    Padding(
                                        padding: getPadding(left: 16, top: 8),
                                        child: Obx(() => Column(children: [
                                              CustomRadioButton(
                                                  text: "Yes".tr,
                                                  iconSize:
                                                      getHorizontalSize(12),
                                                  value: controller
                                                      .swimOption.value[0],
                                                  groupValue:
                                                      controller.swimming.value,
                                                  padding:
                                                      RadioPadding.PaddingAll8,
                                                  fontStyle: RadioFontStyle
                                                      .NunitoRegular12,
                                                  onChange: (value) {
                                                    controller.swimming.value =
                                                        value;
                                                  }),
                                              CustomRadioButton(
                                                  text: "No".tr,
                                                  iconSize:
                                                      getHorizontalSize(12),
                                                  value: controller
                                                      .swimOption.value[1],
                                                  groupValue:
                                                      controller.swimming.value,
                                                  padding:
                                                      RadioPadding.PaddingAll8,
                                                  fontStyle: RadioFontStyle
                                                      .NunitoRegular12,
                                                  onChange: (value) {
                                                    controller.swimming.value =
                                                        value;
                                                  })
                                            ]))),
                                    Padding(
                                        padding: getPadding(left: 6, top: 22),
                                        child: Text("lbl_agreement".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtNunitoRegular15)),
                                    Padding(
                                        padding: getPadding(left: 16, top: 8),
                                        child: Obx(() => Column(children: [
                                              CustomRadioButton(
                                                  text: "Yes".tr,
                                                  iconSize:
                                                      getHorizontalSize(12),
                                                  value: controller
                                                      .agreementOption.value[0],
                                                  groupValue: controller
                                                      .agreement.value,
                                                  padding:
                                                      RadioPadding.PaddingAll8,
                                                  fontStyle: RadioFontStyle
                                                      .NunitoRegular12,
                                                  onChange: (value) {
                                                    controller.agreement.value =
                                                        value;
                                                  }),
                                              CustomRadioButton(
                                                  text: "No".tr,
                                                  iconSize:
                                                      getHorizontalSize(12),
                                                  value: controller
                                                      .agreementOption.value[1],
                                                  groupValue: controller
                                                      .agreement.value,
                                                  padding:
                                                      RadioPadding.PaddingAll8,
                                                  fontStyle: RadioFontStyle
                                                      .NunitoRegular12,
                                                  onChange: (value) {
                                                    controller.agreement.value =
                                                        value;
                                                  })
                                            ]))),
                                  ],
                                ),
                              ),
                            ])),
                  ]),
              GestureDetector(
                  onTap: () {
                    controller.onTapTxtGobacktodashboard();
                  },
                  child: Padding(
                      padding: getPadding(top: 33, bottom: 5),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_go_back_to".tr,
                                style: TextStyle(
                                    color: ColorConstant.pinkA100,
                                    fontSize: getFontSize(14),
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: "lbl_dashboard".tr,
                                style: TextStyle(
                                    color: ColorConstant.pinkA100,
                                    fontSize: getFontSize(10),
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700))
                          ]),
                          textAlign: TextAlign.left))),
            ]),
            bottomNavigationBar: Obx(() => controller.hideSaveBtn.value
                ? const SizedBox()
                : CustomButton(
                    height: getVerticalSize(53),
                    icon: (controller.loading.value)
                        ? CircularProgressIndicator(
                            color: ColorConstant.whiteA70001,
                            strokeWidth: 2,
                          )
                        : null,
                    text: controller.loading.value ? null : "lbl_save".tr,
                    margin: getMargin(left: 20, right: 19, bottom: 30),
                    onTap: (controller.loading.value)
                        ? null
                        : () {
                            controller.onTapSave(context);
                          }))));
  }
}
