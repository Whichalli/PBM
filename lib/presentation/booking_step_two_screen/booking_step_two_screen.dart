<<<<<<< HEAD
import 'controller/booking_step_two_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/app_bar/appbar_image.dart';import 'package:pbm_care/widgets/app_bar/appbar_subtitle_3.dart';import 'package:pbm_care/widgets/app_bar/custom_app_bar.dart';import 'package:pbm_care/widgets/custom_button.dart';import 'package:pbm_care/widgets/custom_radio_button.dart';import 'package:pbm_care/widgets/custom_text_form_field.dart';class BookingStepTwoScreen extends GetWidget<BookingStepTwoController> {const BookingStepTwoScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 29, leading: AppbarImage(height: getVerticalSize(15), width: getHorizontalSize(9), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 20, top: 15, bottom: 18), onTap: () {onTapArrowleft2();}), centerTitle: true, title: AppbarSubtitle3(text: "lbl_booking".tr), actions: [AppbarImage(height: getSize(20), width: getSize(20), svgPath: ImageConstant.imgSearchGray80020x20, margin: getMargin(left: 20, top: 12, right: 20, bottom: 16))]), body: Container(width: double.maxFinite, padding: getPadding(top: 6, bottom: 6), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 25, right: 19), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [GestureDetector(onTap: () {onTapTxtTime();}, child: Padding(padding: getPadding(top: 10, bottom: 9), child: Text("lbl_time".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSans16))), CustomButton(height: getVerticalSize(42), width: getHorizontalSize(115), text: "lbl_details".tr, margin: getMargin(left: 46), variant: ButtonVariant.OutlinePinkA100_2, shape: ButtonShape.Square, padding: ButtonPadding.PaddingAll9, fontStyle: ButtonFontStyle.OpenSans16), Spacer(), Padding(padding: getPadding(top: 10, bottom: 9), child: Text("lbl_finish".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSans16))]))), Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.pinkA10019), Padding(padding: getPadding(left: 20, top: 20), child: Text("msg_has_this_nurse_worked".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15)), Padding(padding: getPadding(left: 20, top: 12), child: Obx(() => Column(children: [CustomRadioButton(text: "lbl_yes".tr, value: controller.bookingStepTwoModelObj.value.radioList.value[0], groupValue: controller.radioGroup.value, fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup.value = value;}), CustomRadioButton(text: "lbl_no".tr, value: controller.bookingStepTwoModelObj.value.radioList.value[1], groupValue: controller.radioGroup.value, margin: getMargin(top: 13, right: 3), fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup.value = value;})]))), Padding(padding: getPadding(top: 18), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.pinkA10019)), Padding(padding: getPadding(left: 20, top: 20), child: Text("lbl_payment_process".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15)), Padding(padding: getPadding(left: 20, top: 11), child: Obx(() => Column(children: [CustomRadioButton(text: "lbl_after_visit".tr, value: controller.bookingStepTwoModelObj.value.radioList1.value[0], groupValue: controller.radioGroup1.value, margin: getMargin(right: 13), fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup1.value = value;}), CustomRadioButton(text: "lbl_before_visit".tr, value: controller.bookingStepTwoModelObj.value.radioList1.value[1], groupValue: controller.radioGroup1.value, margin: getMargin(top: 14), fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup1.value = value;})]))), Padding(padding: getPadding(left: 22, top: 22), child: Text("msg_assessment_physical".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Bluegray90003)), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 11), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray50, indent: getHorizontalSize(23), endIndent: getHorizontalSize(21)))), Padding(padding: getPadding(left: 22, top: 1), child: Row(children: [CustomTextFormField(width: getHorizontalSize(67), focusNode: FocusNode(), autofocus: true, controller: controller.bitesController, hintText: "lbl_bites".tr, margin: getMargin(bottom: 1), variant: TextFormFieldVariant.None, fontStyle: TextFormFieldFontStyle.OpenSansRomanRegular15Bluegray90003, textInputAction: TextInputAction.done, prefix: Container(margin: getMargin(right: 12), child: CustomImageView(svgPath: ImageConstant.img07RadioButton1Basic1Checked1DefaultPinkA100)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(18))), Padding(padding: getPadding(left: 78), child: Obx(() => CustomRadioButton(text: "lbl_rashes".tr, value: "lbl_rashes".tr, groupValue: controller.radioGroup2.value, margin: getMargin(left: 78), fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup2.value = value;})))])), Padding(padding: getPadding(left: 22, top: 14, right: 53), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Obx(() => CustomRadioButton(text: "lbl_bruises".tr, value: "lbl_bruises".tr, groupValue: controller.radioGroup3.value, fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup3.value = value;})), Obx(() => CustomRadioButton(text: "msg_allergic_reactions".tr, value: "msg_allergic_reactions".tr, groupValue: controller.radioGroup4.value, fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup4.value = value;}))])), Padding(padding: getPadding(left: 23, top: 14, right: 118), child: Row(children: [Padding(padding: getPadding(bottom: 2), child: Obx(() => CustomRadioButton(text: "lbl_fiver".tr, value: "lbl_fiver".tr, groupValue: controller.radioGroup5.value, margin: getMargin(bottom: 2), fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup5.value = value;}))), Spacer(), CustomImageView(svgPath: ImageConstant.img07RadioButton1Basic1Checked1Default, height: getVerticalSize(18), width: getHorizontalSize(20), margin: getMargin(top: 3)), Padding(padding: getPadding(left: 12, top: 3), child: Text("lbl_redness".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanRegular15Bluegray90003))])), Align(alignment: Alignment.centerRight, child: Container(height: getVerticalSize(56), width: getHorizontalSize(354), margin: getMargin(top: 8), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.topRight, child: Container(padding: getPadding(left: 16, top: 9, right: 16, bottom: 9), decoration: AppDecoration.fillGray5001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_others".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanRegular15Bluegray300)]))), Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(left: 2, top: 5), child: Row(children: [CustomImageView(svgPath: ImageConstant.img07RadioButton1Basic1Checked1Default, height: getVerticalSize(18), width: getHorizontalSize(20)), Padding(padding: getPadding(left: 12), child: Text("lbl_swelling".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanRegular15Bluegray90003))]))), Align(alignment: Alignment.bottomLeft, child: Text("msg_handed_over_to_who".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Bluegray90003))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 12), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray50, indent: getHorizontalSize(22), endIndent: getHorizontalSize(23)))), Padding(padding: getPadding(left: 21, top: 2, right: 66), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.img07RadioButton1Basic1Checked1DefaultPinkA100, height: getVerticalSize(18), width: getHorizontalSize(20), margin: getMargin(bottom: 10)), Padding(padding: getPadding(left: 12, bottom: 10), child: Text("lbl_father".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanRegular15Bluegray90003)), Spacer(), Padding(padding: getPadding(top: 9), child: Obx(() => CustomRadioButton(text: "lbl_home_nanny".tr, value: "lbl_home_nanny".tr, groupValue: controller.radioGroup6.value, margin: getMargin(top: 9), fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup6.value = value;})))])), Padding(padding: getPadding(left: 21, top: 5, right: 110), child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: getPadding(bottom: 5), child: Obx(() => CustomRadioButton(text: "lbl_mother".tr, value: "lbl_mother".tr, groupValue: controller.radioGroup7.value, margin: getMargin(bottom: 5), fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup7.value = value;}))), Spacer(), CustomImageView(svgPath: ImageConstant.img07RadioButton1Basic1Checked1Default, height: getVerticalSize(18), width: getHorizontalSize(20), margin: getMargin(top: 6)), Padding(padding: getPadding(left: 12, top: 6), child: Text("lbl_family".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanRegular15Bluegray90003))])), Padding(padding: getPadding(left: 21, top: 9, bottom: 5), child: Obx(() => CustomRadioButton(text: "lbl_another_staff".tr, value: "lbl_another_staff".tr, groupValue: controller.radioGroup8.value, margin: getMargin(left: 21, top: 9, bottom: 5), fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup8.value = value;})))])), bottomNavigationBar: Container(margin: getMargin(left: 20, right: 19, bottom: 30), decoration: AppDecoration.white, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [CustomButton(height: getVerticalSize(53), text: "lbl_next".tr, onTap: () {onTapNext();})])))); } 
/// Navigates to the bookingStepOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the bookingStepOneScreen.
onTapTxtTime() { Get.toNamed(AppRoutes.bookingStepOneScreen, ); } 
/// Navigates to the upcomingBookingTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBookingTwoScreen.
onTapNext() { Get.toNamed(AppRoutes.upcomingBookingTwoScreen, ); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] library to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleft2() { Get.back(); } 
 }
=======
import 'controller/booking_step_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_radio_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

class BookingStepTwoScreen extends GetWidget<BookingStepTwoController> {
  const BookingStepTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(48),
            leadingWidth: 29,
            leading: AppbarImage(
                height: getVerticalSize(15),
                width: getHorizontalSize(9),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 20, top: 15, bottom: 18),
                onTap: () {
                  onTapArrowleft2();
                }),
            centerTitle: true,
            title: AppbarSubtitle3(text: "lbl_booking".tr),
            actions: [
              AppbarImage(
                  height: getSize(20),
                  width: getSize(20),
                  svgPath: ImageConstant.imgSearchGray80020x20,
                  margin: getMargin(left: 20, top: 12, right: 20, bottom: 16))
            ]),
        body: Container(
            width: double.maxFinite,
            padding: getPadding(top: 6, bottom: 6, left: 16, right: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 25, right: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtTime();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 10, bottom: 9),
                                        child: Text("lbl_time".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOpenSans16))),
                                Spacer(),
                                CustomButton(
                                    height: getVerticalSize(35),
                                    width: getHorizontalSize(90),
                                    text: "lbl_details".tr,
                                    variant: ButtonVariant.OutlinePinkA100_2,
                                    shape: ButtonShape.RoundedBorder8,
                                    padding: ButtonPadding.PaddingAll9,
                                    fontStyle: ButtonFontStyle.OpenSans16),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 10, bottom: 9),
                                    child: Text("lbl_finish".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOpenSans16))
                              ]))),
                  Divider(
                      height: getVerticalSize(1),
                      thickness: getVerticalSize(1),
                      color: ColorConstant.pinkA10019),
                  Expanded(
                      child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(top: 20),
                            child: Text("msg_has_this_nurse_worked".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtOpenSansRomanSemiBold15)),
                        Padding(
                            padding: getPadding(left: 20, top: 12),
                            child: Obx(() => Column(children: [
                                  CustomRadioButton(
                                      text: "lbl_yes".tr,
                                      value: controller.bookingStepTwoModelObj
                                          .value.radioList.value[0],
                                      groupValue:
                                          controller.radioWorkedB4.value,
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioWorkedB4.value = value;
                                      }),
                                  CustomRadioButton(
                                      text: "lbl_no".tr,
                                      value: controller.bookingStepTwoModelObj
                                          .value.radioList.value[1],
                                      groupValue:
                                          controller.radioWorkedB4.value,
                                      margin: getMargin(top: 13, right: 3),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioWorkedB4.value = value;
                                      })
                                ]))),
                        Padding(
                            padding: getPadding(top: 18),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.pinkA10019)),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Text("lbl_payment_process".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtOpenSansRomanSemiBold15)),
                        Padding(
                            padding: getPadding(left: 20, top: 11),
                            child: Obx(() => Column(children: [
                                  CustomRadioButton(
                                      text: "lbl_after_visit".tr,
                                      value: controller.bookingStepTwoModelObj
                                          .value.radioList1.value[0],
                                      groupValue: controller.radioPayment.value,
                                      margin: getMargin(right: 13),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioPayment.value = value;
                                      }),
                                  CustomRadioButton(
                                      text: "lbl_before_visit".tr,
                                      value: controller.bookingStepTwoModelObj
                                          .value.radioList1.value[1],
                                      groupValue: controller.radioPayment.value,
                                      margin: getMargin(top: 14),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioPayment.value = value;
                                      })
                                ]))),
                        Padding(
                            padding: getPadding(top: 22),
                            child: Text("msg_assessment_physical".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtOpenSansRomanSemiBold15Bluegray90003)),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 11),
                                child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: ColorConstant.blueGray50,
                                    indent: getHorizontalSize(23),
                                    endIndent: getHorizontalSize(21)))),
                        Padding(
                            padding: getPadding(top: 1, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Obx(() => CustomRadioButton(
                                      text: "lbl_bites".tr,
                                      value: "lbl_bites".tr,
                                      groupValue: controller.radioBites.value,
                                      margin: getMargin(left: 22),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioBites.value =
                                            controller.radioBites.isEmpty
                                                ? value
                                                : '';
                                      })),
                                  Obx(() => CustomRadioButton(
                                      text: "lbl_rashes".tr,
                                      value: "lbl_rashes".tr,
                                      groupValue: controller.radioRashes.value,
                                      // margin: getMargin(left: 78),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioRashes.value =
                                            controller.radioRashes.isEmpty
                                                ? value
                                                : '';
                                      }))
                                ])),
                        Padding(
                            padding: getPadding(left: 22, top: 1, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Obx(() => CustomRadioButton(
                                      text: "lbl_bruises".tr,
                                      value: "lbl_bruises".tr,
                                      groupValue: controller.radioBruises.value,
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioBruises.value =
                                            controller.radioBruises.isEmpty
                                                ? value
                                                : '';
                                      })),
                                  Obx(() => CustomRadioButton(
                                      text: "msg_allergic_reactions".tr,
                                      value: "msg_allergic_reactions".tr,
                                      groupValue: controller.radioAlergy.value,
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioAlergy.value =
                                            controller.radioAlergy.isEmpty
                                                ? value
                                                : '';
                                      }))
                                ])),
                        Padding(
                            padding: getPadding(left: 23, top: 1, right: 24),
                            child: Row(children: [
                              Padding(
                                  padding: getPadding(bottom: 2),
                                  child: Obx(() => CustomRadioButton(
                                      text: "lbl_fiver".tr,
                                      value: "lbl_fiver".tr,
                                      groupValue: controller.radioFiver.value,
                                      margin: getMargin(bottom: 2),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioFiver.value =
                                            controller.radioFiver.isEmpty
                                                ? value
                                                : '';
                                      }))),
                              Spacer(),
                              Padding(
                                  padding: getPadding(bottom: 2),
                                  child: Obx(() => CustomRadioButton(
                                      text: "lbl_redness".tr,
                                      value: "lbl_redness".tr,
                                      groupValue: controller.radioRedness.value,
                                      margin: getMargin(bottom: 2),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioRedness.value =
                                            controller.radioRedness.isEmpty
                                                ? value
                                                : '';
                                      }))),
                            ])),
                        Row(
                            // alignment: Alignment.topLeft,
                            children: [
                              Padding(
                                  padding: getPadding(bottom: 2),
                                  child: Obx(() => CustomRadioButton(
                                      text: "lbl_swelling".tr,
                                      value: "lbl_swelling".tr,
                                      groupValue: controller.radioSwell.value,
                                      margin: getMargin(bottom: 2, left: 24),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioSwell.value =
                                            controller.radioSwell.isEmpty
                                                ? value
                                                : '';
                                      }))),
                              const SizedBox(
                                width: 12,
                              ),
                              SizedBox(
                                width: 200,
                                child: CustomTextFormField(
                                  autofocus: false,
                                  hintText: 'others',
                                  padding: TextFormFieldPadding.PaddingT10,
                                  shape: TextFormFieldShape.RoundedBorder4,
                                  variant:
                                      TextFormFieldVariant.OutlineGray10001,
                                  fontStyle: TextFormFieldFontStyle.OpenSans14,
                                  controller: controller.othersController,
                                ),
                              ),
                            ]),
                        const SizedBox(
                          height: 16,
                        ),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("msg_handed_over_to_who".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtOpenSansRomanSemiBold15Bluegray90003)),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 12),
                                child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: ColorConstant.blueGray50,
                                    indent: getHorizontalSize(22),
                                    endIndent: getHorizontalSize(23)))),
                        Padding(
                            padding: getPadding(left: 24, top: 2, right: 24),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Obx(() => CustomRadioButton(
                                      text: "lbl_father".tr,
                                      value: "lbl_father".tr,
                                      groupValue:
                                          controller.radioHanded2Who.value,
                                      margin: getMargin(top: 9),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioHanded2Who.value =
                                            value;
                                      })),
                                  Spacer(),
                                  Obx(() => CustomRadioButton(
                                      text: "lbl_home_nanny".tr,
                                      value: "lbl_home_nanny".tr,
                                      groupValue:
                                          controller.radioHanded2Who.value,
                                      margin: getMargin(top: 9),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioHanded2Who.value =
                                            value;
                                      }))
                                ])),
                        Padding(
                            padding: getPadding(left: 24, top: 5, right: 24),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Obx(() => CustomRadioButton(
                                      text: "lbl_mother".tr,
                                      value: "lbl_mother".tr,
                                      groupValue:
                                          controller.radioHanded2Who.value,
                                      // margin: getMargin(bottom: 5),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioHanded2Who.value =
                                            value;
                                      })),
                                  Spacer(),
                                  Obx(() => CustomRadioButton(
                                      text: "lbl_family".tr,
                                      value: "lbl_family".tr,
                                      groupValue:
                                          controller.radioHanded2Who.value,
                                      // margin: getMargin(bottom: 5),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioHanded2Who.value =
                                            value;
                                      })),
                                ])),
                        Padding(
                            padding: getPadding(left: 24, bottom: 5),
                            child: Obx(() => CustomRadioButton(
                                text: "lbl_another_staff".tr,
                                value: "lbl_another_staff".tr,
                                groupValue: controller.radioHanded2Who.value,
                                margin: getMargin(bottom: 5),
                                fontStyle:
                                    RadioFontStyle.OpenSansRomanRegular15,
                                onChange: (value) {
                                  controller.radioHanded2Who.value = value;
                                }))),
                        Padding(
                            padding: getPadding(top: 22),
                            child: Text("msg_additional_information".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtOpenSansRomanSemiBold15Bluegray90003)),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 11),
                                child: Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: ColorConstant.blueGray50,
                                    indent: getHorizontalSize(23),
                                    endIndent: getHorizontalSize(21)))),
                        Padding(
                            padding: getPadding(top: 1, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Obx(() => CustomRadioButton(
                                      text: "lbl_formula".tr,
                                      value: "lbl_formula".tr,
                                      groupValue: controller.radioAddInfo.value,
                                      margin: getMargin(left: 22),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioAddInfo.value = value;
                                      })),
                                  Obx(() => CustomRadioButton(
                                      text: "lbl_bottles".tr,
                                      value: "lbl_bottles".tr,
                                      groupValue: controller.radioAddInfo.value,
                                      margin: getMargin(left: 22),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioAddInfo.value = value;
                                      })),
                                ])),
                        Padding(
                            padding: getPadding(top: 1, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Obx(() => CustomRadioButton(
                                      text: "lbl_pacifiers".tr,
                                      value: "lbl_pacifiers".tr,
                                      groupValue: controller.radioAddInfo.value,
                                      margin: getMargin(left: 22),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioAddInfo.value = value;
                                      })),
                                  Obx(() => CustomRadioButton(
                                      text: "lbl_nappies".tr,
                                      value: "lbl_nappies".tr,
                                      groupValue: controller.radioAddInfo.value,
                                      margin: getMargin(left: 22),
                                      fontStyle:
                                          RadioFontStyle.OpenSansRomanRegular15,
                                      onChange: (value) {
                                        controller.radioAddInfo.value = value;
                                      })),
                                ])),
                      ],
                    ),
                  ))
                ])),
        bottomNavigationBar: Container(
            margin: getMargin(left: 16, right: 16, bottom: 8),
            decoration: AppDecoration.white,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomButton(
                      height: getVerticalSize(53),
                      text: "lbl_next".tr,
                      onTap: () {
                        controller.onTapNext();
                      })
                ])));
  }

  /// Navigates to the bookingStepOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the bookingStepOneScreen.
  onTapTxtTime() {
    Get.back(
        // AppRoutes.bookingStepOneScreen,
        );
  }

  /// Navigates to the upcomingBookingTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingTwoScreen.
  // onTapNext() {
  //   Get.toNamed(
  //     AppRoutes.upcomingBookingTwoScreen,
  //   );
  // }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft2() {
    Get.back();
  }
}
>>>>>>> dev
