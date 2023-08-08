<<<<<<< HEAD
import 'controller/past_booking_details_one_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/app_bar/appbar_button_1.dart';import 'package:pbm_care/widgets/app_bar/custom_app_bar.dart';import 'package:pbm_care/widgets/custom_bottom_bar.dart';import 'package:pbm_care/widgets/custom_button.dart';import 'package:pbm_care/widgets/custom_icon_button.dart';class PastBookingDetailsOneScreen extends GetWidget<PastBookingDetailsOneController> {const PastBookingDetailsOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(55), title: AppbarButton1(margin: getMargin(left: 20), onTap: () {onTapBookingdetails();}), styleType: Style.bgFillWhiteA700), body: SizedBox(width: size.width, child: SingleChildScrollView(padding: getPadding(top: 10), child: Padding(padding: getPadding(bottom: 5), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(margin: getMargin(left: 19, right: 19), padding: getPadding(left: 15, top: 20, right: 15, bottom: 20), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 3, right: 3), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: getSize(44), width: getSize(44), margin: getMargin(bottom: 1), child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgAvatar, height: getSize(44), width: getSize(44), radius: BorderRadius.circular(getHorizontalSize(22)), alignment: Alignment.center), Align(alignment: Alignment.bottomRight, child: Container(height: getSize(9), width: getSize(9), decoration: BoxDecoration(color: ColorConstant.greenA700, borderRadius: BorderRadius.circular(getHorizontalSize(4)), border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(1), strokeAlign: strokeAlignCenter))))])), Padding(padding: getPadding(left: 21), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_thanawan_chadee".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold16Gray800), Padding(padding: getPadding(top: 5), child: Text("lbl_babysitter".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSans12))])), Spacer(), CustomImageView(svgPath: ImageConstant.imgOverflowmenu, height: getSize(24), width: getSize(24), margin: getMargin(bottom: 21))])), Padding(padding: getPadding(top: 18), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.pinkA100)), Padding(padding: getPadding(top: 19), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 1), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_french_english".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600), Padding(padding: getPadding(top: 9), child: Text("msg_12_may_12_50_am".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold16Gray800))])), Spacer(), CustomIconButton(height: 48, width: 48, margin: getMargin(bottom: 2), shape: IconButtonShape.CircleBorder24, child: CustomImageView(svgPath: ImageConstant.imgCarGray80048x48)), CustomIconButton(height: 48, width: 48, margin: getMargin(left: 10, bottom: 2), variant: IconButtonVariant.FillWhiteA700, shape: IconButtonShape.CircleBorder24, child: CustomImageView(svgPath: ImageConstant.imgVideocamera))])), Padding(padding: getPadding(top: 17), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.pinkA100)), Padding(padding: getPadding(left: 39, top: 9, right: 39), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 16, bottom: 15), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_50aed".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold16Gray800), Padding(padding: getPadding(top: 9), child: Text("lbl_paid".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600))])), SizedBox(height: getVerticalSize(81), child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: ColorConstant.pinkA100)), Padding(padding: getPadding(top: 16, bottom: 15), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_aetna".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold16Gray800), Padding(padding: getPadding(top: 9), child: Text("lbl_insurance".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600))]))]))])), Align(alignment: Alignment.centerLeft, child: GestureDetector(onTap: () {onTapRowdetails();}, child: Padding(padding: getPadding(left: 59, top: 20, right: 79), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomButton(height: getVerticalSize(42), width: getHorizontalSize(91), text: "lbl_details".tr, variant: ButtonVariant.OutlinePinkA100, shape: ButtonShape.Square, padding: ButtonPadding.PaddingAll9, fontStyle: ButtonFontStyle.OpenSans16), Padding(padding: getPadding(top: 10, bottom: 9), child: Text("lbl_reviews".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSans16))])))), Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.pinkA10019), Padding(padding: getPadding(left: 20, top: 30, right: 20), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_type".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600), Padding(padding: getPadding(top: 7), child: Text("lbl_video_interview".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800))]), CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(18), width: getSize(18), margin: getMargin(top: 25))])), Container(width: double.maxFinite, margin: getMargin(top: 29), padding: getPadding(left: 20, top: 27, right: 20, bottom: 27), decoration: AppDecoration.txtOutlinePinkA10019, child: Text("msg_comment_optional".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSans14Gray600)), Container(height: getVerticalSize(65), width: double.maxFinite, margin: getMargin(top: 29), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.center, child: Container(padding: getPadding(all: 20), decoration: AppDecoration.outlinePinkA100191, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(18), width: getSize(18), margin: getMargin(top: 7))]))), Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(left: 20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_conclusion_decision".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600), Padding(padding: getPadding(top: 10), child: Text("msg_far_away_behind".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800))])))])), CustomButton(height: getVerticalSize(43), width: getHorizontalSize(119), text: "lbl_book_now".tr, margin: getMargin(top: 30), variant: ButtonVariant.OutlineBluegray100, shape: ButtonShape.CircleBorder19, padding: ButtonPadding.PaddingAll9, fontStyle: ButtonFontStyle.OpenSansRomanSemiBold14PinkA100, onTap: () {onTapBooknow();})])))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}))); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Volume: return "/"; case BottomBarEnum.Sort: return "/"; case BottomBarEnum.Vuesaxlinearaddpinka100: return "/"; case BottomBarEnum.Car: return "/"; case BottomBarEnum.User: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {default: return DefaultWidget();} } 
/// Navigates to the pastBookingDetailsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the pastBookingDetailsScreen.
onTapRowdetails() { Get.toNamed(AppRoutes.pastBookingDetailsScreen, ); } 
/// Navigates to the nurseSDetailsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the nurseSDetailsScreen.
onTapBooknow() { Get.toNamed(AppRoutes.nurseSDetailsScreen, ); } 
/// Navigates to the upcomingBookingFiveScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBookingFiveScreen.
onTapBookingdetails() { Get.toNamed(AppRoutes.upcomingBookingFiveScreen, ); } 
 }
