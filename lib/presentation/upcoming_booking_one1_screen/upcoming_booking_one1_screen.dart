import 'controller/upcoming_booking_one1_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/core/utils/validation_functions.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class UpcomingBookingOne1Screen
    extends GetWidget<UpcomingBookingOne1Controller> {
  UpcomingBookingOne1Screen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
            key: _formKey,
            child: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(282),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(176),
                                    width: double.maxFinite,
                                    text: "lbl_payment".tr,
                                    shape: ButtonShape.CustomBorderBL30,
                                    padding: ButtonPadding.PaddingT97,
                                    fontStyle:
                                        ButtonFontStyle.OpenSansRomanBold18,
                                    prefixWidget: Container(
                                        margin: getMargin(right: 30),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftWhiteA700)),
                                    onTap: () {
                                      onTapPayment();
                                    },
                                    alignment: Alignment.topCenter),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: ColorConstant.pinkA10019,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                        child: Container(
                                            height: getVerticalSize(210),
                                            width: getHorizontalSize(332),
                                            decoration: AppDecoration
                                                .outlinePinkA100192
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          decoration: AppDecoration
                                                              .white
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder8),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            68),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            332),
                                                                    margin: getMargin(
                                                                        top:
                                                                            139),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.pinkA100))
                                                              ]))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              right: 16,
                                                              bottom: 12),
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
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgBackgroundbasic,
                                                                    height:
                                                                        getVerticalSize(
                                                                            16),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            53)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 7,
                                                                        top:
                                                                            48),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Container(
                                                                              height: getVerticalSize(20),
                                                                              width: getHorizontalSize(168),
                                                                              margin: getMargin(top: 5, bottom: 6),
                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                Align(alignment: Alignment.bottomLeft, child: Container(height: getSize(8), width: getSize(8), margin: getMargin(left: 10), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(4))))),
                                                                                Align(
                                                                                    alignment: Alignment.center,
                                                                                    child: SizedBox(
                                                                                        width: getHorizontalSize(168),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                          CustomImageView(svgPath: ImageConstant.imgSignal, height: getVerticalSize(6), width: getHorizontalSize(33), margin: getMargin(top: 6, bottom: 7)),
                                                                                          CustomImageView(svgPath: ImageConstant.imgSignal, height: getVerticalSize(6), width: getHorizontalSize(33), margin: getMargin(top: 6, bottom: 7)),
                                                                                          CustomImageView(svgPath: ImageConstant.imgSignal, height: getVerticalSize(6), width: getHorizontalSize(33), margin: getMargin(top: 6, bottom: 7)),
                                                                                          Text("lbl_3489".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800.copyWith(letterSpacing: getHorizontalSize(2.1)))
                                                                                        ])))
                                                                              ])),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgVolumePinkA100,
                                                                              height: getSize(32),
                                                                              width: getSize(32))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 6,
                                                                        top: 41,
                                                                        right:
                                                                            7),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Padding(padding: getPadding(left: 1), child: Text("lbl_name2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold10WhiteA70090.copyWith(letterSpacing: getHorizontalSize(2.0)))),
                                                                                Text("lbl_jeremy_smith".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanBold14WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.7)))
                                                                              ]),
                                                                          Padding(
                                                                              padding: getPadding(top: 15, bottom: 3),
                                                                              child: Text("lbl_09_24".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanBold12WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.6))))
                                                                        ]))
                                                              ])))
                                                ]))))
                              ])),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: controller.cardnumberController,
                          hintText: "lbl_card_number".tr,
                          margin: getMargin(left: 22, top: 30, right: 21),
                          textInputType: TextInputType.number,
                          validator: (value) {
                            if (!isNumeric(value)) {
                              return "Please enter valid number";
                            }
                            return null;
                          }),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: controller.nameoneController,
                          hintText: "lbl_jeremy_smith".tr,
                          margin: getMargin(left: 22, top: 20, right: 21),
                          fontStyle:
                              TextFormFieldFontStyle.OpenSansRomanSemiBold12),
                      Padding(
                          padding: getPadding(
                              left: 22, top: 20, right: 21, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTextFormField(
                                    width: getHorizontalSize(156),
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: controller.timeoneController,
                                    hintText: "lbl_09_24".tr,
                                    fontStyle: TextFormFieldFontStyle
                                        .OpenSansRomanSemiBold12),
                                CustomTextFormField(
                                    width: getHorizontalSize(156),
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: controller.cvvController,
                                    hintText: "lbl_cvv".tr,
                                    margin: getMargin(left: 20),
                                    textInputAction: TextInputAction.done)
                              ]))
                    ]))),
        bottomNavigationBar: Container(
            margin: getMargin(left: 16, right: 16, bottom: 8),
            decoration: AppDecoration.white,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx(() => CustomButton(
                      height: getVerticalSize(50),
                      text: controller.loading.value ? null : "lbl_pay".tr,
                      icon: controller.loading.value
                          ? SizedBox(
                              width: 18,
                              child: const CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : null,
                      onTap: controller.loading.value
                          ? null
                          : () async {
                              controller.loading.value = true;
                              await controller.onTapPay();
                              controller.loading.value = false;
                            }))
                ])));
  }

  /// Navigates to the upcomingBookingTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingTwoScreen.
  onTapPayment() {
    Get.toNamed(
      AppRoutes.upcomingBookingTwoScreen,
    );
  }

  /// Navigates to the upcomingBookingScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingScreen.
}
