import 'package:hive/hive.dart';

import 'controller/pricing_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class PricingScreen extends GetWidget<PricingController> {
  PricingScreen({Key? key}) : super(key: key);
  final isFromBookingScreen = Get.arguments['isBooking'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
            width: double.maxFinite,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                  height: getVerticalSize(284),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            width: double.maxFinite,
                            margin: getMargin(bottom: 57),
                            padding: getPadding(
                                left: 20, top: 9, right: 20, bottom: 9),
                            decoration: AppDecoration.brand.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL30),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowleftWhiteA700,
                                      height: getVerticalSize(15),
                                      width: getHorizontalSize(9),
                                      margin: getMargin(top: 5, bottom: 186),
                                      onTap: () {
                                        onTapImgArrowleft();
                                      }),
                                  Padding(
                                      padding:
                                          getPadding(left: 102, bottom: 154),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_our_services".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOpenSansRomanBold18),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Text(
                                                    "msg_price_calculator".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtOpenSansRomanSemiBold12))
                                          ]))
                                ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            margin: getMargin(left: 20, right: 20),
                            padding: getPadding(
                                left: 19, top: 20, right: 19, bottom: 20),
                            decoration: AppDecoration.outlinePinkA10019
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder30),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      width: getHorizontalSize(223),
                                      margin: getMargin(
                                          left: 36, top: 10, right: 36),
                                      child: Text(
                                          "msg_your_price_for_medical".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtOpenSansRomanSemiBold12Gray600)),
                                  SizedBox(
                                      width: double.maxFinite,
                                      child: Container(
                                          width: getHorizontalSize(295),
                                          margin: getMargin(left: 1, top: 19),
                                          padding:
                                              getPadding(left: 48, right: 48),
                                          decoration: AppDecoration
                                              .outlinePinkA100
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder16),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSettings,
                                                              height:
                                                                  getSize(18),
                                                              width:
                                                                  getSize(18),
                                                              margin: getMargin(
                                                                  bottom: 1)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 5),
                                                              child: Text(
                                                                  "25% discount"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtOpenSansRomanSemiBold14Gray800))
                                                        ])),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 19, top: 8),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Padding(
                                                                  padding: getPadding(
                                                                      top: 23,
                                                                      bottom:
                                                                          9),
                                                                  child: Text(
                                                                      "100".tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtOpenSans24
                                                                          .copyWith(
                                                                              decoration: TextDecoration.lineThrough))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              24),
                                                                  child: Text(
                                                                      "lbl_75"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtOpenSansRomanBold50)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              5,
                                                                          top:
                                                                              36,
                                                                          bottom:
                                                                              8),
                                                                  child: Text(
                                                                      "lbl_aed_hour"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtOpenSans14))
                                                            ])))
                                              ])))
                                ])))
                  ])),
              GetBuilder<PricingController>(
                builder: (_) {
                  return Container(
                      margin:
                          getMargin(left: 20, top: 20, right: 20, bottom: 5),
                      padding: getPadding(all: 20),
                      decoration: AppDecoration.outlinePinkA10019.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder30),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: double.maxFinite,
                                child: Container(
                                    padding: getPadding(
                                        left: 56, top: 8, right: 56, bottom: 8),
                                    decoration: AppDecoration.brand.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_total_cost".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansRomanSemiBold12)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 12, right: 12),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("${controller.total}",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOpenSansRomanBold40),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 5,
                                                            top: 27,
                                                            bottom: 7),
                                                        child: Text(
                                                            "lbl_aed".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOpenSans14WhiteA700))
                                                  ])),
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text(
                                                  "msg_including_vat".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansRomanSemiBold10))
                                        ]))),
                            Padding(
                                padding: getPadding(top: 29),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 3),
                                          child: Text("lbl_hours_per_day".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtOpenSans12)),
                                      Text("${controller.hours ~/ 1} hours",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtOpenSansRomanSemiBold14)
                                    ])),
                            Padding(
                                padding: getPadding(top: 8),
                                child: SliderTheme(
                                    data: SliderThemeData(
                                        trackShape:
                                            RoundedRectSliderTrackShape(),
                                        activeTrackColor:
                                            ColorConstant.pinkA100,
                                        inactiveTrackColor:
                                            ColorConstant.pinkA10019,
                                        thumbColor: ColorConstant.whiteA700,
                                        thumbShape: RoundSliderThumbShape()),
                                    child: Slider(
                                        value:
                                            double.parse('${controller.hours}'),
                                        min: 0.0,
                                        max: 24.0,
                                        onChanged: (value) {
                                          controller.hours = value ~/ 1;
                                          controller.onChange();
                                        }))),
                            Padding(
                                padding: getPadding(top: 21),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 1, bottom: 1),
                                          child: Text("lbl_days".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtOpenSans12)),
                                      Text("${controller.days ~/ 1} days",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtOpenSansRomanSemiBold14)
                                    ])),
                            Padding(
                                padding: getPadding(top: 7, bottom: 10),
                                child: SliderTheme(
                                    data: SliderThemeData(
                                        trackShape:
                                            RoundedRectSliderTrackShape(),
                                        activeTrackColor:
                                            ColorConstant.pinkA100,
                                        inactiveTrackColor:
                                            ColorConstant.pinkA10019,
                                        thumbColor: ColorConstant.whiteA700,
                                        thumbShape: RoundSliderThumbShape()),
                                    child: Slider(
                                        value:
                                            double.parse('${controller.days}'),
                                        min: 0,
                                        max: 30,
                                        onChanged: (value) {
                                          controller.days = value ~/ 1;
                                          controller.onChange();
                                        })))
                          ]));
                },
              )
            ])),
        bottomNavigationBar: isFromBookingScreen ?? false
            ? CustomButton(
                height: getVerticalSize(48),
                width: getHorizontalSize(242),
                text: "Proceed".tr,
                margin: getMargin(left: 67, right: 66, bottom: 45),
                shape: ButtonShape.RoundedBorder8,
                fontStyle: ButtonFontStyle.RalewayBold16,
                onTap: () {
                  onTapNex();
                })
            : CustomButton(
                height: getVerticalSize(48),
                width: getHorizontalSize(242),
                text: "lbl_previous".tr,
                margin: getMargin(left: 67, right: 66, bottom: 45),
                shape: ButtonShape.RoundedBorder8,
                fontStyle: ButtonFontStyle.RalewayBold16,
                onTap: () {
                  onTapPrevious();
                }));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgArrowleft() {
    Get.back();
  }

  /// Navigates to the servicesScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the servicesScreen.
  onTapPrevious() {
    Get.toNamed(
      AppRoutes.servicesScreen,
    );
  }

  onTapNex() async {
    if (controller.total <= 0) return;
    await Hive.openBox('price');
    Hive.box('price').put('total', controller.total);
    Get.toNamed(
      AppRoutes.upcomingBookingTwoScreen,
    );
  }
}