=======
import 'controller/past_booking_details_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_button_1.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_bottom_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';

class PastBookingDetailsOneScreen
    extends GetWidget<PastBookingDetailsOneController> {
  const PastBookingDetailsOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(55),
                title: AppbarButton1(
                    margin: getMargin(left: 20),
                    onTap: () {
                      onTapBookingdetails();
                    }),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 10),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  margin: getMargin(left: 19, right: 19),
                                  padding: getPadding(
                                      left: 15, top: 20, right: 15, bottom: 20),
                                  decoration: AppDecoration.outlineBluegray100
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 3, right: 3),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height: getSize(44),
                                                      width: getSize(44),
                                                      margin:
                                                          getMargin(bottom: 1),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgAvatar,
                                                                height:
                                                                    getSize(44),
                                                                width:
                                                                    getSize(44),
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            22)),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Container(
                                                                    height:
                                                                        getSize(
                                                                            9),
                                                                    width:
                                                                        getSize(
                                                                            9),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .greenA700,
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                4)),
                                                                        border: Border.all(
                                                                            color:
                                                                                ColorConstant.whiteA700,
                                                                            width: getHorizontalSize(1),
                                                                            strokeAlign: strokeAlignCenter))))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 21),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_thanawan_chadee"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtOpenSansRomanSemiBold16Gray800),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    "lbl_babysitter"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtOpenSans12))
                                                          ])),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgOverflowmenu,
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      margin:
                                                          getMargin(bottom: 21))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 18),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.pinkA100)),
                                        Padding(
                                            padding: getPadding(top: 19),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "msg_french_english"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtOpenSansRomanSemiBold12Gray600),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 9),
                                                                child: Text(
                                                                    "msg_12_may_12_50_am"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtOpenSansRomanSemiBold16Gray800))
                                                          ])),
                                                  Spacer(),
                                                  CustomIconButton(
                                                      height: 48,
                                                      width: 48,
                                                      margin:
                                                          getMargin(bottom: 2),
                                                      shape: IconButtonShape
                                                          .CircleBorder24,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCarGray80048x48)),
                                                  CustomIconButton(
                                                      height: 48,
                                                      width: 48,
                                                      margin: getMargin(
                                                          left: 10, bottom: 2),
                                                      variant: IconButtonVariant
                                                          .FillWhiteA700,
                                                      shape: IconButtonShape
                                                          .CircleBorder24,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgVideocamera))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 17),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.pinkA100)),
                                        Padding(
                                            padding: getPadding(
                                                left: 39, top: 9, right: 39),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 16, bottom: 15),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("lbl_50aed".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtOpenSansRomanSemiBold16Gray800),
                                                            Padding(
                                                                padding: getPadding(
                                                                    top: 9),
                                                                child: Text(
                                                                    "lbl_paid"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtOpenSansRomanSemiBold12Gray600))
                                                          ])),
                                                  SizedBox(
                                                      height:
                                                          getVerticalSize(81),
                                                      child: VerticalDivider(
                                                          width:
                                                              getHorizontalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .pinkA100)),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 16, bottom: 15),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("lbl_aetna".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtOpenSansRomanSemiBold16Gray800),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 9),
                                                                child: Text(
                                                                    "lbl_insurance"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtOpenSansRomanSemiBold12Gray600))
                                                          ]))
                                                ]))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapRowdetails();
                                      },
                                      child: Padding(
                                          padding: getPadding(
                                              left: 59, top: 20, right: 79),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomButton(
                                                    height: getVerticalSize(42),
                                                    width:
                                                        getHorizontalSize(91),
                                                    text: "lbl_details".tr,
                                                    variant: ButtonVariant
                                                        .OutlinePinkA100,
                                                    shape: ButtonShape.Square,
                                                    padding: ButtonPadding
                                                        .PaddingAll9,
                                                    fontStyle: ButtonFontStyle
                                                        .OpenSans16),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 10, bottom: 9),
                                                    child: Text(
                                                        "lbl_reviews".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOpenSans16))
                                              ])))),
                              Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.pinkA10019),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 30, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_type".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansRomanSemiBold12Gray600),
                                              Padding(
                                                  padding: getPadding(top: 7),
                                                  child: Text(
                                                      "lbl_video_interview".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOpenSansRomanSemiBold14Gray800))
                                            ]),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(top: 25))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  margin: getMargin(top: 29),
                                  padding: getPadding(
                                      left: 20, top: 27, right: 20, bottom: 27),
                                  decoration:
                                      AppDecoration.txtOutlinePinkA10019,
                                  child: Text("msg_comment_optional".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSans14Gray600)),
                              Container(
                                  height: getVerticalSize(65),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 29),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                padding: getPadding(all: 20),
                                                decoration: AppDecoration
                                                    .outlinePinkA100191,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowright,
                                                          height: getSize(18),
                                                          width: getSize(18),
                                                          margin:
                                                              getMargin(top: 7))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: getPadding(left: 20),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "msg_conclusion_decision"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOpenSansRomanSemiBold12Gray600),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 10),
                                                          child: Text(
                                                              "msg_far_away_behind"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtOpenSansRomanSemiBold14Gray800))
                                                    ])))
                                      ])),
                              CustomButton(
                                  height: getVerticalSize(43),
                                  width: getHorizontalSize(119),
                                  text: "lbl_book_now".tr,
                                  margin: getMargin(top: 30),
                                  variant: ButtonVariant.OutlineBluegray100,
                                  shape: ButtonShape.CircleBorder19,
                                  padding: ButtonPadding.PaddingAll9,
                                  fontStyle: ButtonFontStyle
                                      .OpenSansRomanSemiBold14PinkA100,
                                  onTap: () {
                                    onTapBooknow();
                                  })
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
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

  /// Navigates to the pastBookingDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the pastBookingDetailsScreen.
  onTapRowdetails() {
    Get.toNamed(
      AppRoutes.pastBookingDetailsScreen,
    );
  }

  /// Navigates to the nurseSDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the nurseSDetailsScreen.
  onTapBooknow() {
    Get.toNamed(
      AppRoutes.nurseSDetailsScreen,
    );
  }

  /// Navigates to the upcomingBookingFiveScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingFiveScreen.
  onTapBookingdetails() {
    Get.toNamed(
      AppRoutes.upcomingBookingFiveScreen,
    );
  }
}
>>>>>>> dev
