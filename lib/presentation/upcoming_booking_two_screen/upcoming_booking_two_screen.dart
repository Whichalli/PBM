<<<<<<< HEAD
import '../upcoming_booking_two_screen/widgets/listcreatefromf_item_widget.dart';import 'controller/upcoming_booking_two_controller.dart';import 'models/listcreatefromf_item_model.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/custom_button.dart';import 'package:pbm_care/widgets/custom_icon_button.dart';class UpcomingBookingTwoScreen extends GetWidget<UpcomingBookingTwoController> {const UpcomingBookingTwoScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Expanded(child: SingleChildScrollView(child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(434), width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [CustomButton(height: getVerticalSize(226), width: double.maxFinite, text: "lbl_payment".tr, shape: ButtonShape.CustomBorderBL30, padding: ButtonPadding.PaddingT122, fontStyle: ButtonFontStyle.OpenSansRomanBold18, prefixWidget: Container(margin: getMargin(right: 30), decoration: BoxDecoration(color: ColorConstant.whiteA700), child: CustomImageView(svgPath: ImageConstant.imgArrowleftWhiteA700)), onTap: () {onTapPayment();}, alignment: Alignment.topCenter), Align(alignment: Alignment.bottomCenter, child: Container(margin: getMargin(left: 20, right: 20), padding: getPadding(top: 20, bottom: 20), decoration: AppDecoration.outlinePinkA10019.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 20), child: Row(children: [CustomIconButton(height: 48, width: 48, margin: getMargin(bottom: 1), child: CustomImageView(svgPath: ImageConstant.imgLocationGray800)), Padding(padding: getPadding(left: 20, top: 1), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_100_aed".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold18), Padding(padding: getPadding(top: 6), child: Text("lbl_total_payment".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600))]))])), Padding(padding: getPadding(top: 28), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(19));}, itemCount: controller.upcomingBookingTwoModelObj.value.listcreatefromfItemList.value.length, itemBuilder: (context, index) {ListcreatefromfItemModel model = controller.upcomingBookingTwoModelObj.value.listcreatefromfItemList.value[index]; return ListcreatefromfItemWidget(model);}))), Padding(padding: getPadding(left: 26, top: 20, right: 56, bottom: 8), child: Row(children: [Padding(padding: getPadding(top: 1), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_date".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600), Padding(padding: getPadding(top: 10), child: Text("lbl_17_may_2023".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold16Gray800))])), Padding(padding: getPadding(left: 40), child: SizedBox(height: getVerticalSize(51), child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: ColorConstant.pinkA10019, endIndent: getHorizontalSize(1)))), Spacer(), Padding(padding: getPadding(top: 1, bottom: 1), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_time".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600), Padding(padding: getPadding(top: 9), child: Text("lbl_20_08".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold16Gray800))]))]))])))])), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 21), child: Text("lbl_payment_method".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800))), CustomImageView(svgPath: ImageConstant.imgFrame1000002918, height: getVerticalSize(80), width: getHorizontalSize(335), margin: getMargin(top: 12)), CustomImageView(svgPath: ImageConstant.imgFrame1000002919, height: getVerticalSize(80), width: getHorizontalSize(335), margin: getMargin(top: 20)), CustomButton(height: getVerticalSize(80), text: "lbl_cash".tr, margin: getMargin(left: 20, top: 20, right: 20), variant: ButtonVariant.FillPinkA10019, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll27, fontStyle: ButtonFontStyle.OpenSansRomanSemiBold18), SizedBox(width: double.maxFinite, child: GestureDetector(onTap: () {onTapColumnconfirm();}, child: Container(margin: getMargin(top: 30, right: 1, bottom: 8), padding: getPadding(left: 19, top: 10, right: 19, bottom: 10), decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomButton(height: getVerticalSize(53), text: "lbl_confirm".tr)]))))])))])))); } 
/// Navigates to the bookingStepTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the bookingStepTwoScreen.
onTapPayment() { Get.toNamed(AppRoutes.bookingStepTwoScreen, ); } 
/// Navigates to the upcomingBookingOne1Screen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBookingOne1Screen.
onTapColumnconfirm() { Get.toNamed(AppRoutes.upcomingBookingOne1Screen, ); } 
 }
=======
import '../upcoming_booking_two_screen/widgets/listcreatefromf_item_widget.dart';
import 'controller/upcoming_booking_two_controller.dart';
import 'models/listcreatefromf_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';

class UpcomingBookingTwoScreen extends GetWidget<UpcomingBookingTwoController> {
  const UpcomingBookingTwoScreen({Key? key}) : super(key: key);

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
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            SizedBox(
                                height: getVerticalSize(434),
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomButton(
                                          height: getVerticalSize(226),
                                          width: double.maxFinite,
                                          text: "lbl_payment".tr,
                                          shape: ButtonShape.CustomBorderBL30,
                                          padding: ButtonPadding.PaddingT122,
                                          fontStyle: ButtonFontStyle
                                              .OpenSansRomanBold18,
                                          prefixWidget: Container(
                                              margin: getMargin(right: 30),
                                              decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA700),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftWhiteA700)),
                                          onTap: () {
                                            onTapPayment();
                                          },
                                          alignment: Alignment.topCenter),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              margin: getMargin(
                                                  left: 20, right: 20),
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
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 20),
                                                        child: Row(children: [
                                                          CustomIconButton(
                                                              height: 48,
                                                              width: 48,
                                                              margin: getMargin(
                                                                  bottom: 1),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgLocationGray800)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 1),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_100_aed"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtOpenSansRomanSemiBold18),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                6),
                                                                        child: Text(
                                                                            "lbl_total_payment"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtOpenSansRomanSemiBold12Gray600))
                                                                  ]))
                                                        ])),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 28),
                                                        child: Obx(() =>
                                                            ListView.separated(
                                                                physics:
                                                                    NeverScrollableScrollPhysics(),
                                                                shrinkWrap:
                                                                    true,
                                                                separatorBuilder:
                                                                    (context,
                                                                        index) {
                                                                  return SizedBox(
                                                                      height:
                                                                          getVerticalSize(
                                                                              19));
                                                                },
                                                                itemCount: controller
                                                                    .upcomingBookingTwoModelObj
                                                                    .value
                                                                    .listcreatefromfItemList
                                                                    .value
                                                                    .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        index) {
                                                                  ListcreatefromfItemModel
                                                                      model =
                                                                      controller
                                                                          .upcomingBookingTwoModelObj
                                                                          .value
                                                                          .listcreatefromfItemList
                                                                          .value[index];
                                                                  return ListcreatefromfItemWidget(
                                                                      model);
                                                                }))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 26,
                                                            top: 20,
                                                            right: 56,
                                                            bottom: 8),
                                                        child: Row(children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_date"
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
                                                                        padding: getPadding(
                                                                            top:
                                                                                10),
                                                                        child: Text(
                                                                            "lbl_17_may_2023"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtOpenSansRomanSemiBold16Gray800))
                                                                  ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 40),
                                                              child: SizedBox(
                                                                  height:
                                                                      getVerticalSize(
                                                                          51),
                                                                  child: VerticalDivider(
                                                                      width:
                                                                          getHorizontalSize(
                                                                              1),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              1),
                                                                      color: ColorConstant
                                                                          .pinkA10019,
                                                                      endIndent:
                                                                          getHorizontalSize(
                                                                              1)))),
                                                          Spacer(),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1,
                                                                      bottom:
                                                                          1),
                                                              child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_time"
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
                                                                        padding: getPadding(
                                                                            top:
                                                                                9),
                                                                        child: Text(
                                                                            "lbl_20_08"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtOpenSansRomanSemiBold16Gray800))
                                                                  ]))
                                                        ]))
                                                  ])))
                                    ])),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 20, top: 21),
                                    child: Text("lbl_payment_method".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSansRomanSemiBold14Gray800))),
                            CustomImageView(
                                svgPath: ImageConstant.imgFrame1000002918,
                                height: getVerticalSize(80),
                                width: getHorizontalSize(335),
                                margin: getMargin(top: 12)),
                            CustomImageView(
                                svgPath: ImageConstant.imgFrame1000002919,
                                height: getVerticalSize(80),
                                width: getHorizontalSize(335),
                                margin: getMargin(top: 20)),
                            CustomButton(
                                height: getVerticalSize(80),
                                text: "lbl_cash".tr,
                                margin: getMargin(left: 20, top: 20, right: 20),
                                variant: ButtonVariant.FillPinkA10019,
                                shape: ButtonShape.RoundedBorder16,
                                padding: ButtonPadding.PaddingAll27,
                                fontStyle:
                                    ButtonFontStyle.OpenSansRomanSemiBold18),
                            SizedBox(
                                width: double.maxFinite,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapColumnconfirm();
                                    },
                                    child: Container(
                                        margin: getMargin(
                                            top: 30, right: 1, bottom: 8),
                                        padding: getPadding(
                                            left: 19,
                                            top: 10,
                                            right: 19,
                                            bottom: 10),
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomButton(
                                                  height: getVerticalSize(53),
                                                  text: "lbl_confirm".tr)
                                            ]))))
                          ])))
                    ]))));
  }

  /// Navigates to the bookingStepTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the bookingStepTwoScreen.
  onTapPayment() {
    Get.toNamed(
      AppRoutes.bookingStepTwoScreen,
      arguments: {'employeeId': Get.arguments['employeeId']}
    );
  }

  /// Navigates to the upcomingBookingOne1Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingOne1Screen.
  onTapColumnconfirm() {
    Get.toNamed(
      AppRoutes.upcomingBookingOne1Screen,
      arguments: {'employeeId': Get.arguments['employeeId']}
    );
  }
}
>>>>>>> dev
