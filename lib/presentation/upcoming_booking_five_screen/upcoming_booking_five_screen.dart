import 'controller/upcoming_booking_five_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_bottom_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';

class UpcomingBookingFiveScreen
    extends GetWidget<UpcomingBookingFiveController> {
  const UpcomingBookingFiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                title: Padding(
                    padding: getPadding(left: 20),
                    child: Text("lbl_booking".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOpenSansRomanSemiBold24)),
                actions: [
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgSortGray800,
                      margin: getMargin(left: 20, top: 14, right: 21)),
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgCarbonnotificationGray800,
                      margin: getMargin(left: 16, top: 14, right: 41))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 5, bottom: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 60, right: 80),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomButton(
                                        height: getVerticalSize(42),
                                        width: getHorizontalSize(117),
                                        text: "lbl_upcoming".tr,
                                        variant: ButtonVariant.OutlinePinkA100,
                                        shape: ButtonShape.Square,
                                        padding: ButtonPadding.PaddingAll9,
                                        fontStyle: ButtonFontStyle.OpenSans16),
                                    Padding(
                                        padding: getPadding(top: 10, bottom: 9),
                                        child: Text("lbl_past".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOpenSans16))
                                  ]))),
                      Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: ColorConstant.pinkA10019),
                      GestureDetector(
                          onTap: () {
                            onTapColumnavatar();
                          },
                          child: Container(
                              margin: getMargin(left: 19, top: 19, right: 19),
                              padding: getPadding(
                                  left: 15, top: 20, right: 15, bottom: 20),
                              decoration: AppDecoration.outlineBluegray100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder30),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 3, right: 3),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getSize(44),
                                                  width: getSize(44),
                                                  margin: getMargin(bottom: 1),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgAvatar,
                                                            height: getSize(44),
                                                            width: getSize(44),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        22)),
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: Container(
                                                                height:
                                                                    getSize(9),
                                                                width:
                                                                    getSize(9),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .greenA700,
                                                                    borderRadius:
                                                                        BorderRadius.circular(getHorizontalSize(
                                                                            4)),
                                                                    border: Border.all(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        width: getHorizontalSize(
                                                                            1),
                                                                        strokeAlign:
                                                                            strokeAlignCenter))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(left: 21),
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
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOpenSansRomanSemiBold16Gray800),
                                                        Padding(
                                                            padding: getPadding(
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
                                                  margin: getMargin(bottom: 21))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 18),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVideocamera,
                                                  height: getSize(18),
                                                  width: getSize(18)),
                                              Padding(
                                                  padding: getPadding(left: 5),
                                                  child: Text(
                                                      "lbl_video_interview".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOpenSansRomanSemiBold12PinkA100)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgClock,
                                                  height: getSize(18),
                                                  width: getSize(18),
                                                  margin: getMargin(left: 30)),
                                              Padding(
                                                  padding: getPadding(left: 5),
                                                  child: Text("lbl_1_hour".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOpenSansRomanSemiBold12Gray600))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 20),
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
                                                  padding: getPadding(top: 1),
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
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOpenSansRomanSemiBold12Gray600),
                                                        Padding(
                                                            padding: getPadding(
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
                                                  margin: getMargin(bottom: 2),
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
                                    CustomButton(
                                        height: getVerticalSize(36),
                                        text: "msg_morning_shift_will".tr,
                                        margin: getMargin(
                                            left: 28, top: 17, right: 28),
                                        variant: ButtonVariant.FillWhiteA700,
                                        shape: ButtonShape.CircleBorder19,
                                        padding: ButtonPadding.PaddingAll9,
                                        fontStyle:
                                            ButtonFontStyle.OpenSansRomanBold12)
                                  ]))),
                      Container(
                          margin: getMargin(
                              left: 19, top: 15, right: 19, bottom: 5),
                          padding: getPadding(
                              left: 15, top: 17, right: 15, bottom: 17),
                          decoration: AppDecoration.outlineBluegray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 3, top: 2, right: 3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getSize(44),
                                              width: getSize(44),
                                              margin: getMargin(bottom: 1),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgAvatar,
                                                        height: getSize(44),
                                                        width: getSize(44),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    22)),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Container(
                                                            height: getSize(9),
                                                            width: getSize(9),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .greenA700,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            4)),
                                                                border: Border.all(
                                                                    color: ColorConstant
                                                                        .whiteA700,
                                                                    width:
                                                                        getHorizontalSize(
                                                                            1),
                                                                    strokeAlign:
                                                                        strokeAlignCenter))))
                                                  ])),
                                          Padding(
                                              padding: getPadding(left: 21),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "lbl_thanawan_chadee"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOpenSansRomanSemiBold16Gray800),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 5),
                                                        child: Text(
                                                            "lbl_babysitter".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOpenSans12))
                                                  ])),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgOverflowmenu,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(bottom: 21))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgVideocamera,
                                              height: getSize(18),
                                              width: getSize(18)),
                                          Padding(
                                              padding: getPadding(left: 5),
                                              child: Text(
                                                  "lbl_video_interview".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansRomanSemiBold12PinkA100)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgClock,
                                              height: getSize(18),
                                              width: getSize(18),
                                              margin: getMargin(left: 30)),
                                          Padding(
                                              padding: getPadding(left: 5),
                                              child: Text("lbl_1_hour".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansRomanSemiBold12Gray600))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 20),
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
                                              padding: getPadding(top: 1),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "msg_french_english".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOpenSansRomanSemiBold12Gray600),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 9),
                                                        child: Text(
                                                            "msg_12_may_12_50_am"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOpenSansRomanSemiBold16Gray800))
                                                  ])),
                                          Spacer(),
                                          CustomIconButton(
                                              height: 48,
                                              width: 48,
                                              margin: getMargin(bottom: 2),
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
                                        ]))
                              ]))
                    ])),
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

  /// Navigates to the pastBookingDetailsOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the pastBookingDetailsOneScreen.
  onTapColumnavatar() {
    Get.toNamed(
      AppRoutes.pastBookingDetailsOneScreen,
    );
  }
}
