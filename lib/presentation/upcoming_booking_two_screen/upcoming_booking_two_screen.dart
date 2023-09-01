import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';

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
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: SizedBox(
            width: double.maxFinite,
            child: GetBuilder<UpcomingBookingTwoController>(
                builder: (controller) => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                SizedBox(
                                    height: getVerticalSize(170),
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomButton(
                                              height: getVerticalSize(226),
                                              width: double.maxFinite,
                                              text: "lbl_payment".tr,
                                              shape:
                                                  ButtonShape.CustomBorderBL30,
                                              padding:
                                                  ButtonPadding.PaddingT122,
                                              fontStyle: ButtonFontStyle
                                                  .OpenSansRomanBold18,
                                              prefixWidget: Container(
                                                  margin: getMargin(right: 30),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA700),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleftWhiteA700)),
                                              onTap: () {
                                                onTapPayment();
                                              },
                                              alignment: Alignment.topCenter),
                                          Align(
                                              alignment: Alignment(
                                                  Alignment.center.x, 50),
                                              child: Container(
                                                  margin: getMargin(
                                                    left: 20,
                                                    right: 20,
                                                  ),
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
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20),
                                                            child: Row(
                                                                children: [
                                                                  CustomIconButton(
                                                                      height:
                                                                          48,
                                                                      width: 48,
                                                                      margin: getMargin(
                                                                          bottom:
                                                                              1),
                                                                      child: CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgLocationGray800)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              20,
                                                                          top:
                                                                              1),
                                                                      child: Column(
                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Text("${controller.price} AED".tr,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtOpenSansRomanSemiBold18),
                                                                            Padding(
                                                                                padding: getPadding(top: 6),
                                                                                child: Text("lbl_total_payment".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600))
                                                                          ]))
                                                                ])),
                                                        // Padding(
                                                        //     padding:
                                                        //         getPadding(
                                                        //             top:
                                                        //                 28),
                                                        //     child: Obx(() => ListView.separated(
                                                        //         physics: NeverScrollableScrollPhysics(),
                                                        //         shrinkWrap: true,
                                                        //         separatorBuilder: (context, index) {
                                                        //           return SizedBox(
                                                        //               height: getVerticalSize(19));
                                                        //         },
                                                        //         itemCount: controller.upcomingBookingTwoModelObj.value.listcreatefromfItemList.value.length,
                                                        //         itemBuilder: (context, index) {
                                                        //           ListcreatefromfItemModel model = controller
                                                        //               .upcomingBookingTwoModelObj
                                                        //               .value
                                                        //               .listcreatefromfItemList
                                                        //               .value[index];
                                                        //           return ListcreatefromfItemWidget(
                                                        //               model);
                                                        //         }))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 26,
                                                                top: 20,
                                                                right: 56,
                                                                bottom: 8),
                                                            child: Row(
                                                                children: [
                                                                  Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                            "lbl_date"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtOpenSansRomanSemiBold12Gray600),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 10),
                                                                            child: Text("lbl_17_may_2023".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold16Gray800))
                                                                      ]),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              40),
                                                                      child: SizedBox(
                                                                          height: getVerticalSize(
                                                                              51),
                                                                          child: VerticalDivider(
                                                                              width: getHorizontalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: ColorConstant.pinkA10019,
                                                                              endIndent: getHorizontalSize(1)))),
                                                                  Spacer(),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1,
                                                                          bottom:
                                                                              1),
                                                                      child: Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Text("lbl_time".tr,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtOpenSansRomanSemiBold12Gray600),
                                                                            Padding(
                                                                                padding: getPadding(top: 9),
                                                                                child: Text("lbl_20_08".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold16Gray800))
                                                                          ]))
                                                                ]))
                                                      ])))
                                        ])),
                                const SizedBox(
                                  height: 50,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 20, top: 21),
                                        child: Text("lbl_payment_method".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanSemiBold14Gray800))),
                                // CustomImageView(
                                //     svgPath: ImageConstant.imgFrame1000002918,
                                //     height: getVerticalSize(80),
                                //     width: getHorizontalSize(335),
                                //     margin: getMargin(top: 12)),
                                // CustomImageView(
                                //     svgPath: ImageConstant.imgFrame1000002919,
                                //     height: getVerticalSize(80),
                                //     width: getHorizontalSize(335),
                                //     margin: getMargin(top: 20)),
                                Row(
                                  children: [
                                    Expanded(
                                      child: CustomButton(
                                          height: getVerticalSize(80),
                                          text: "Visa".tr,
                                          onTap: () {
                                            controller.onTapVisaCard();
                                          },
                                          suffixWidget: !controller.isVisa
                                              ? null
                                              : Icon(
                                                  Icons
                                                      .check_circle_outline_outlined,
                                                  color: ColorConstant.pinkA100,
                                                ),
                                          margin: getMargin(
                                              left: 20, top: 20, right: 8),
                                          variant: !controller.isVisa
                                              ? ButtonVariant.FillPinkA10019
                                              : ButtonVariant.OutlinePinkA100,
                                          shape: ButtonShape.RoundedBorder16,
                                          padding: ButtonPadding.PaddingAll4,
                                          fontStyle: !controller.isVisa
                                              ? ButtonFontStyle.OpenSans20
                                              : ButtonFontStyle.Selected),
                                    ),
                                    Expanded(
                                      child: CustomButton(
                                          height: getVerticalSize(80),
                                          text: "MasterCard".tr,
                                          onTap: () {
                                            controller.onTapMasterCard();
                                          },
                                          suffixWidget: !controller.isMasterCard
                                              ? null
                                              : Icon(
                                                  Icons
                                                      .check_circle_outline_outlined,
                                                  color: ColorConstant.pinkA100,
                                                ),
                                          margin: getMargin(
                                              left: 8, top: 20, right: 20),
                                          variant: !controller.isMasterCard
                                              ? ButtonVariant.FillPinkA10019
                                              : ButtonVariant.OutlinePinkA100,
                                          shape: ButtonShape.RoundedBorder16,
                                          padding: ButtonPadding.PaddingAll4,
                                          fontStyle: !controller.isMasterCard
                                              ? ButtonFontStyle.OpenSans20
                                              : ButtonFontStyle.Selected),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: CustomButton(
                                          height: getVerticalSize(80),
                                          text: "PayPal".tr,
                                          onTap: () {
                                            controller.onTapPayPal();
                                          },
                                          suffixWidget: !controller.isPayPal
                                              ? null
                                              : Icon(
                                                  Icons
                                                      .check_circle_outline_outlined,
                                                  color: ColorConstant.pinkA100,
                                                ),
                                          margin: getMargin(
                                              left: 20, top: 20, right: 8),
                                          variant: !controller.isPayPal
                                              ? ButtonVariant.FillPinkA10019
                                              : ButtonVariant.OutlinePinkA100,
                                          shape: ButtonShape.RoundedBorder16,
                                          padding: ButtonPadding.PaddingAll4,
                                          fontStyle: !controller.isPayPal
                                              ? ButtonFontStyle.OpenSans20
                                              : ButtonFontStyle.Selected),
                                    ),
                                    Expanded(
                                      child: CustomButton(
                                          height: getVerticalSize(80),
                                          text: "Pay".tr,
                                          onTap: () {
                                            controller.onTapApple();
                                          },
                                          suffixWidget: !controller.isApplePay
                                              ? null
                                              : Icon(
                                                  Icons
                                                      .check_circle_outline_outlined,
                                                  color: ColorConstant.pinkA100,
                                                ),
                                          prefixWidget: Icon(
                                            Icons.apple,
                                            color: ColorConstant.gray500,
                                          ),
                                          margin: getMargin(
                                              left: 8, top: 20, right: 20),
                                          variant: !controller.isApplePay
                                              ? ButtonVariant.FillPinkA10019
                                              : ButtonVariant.OutlinePinkA100,
                                          shape: ButtonShape.RoundedBorder16,
                                          padding: ButtonPadding.PaddingAll4,
                                          fontStyle: !controller.isApplePay
                                              ? ButtonFontStyle.OpenSans20
                                              : ButtonFontStyle.Selected),
                                    ),
                                  ],
                                ),
                                CustomButton(
                                    height: getVerticalSize(80),
                                    text: "lbl_cash".tr,
                                    suffixWidget: !controller.isCash
                                        ? null
                                        : Icon(
                                            Icons.check_circle_outline_outlined,
                                            color: ColorConstant.pinkA100,
                                          ),
                                    onTap: () {
                                      controller.onTapCash();
                                    },
                                    margin:
                                        getMargin(left: 20, top: 20, right: 20),
                                    variant: !controller.isCash
                                        ? ButtonVariant.FillPinkA10019
                                        : ButtonVariant.OutlinePinkA100,
                                    shape: ButtonShape.RoundedBorder16,
                                    padding: ButtonPadding.PaddingAll4,
                                    fontStyle: !controller.isCash
                                        ? ButtonFontStyle.OpenSans20
                                        : ButtonFontStyle.Selected),
                                SizedBox(
                                    width: double.maxFinite,
                                    child: GestureDetector(
                                        onTap: controller.loading
                                            ? null
                                            : () async {
                                                controller.loading = true;
                                                controller.update();
                                                await onTapColumnconfirm();
                                                controller.loading = false;
                                                controller.update();
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
                                                    text: controller.loading
                                                        ? null
                                                        : "lbl_confirm".tr,
                                                    icon: !controller.loading
                                                        ? null
                                                        : const SizedBox(
                                                            height: 15,
                                                            width: 15,
                                                            child:
                                                                CircularProgressIndicator(
                                                              strokeWidth: 2,
                                                              color:
                                                                  Colors.white,
                                                            )),
                                                  )
                                                ]))))
                              ])))
                        ]))));
  }

  /// Navigates to the bookingStepTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the bookingStepTwoScreen.
  onTapPayment() {
    Get.toNamed(AppRoutes.bookingStepTwoScreen,
        arguments: {'employeeId': Get.arguments['employeeId']});
  }

  /// Navigates to the upcomingBookingOne1Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingOne1Screen.
  onTapColumnconfirm() async {
    if (controller.isApplePay ||
        controller.isCash ||
        controller.isMasterCard ||
        controller.isPayPal) {
      if (!controller.isCash) {
        Get.toNamed(AppRoutes.upcomingBookingOne1Screen,
            arguments: {'price': Hive.box('price').get('total')});
        return;
      }
      await controller.onTapPay();
      return;
    }
    Fluttertoast.showToast(msg: 'Select a payment method');
  }
}
