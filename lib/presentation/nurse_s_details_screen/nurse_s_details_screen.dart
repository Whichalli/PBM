import 'controller/nurse_s_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';

class NurseSDetailsScreen extends GetWidget<NurseSDetailsController> {
  const NurseSDetailsScreen({Key? key}) : super(key: key);

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
                      Expanded(
                          child: SingleChildScrollView(
                              child: SizedBox(
                                  height: getVerticalSize(879),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                width: double.maxFinite,
                                                margin: getMargin(bottom: 652),
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 9,
                                                    right: 20,
                                                    bottom: 9),
                                                decoration: AppDecoration.brand
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderBL30),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleftWhiteA700,
                                                          height:
                                                              getVerticalSize(
                                                                  15),
                                                          width:
                                                              getHorizontalSize(
                                                                  9),
                                                          margin: getMargin(
                                                              top: 5,
                                                              bottom: 186),
                                                          onTap: () {
                                                            onTapImgArrowleft();
                                                          }),
                                                      Spacer(flex: 53),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 182),
                                                          child: Text(
                                                              "lbl_nurse_s_profile"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtOpenSansRomanBold18)),
                                                      Spacer(flex: 46),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSearchWhiteA700,
                                                          height: getSize(20),
                                                          width: getSize(20),
                                                          margin: getMargin(
                                                              top: 2,
                                                              bottom: 184))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                margin: getMargin(
                                                    left: 20,
                                                    right: 20,
                                                    bottom: 25),
                                                padding: getPadding(
                                                    top: 20, bottom: 20),
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
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20,
                                                              right: 20),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVideocamera,
                                                                    height:
                                                                        getSize(
                                                                            18),
                                                                    width:
                                                                        getSize(
                                                                            18),
                                                                    margin: getMargin(
                                                                        top: 15,
                                                                        bottom:
                                                                            15)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 5,
                                                                        top: 15,
                                                                        bottom:
                                                                            15),
                                                                    child: Text(
                                                                        "lbl_video_interview"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtOpenSansRomanSemiBold12Gray800)),
                                                                Spacer(),
                                                                CustomIconButton(
                                                                    height: 48,
                                                                    width: 48,
                                                                    shape: IconButtonShape
                                                                        .CircleBorder24,
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgCarGray80048x48))
                                                              ])),
                                                      SizedBox(
                                                          height: getSize(70),
                                                          width: getSize(70),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgAvatar70x70,
                                                                    height:
                                                                        getSize(
                                                                            70),
                                                                    width:
                                                                        getSize(
                                                                            70),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            35)),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child: Container(
                                                                        height:
                                                                            getSize(
                                                                                9),
                                                                        width: getSize(
                                                                            9),
                                                                        margin: getMargin(
                                                                            right:
                                                                                11,
                                                                            bottom:
                                                                                3),
                                                                        decoration: BoxDecoration(
                                                                            color: ColorConstant
                                                                                .greenA700,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                4)),
                                                                            border: Border.all(
                                                                                color: ColorConstant.whiteA700,
                                                                                width: getHorizontalSize(1),
                                                                                strokeAlign: strokeAlignCenter))))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 21),
                                                          child: Text(
                                                              "msg_rn_thanawan_chadee"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtOpenSansRomanSemiBold16Gray800)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 11),
                                                          child: Text(
                                                              "msg_child_physiotherapy"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtOpenSansRomanSemiBold14)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 7),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgStarGray800,
                                                                    height:
                                                                        getSize(
                                                                            14),
                                                                    width:
                                                                        getSize(
                                                                            14),
                                                                    margin: getMargin(
                                                                        top: 2,
                                                                        bottom:
                                                                            3)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                5),
                                                                    child: Text(
                                                                        "lbl_4_0"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtOpenSansRomanSemiBold14PinkA100)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 5,
                                                                        top: 3,
                                                                        bottom:
                                                                            2),
                                                                    child: Text(
                                                                        "lbl_12_reviews"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtOpenSansRomanSemiBold10Gray800))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 26,
                                                              top: 28,
                                                              right: 25),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_language_s".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtOpenSansRomanSemiBold14Gray800),
                                                                          Card(
                                                                              clipBehavior: Clip.antiAlias,
                                                                              elevation: 0,
                                                                              margin: getMargin(top: 7),
                                                                              color: ColorConstant.whiteA700,
                                                                              shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.gray300, width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.roundedBorder8),
                                                                              child: Container(
                                                                                  height: getVerticalSize(20),
                                                                                  width: getHorizontalSize(57),
                                                                                  padding: getPadding(left: 6, top: 2, right: 6, bottom: 2),
                                                                                  decoration: AppDecoration.outlineGray3001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                                                                                  child: Stack(children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgClockGray50001, height: getSize(7), width: getSize(7), alignment: Alignment.bottomRight)
                                                                                  ])))
                                                                        ])),
                                                                SizedBox(
                                                                    height:
                                                                        getVerticalSize(
                                                                            49),
                                                                    child: VerticalDivider(
                                                                        width: getHorizontalSize(
                                                                            1),
                                                                        thickness:
                                                                            getVerticalSize(
                                                                                1),
                                                                        color: ColorConstant
                                                                            .pinkA100)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgVuesaxlinearflash, height: getSize(16), width: getSize(16), margin: getMargin(top: 1, bottom: 2)),
                                                                                Padding(padding: getPadding(left: 5), child: Text("lbl_20_years".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800))
                                                                              ]),
                                                                          Padding(
                                                                              padding: getPadding(top: 10),
                                                                              child: Text("lbl_experience".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600))
                                                                        ]))
                                                              ])),
                                                      CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  39),
                                                          width:
                                                              getHorizontalSize(
                                                                  164),
                                                          text:
                                                              "msg_available_timing"
                                                                  .tr,
                                                          margin: getMargin(
                                                              top: 25),
                                                          shape: ButtonShape
                                                              .RoundedBorder8,
                                                          padding: ButtonPadding
                                                              .PaddingT7,
                                                          prefixWidget: Container(
                                                              margin: getMargin(
                                                                  right: 5),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCalendarWhiteA700)),
                                                          onTap: () {
                                                            onTapAvailable();
                                                          }),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 30),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: ColorConstant
                                                                  .pinkA10019)),
                                                      Container(
                                                          margin: getMargin(
                                                              left: 20,
                                                              top: 19,
                                                              right: 20),
                                                          decoration: AppDecoration
                                                              .outlinePinkA100191,
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Card(
                                                                    clipBehavior:
                                                                        Clip
                                                                            .antiAlias,
                                                                    elevation:
                                                                        0,
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            20),
                                                                    color: ColorConstant
                                                                        .pinkA10019,
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadiusStyle.roundedBorder16),
                                                                    child: Container(
                                                                        height: getSize(48),
                                                                        width: getSize(48),
                                                                        padding: getPadding(all: 15),
                                                                        decoration: AppDecoration.fillPinkA10019.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgCalendar,
                                                                              height: getSize(18),
                                                                              width: getSize(18),
                                                                              alignment: Alignment.center)
                                                                        ]))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10,
                                                                        top: 15,
                                                                        bottom:
                                                                            32),
                                                                    child: Text(
                                                                        "msg_experience_qualification"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtOpenSansRomanSemiBold14Gray800)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getSize(
                                                                            18),
                                                                    width:
                                                                        getSize(
                                                                            18),
                                                                    margin: getMargin(
                                                                        left:
                                                                            40,
                                                                        top: 15,
                                                                        bottom:
                                                                            35))
                                                              ])),
                                                      Container(
                                                          margin: getMargin(
                                                              left: 20,
                                                              top: 20,
                                                              right: 20),
                                                          decoration: AppDecoration
                                                              .outlinePinkA100191,
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Card(
                                                                    clipBehavior:
                                                                        Clip
                                                                            .antiAlias,
                                                                    elevation:
                                                                        0,
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            20),
                                                                    color: ColorConstant
                                                                        .pinkA10019,
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadiusStyle.roundedBorder16),
                                                                    child: Container(
                                                                        height: getSize(48),
                                                                        width: getSize(48),
                                                                        padding: getPadding(all: 15),
                                                                        decoration: AppDecoration.fillPinkA10019.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgUserGray800,
                                                                              height: getSize(18),
                                                                              width: getSize(18),
                                                                              alignment: Alignment.center)
                                                                        ]))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            10,
                                                                        top: 14,
                                                                        bottom:
                                                                            33),
                                                                    child: Text(
                                                                        "msg_personal_information"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtOpenSansRomanSemiBold14Gray800)),
                                                                Spacer(),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright,
                                                                    height:
                                                                        getSize(
                                                                            18),
                                                                    width:
                                                                        getSize(
                                                                            18),
                                                                    margin: getMargin(
                                                                        top: 15,
                                                                        bottom:
                                                                            35))
                                                              ])),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapRowsearchone();
                                                          },
                                                          child: Container(
                                                              margin: getMargin(
                                                                  left: 20,
                                                                  top: 20,
                                                                  right: 20),
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlinePinkA100191,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Card(
                                                                        clipBehavior:
                                                                            Clip
                                                                                .antiAlias,
                                                                        elevation:
                                                                            0,
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                20),
                                                                        color: ColorConstant
                                                                            .pinkA10019,
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadiusStyle.roundedBorder16),
                                                                        child: Container(
                                                                            height: getSize(48),
                                                                            width: getSize(48),
                                                                            padding: getPadding(all: 15),
                                                                            decoration: AppDecoration.fillPinkA10019.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                                                                            child: Stack(children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgSearchGray800, height: getSize(18), width: getSize(18), alignment: Alignment.center)
                                                                            ]))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                10,
                                                                            top:
                                                                                14,
                                                                            bottom:
                                                                                33),
                                                                        child: Text(
                                                                            "lbl_reviews"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtOpenSansRomanSemiBold14Gray800)),
                                                                    Spacer(),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowright,
                                                                        height: getSize(
                                                                            18),
                                                                        width: getSize(
                                                                            18),
                                                                        margin: getMargin(
                                                                            top:
                                                                                15,
                                                                            bottom:
                                                                                35))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 20,
                                                                      right: 50,
                                                                      bottom:
                                                                          10),
                                                              child: Row(
                                                                  children: [
                                                                    CustomIconButton(
                                                                        height:
                                                                            48,
                                                                        width:
                                                                            48,
                                                                        child: CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgQuestion)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                10,
                                                                            top:
                                                                                16,
                                                                            bottom:
                                                                                11),
                                                                        child: Text(
                                                                            "lbl_language_s"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtOpenSansRomanSemiBold14Gray800)),
                                                                    Spacer(),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowright,
                                                                        height: getSize(
                                                                            18),
                                                                        width: getSize(
                                                                            18),
                                                                        margin: getMargin(
                                                                            top:
                                                                                15,
                                                                            bottom:
                                                                                15))
                                                                  ])))
                                                    ])))
                                      ]))))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgArrowleft() {
    Get.back();
  }

  /// Navigates to the bookingStepOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the bookingStepOneScreen.
  onTapAvailable() {
    Get.toNamed(
      AppRoutes.bookingStepOneScreen,
    );
  }

  /// Navigates to the pastBookingDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the pastBookingDetailsScreen.
  onTapRowsearchone() {
    Get.toNamed(
      AppRoutes.pastBookingDetailsScreen,
    );
  }
}
