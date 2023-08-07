import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'controller/upcoming_booking_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle_4.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';

class UpcomingBookingFourScreen
    extends GetWidget<UpcomingBookingFourController> {
  const UpcomingBookingFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        padding: getPadding(top: 1, bottom: 1),
                        decoration: AppDecoration.brand.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                  height: getVerticalSize(180),
                                  title: AppbarSubtitle4(
                                      text: "lbl_profile".tr,
                                      margin: getMargin(left: 20)),
                                  actions: [
                                    AppbarImage(
                                        height: getSize(20),
                                        width: getSize(20),
                                        svgPath:
                                            ImageConstant.imgCarbonnotification,
                                        margin: getMargin(
                                            left: 21, top: 2, right: 1)),
                                    AppbarImage(
                                        height: getSize(20),
                                        width: getSize(20),
                                        svgPath:
                                            ImageConstant.imgSettingsWhiteA700,
                                        margin: getMargin(
                                            left: 15, top: 2, right: 22))
                                  ])
                            ]))),
                Container(
                  margin: const EdgeInsets.only(top: 150.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Container(
                                    height: getVerticalSize(794),
                                    width: getHorizontalSize(354),
                                    margin:
                                        getMargin(left: 0, right: 0, bottom: 6),
                                    child: Column(
                                        // alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  padding: getPadding(
                                                      top: 3, bottom: 16),
                                                  decoration: AppDecoration
                                                      .outlinePinkA10019
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder30),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Obx(() => controller
                                                                    .userId
                                                                    .value
                                                                    .isEmpty
                                                                ? Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      strokeWidth:
                                                                          2,
                                                                      color: ColorConstant
                                                                          .pinkA100,
                                                                    ),
                                                                  )
                                                                : GestureDetector(
                                                                    onTap: () {
                                                                      controller
                                                                          .onTapRowavatar();
                                                                    },
                                                                    child: Padding(
                                                                        padding: getPadding(left: 20, top: 16),
                                                                        child: Row(children: [
                                                                          CustomImageView(
                                                                              url: controller.userDetails.value!.photoURL,
                                                                              imagePath: ImageConstant.imgAvatar,
                                                                              height: getSize(44),
                                                                              width: getSize(44),
                                                                              radius: BorderRadius.circular(getHorizontalSize(22))),
                                                                          Padding(
                                                                              padding: getPadding(left: 14, top: 10, bottom: 11),
                                                                              child: Text("${controller.userDetails.value!.displayName}".capitalize!.tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold16Gray800))
                                                                        ]))))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 20),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .pinkA10019)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20,
                                                                top: 19,
                                                                right: 20),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            CustomIconButton(
                                                                                height: 48,
                                                                                width: 48,
                                                                                child: CustomImageView(svgPath: ImageConstant.imgCheckmarkGray800)),
                                                                            Padding(
                                                                                padding: getPadding(top: 19),
                                                                                child: Text("lbl_saved_articles".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          bottom:
                                                                              1),
                                                                      child: Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            CustomIconButton(
                                                                                height: 48,
                                                                                width: 48,
                                                                                child: CustomImageView(svgPath: ImageConstant.imgCarGray800)),
                                                                            Padding(
                                                                                padding: getPadding(top: 19),
                                                                                child: Text("lbl_wallet".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600))
                                                                          ])),
                                                                  Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        CustomIconButton(
                                                                            height:
                                                                                48,
                                                                            width:
                                                                                48,
                                                                            child:
                                                                                CustomImageView(svgPath: ImageConstant.imgFavorite)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 21),
                                                                            child: Text("lbl_health_diary".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600))
                                                                      ])
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 17),
                                                            child: Divider(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                thickness:
                                                                    getVerticalSize(
                                                                        1),
                                                                color: ColorConstant
                                                                    .pinkA10019)),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            24,
                                                                        right:
                                                                            24,
                                                                        bottom:
                                                                            72),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            controller.onTapRowcalendar();
                                                                          },
                                                                          child: Container(
                                                                              margin: getMargin(top: 20),
                                                                              decoration: AppDecoration.outlinePinkA100191,
                                                                              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                Column(
                                                                                  children: [
                                                                                    Stack(
                                                                                      children: [
                                                                                        Positioned(
                                                                                          // right: 0,
                                                                                          child: Container(
                                                                                            width: 10,
                                                                                            height: 10,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Colors.red[500],
                                                                                              borderRadius: BorderRadius.circular(100),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Card(
                                                                                            clipBehavior: Clip.antiAlias,
                                                                                            elevation: 0,
                                                                                            margin: getMargin(bottom: 20),
                                                                                            color: ColorConstant.pinkA10019,
                                                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder16),
                                                                                            child: Container(
                                                                                                height: getSize(48),
                                                                                                width: getSize(48),
                                                                                                padding: getPadding(all: 15),
                                                                                                decoration: AppDecoration.fillPinkA10019.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                                                                                                child: Stack(children: [
                                                                                                  CustomImageView(svgPath: ImageConstant.imgCalendar, height: getSize(18), width: getSize(18), alignment: Alignment.center),
                                                                                                ]))),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Padding(padding: getPadding(left: 10, top: 14, bottom: 33), child: Text("msg_pbm_consent_forms".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800)),
                                                                                Spacer(),
                                                                                CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(18), width: getSize(18), margin: getMargin(top: 15, bottom: 35))
                                                                              ]))),
                                                                      GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            controller.onTapRowsearch();
                                                                          },
                                                                          child: Container(
                                                                              margin: getMargin(top: 20, right: 0),
                                                                              decoration: AppDecoration.outlinePinkA100191,
                                                                              child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                                                                                Card(
                                                                                    clipBehavior: Clip.antiAlias,
                                                                                    elevation: 0,
                                                                                    margin: getMargin(bottom: 20),
                                                                                    color: ColorConstant.pinkA10019,
                                                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder16),
                                                                                    child: Container(
                                                                                        height: getSize(48),
                                                                                        width: getSize(48),
                                                                                        padding: getPadding(all: 15),
                                                                                        decoration: AppDecoration.fillPinkA10019.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                                                                                        child: Stack(children: [
                                                                                          CustomImageView(svgPath: ImageConstant.imgSearchGray800, height: getSize(18), width: getSize(18), alignment: Alignment.center)
                                                                                        ]))),
                                                                                Padding(padding: getPadding(left: 10, top: 16, bottom: 31), child: Text("My Past Appointments".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800)),
                                                                                Spacer(),
                                                                                CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(18), width: getSize(18), margin: getMargin(top: 15, bottom: 35))
                                                                              ]))),
                                                                      Container(
                                                                          margin: getMargin(
                                                                              top:
                                                                                  20,
                                                                              right:
                                                                                  0),
                                                                          decoration: AppDecoration
                                                                              .outlinePinkA100191,
                                                                          child: Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(bottom: 20), color: ColorConstant.pinkA10019, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder16), child: Container(height: getSize(48), width: getSize(48), alignment: Alignment.center, decoration: AppDecoration.fillPinkA10019.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Icon(Icons.family_restroom_rounded))),
                                                                                Padding(padding: getPadding(left: 10, top: 15, bottom: 32), child: Text("Add a Family member".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800)),
                                                                                Spacer(),
                                                                                CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(18), width: getSize(18), margin: getMargin(top: 15, bottom: 35))
                                                                              ])),
                                                                      GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            controller.onTapRowquestionone();
                                                                          },
                                                                          child: Padding(
                                                                              padding: getPadding(top: 20, right: 0),
                                                                              child: Row(children: [
                                                                                CustomIconButton(height: 48, width: 48, child: CustomImageView(svgPath: ImageConstant.imgQuestion)),
                                                                                Padding(padding: getPadding(left: 10, top: 16, bottom: 11), child: Text("msg_support_emergency".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800)),
                                                                                Spacer(),
                                                                                CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(18), width: getSize(18), margin: getMargin(top: 15, bottom: 15))
                                                                              ])))
                                                                    ])))
                                                      ]))),
                                        ]))))
                      ]),
                ),
              ],
            )));
  }
}
