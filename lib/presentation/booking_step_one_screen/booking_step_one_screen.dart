<<<<<<< HEAD
import '../booking_step_one_screen/widgets/booking_step_item_widget.dart';import 'controller/booking_step_one_controller.dart';import 'models/booking_step_item_model.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/app_bar/appbar_image.dart';import 'package:pbm_care/widgets/app_bar/appbar_subtitle_3.dart';import 'package:pbm_care/widgets/app_bar/custom_app_bar.dart';import 'package:pbm_care/widgets/custom_button.dart';import 'package:pbm_care/widgets/custom_drop_down.dart';import 'package:pbm_care/widgets/custom_radio_button.dart';import 'package:pbm_care/widgets/custom_text_form_field.dart';class BookingStepOneScreen extends GetWidget<BookingStepOneController> {const BookingStepOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 28, leading: AppbarImage(height: getVerticalSize(17), width: getHorizontalSize(9), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 19, top: 23, bottom: 10), onTap: () {onTapArrowleft1();}), centerTitle: true, title: AppbarSubtitle3(text: "lbl_booking".tr), actions: [AppbarImage(height: getSize(20), width: getSize(20), svgPath: ImageConstant.imgSearchGray80020x20, margin: getMargin(left: 20, top: 12, right: 20, bottom: 19))]), body: SizedBox(width: size.width, child: SingleChildScrollView(padding: getPadding(top: 3), child: Padding(padding: getPadding(bottom: 5), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 19), child: Row(children: [CustomButton(height: getVerticalSize(42), width: getHorizontalSize(101), text: "lbl_time".tr, variant: ButtonVariant.OutlinePinkA100, shape: ButtonShape.Square, padding: ButtonPadding.PaddingAll9, fontStyle: ButtonFontStyle.OpenSans16), Spacer(flex: 41), Padding(padding: getPadding(top: 10, bottom: 9), child: Text("lbl_details".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSans16)), Spacer(flex: 58), Padding(padding: getPadding(top: 10, bottom: 9), child: Text("lbl_finish".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSans16))])), Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.pinkA10019), Align(alignment: Alignment.center, child: Container(margin: getMargin(left: 16, top: 19, right: 16), padding: getPadding(top: 8, bottom: 8), decoration: AppDecoration.outlinePinkA1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(left: 22, top: 10, right: 23), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 3), child: Text("lbl_june_2023".tr.toUpperCase(), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanBold14)), CustomImageView(svgPath: ImageConstant.imgArrowleftBlueGray90003, height: getSize(24), width: getSize(24), margin: getMargin(left: 169)), CustomImageView(svgPath: ImageConstant.imgArrowrightBlueGray90003, height: getSize(24), width: getSize(24), margin: getMargin(left: 8))])), Padding(padding: getPadding(top: 22), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(44), width: getHorizontalSize(343), child: Stack(alignment: Alignment.centerRight, children: [Align(alignment: Alignment.bottomCenter, child: SizedBox(width: getHorizontalSize(343), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.pinkA10019))), Align(alignment: Alignment.centerRight, child: Container(height: getVerticalSize(44), width: getHorizontalSize(46), margin: getMargin(right: 10), child: Stack(alignment: Alignment.center, children: [CustomImageView(svgPath: ImageConstant.imgVuesaxlinearadd, height: getVerticalSize(44), width: getHorizontalSize(46), alignment: Alignment.center), Align(alignment: Alignment.center, child: Text("lbl_sa".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Gray600))]))), Align(alignment: Alignment.centerRight, child: Container(height: getVerticalSize(44), width: getHorizontalSize(46), margin: getMargin(right: 56), child: Stack(alignment: Alignment.center, children: [CustomImageView(svgPath: ImageConstant.imgVuesaxlinearadd, height: getVerticalSize(44), width: getHorizontalSize(46), alignment: Alignment.center), Align(alignment: Alignment.center, child: Text("lbl_fr".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Gray600))]))), Align(alignment: Alignment.centerRight, child: Container(height: getVerticalSize(44), width: getHorizontalSize(46), margin: getMargin(right: 102), child: Stack(alignment: Alignment.center, children: [CustomImageView(svgPath: ImageConstant.imgVuesaxlinearadd, height: getVerticalSize(44), width: getHorizontalSize(46), alignment: Alignment.center), Align(alignment: Alignment.center, child: Text("lbl_th".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Gray600))]))), Align(alignment: Alignment.center, child: SizedBox(height: getVerticalSize(44), width: getHorizontalSize(46), child: Stack(alignment: Alignment.center, children: [CustomImageView(svgPath: ImageConstant.imgVuesaxlinearadd, height: getVerticalSize(44), width: getHorizontalSize(46), alignment: Alignment.center), Align(alignment: Alignment.center, child: Text("lbl_we".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Gray600))]))), Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(44), width: getHorizontalSize(46), margin: getMargin(left: 102), child: Stack(alignment: Alignment.center, children: [CustomImageView(svgPath: ImageConstant.imgVuesaxlinearadd, height: getVerticalSize(44), width: getHorizontalSize(46), alignment: Alignment.center), Align(alignment: Alignment.center, child: Text("lbl_tu".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Gray600))]))), Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(44), width: getHorizontalSize(46), margin: getMargin(left: 56), child: Stack(alignment: Alignment.center, children: [CustomImageView(svgPath: ImageConstant.imgVuesaxlinearadd, height: getVerticalSize(44), width: getHorizontalSize(46), alignment: Alignment.center), Align(alignment: Alignment.center, child: Text("lbl_mo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Gray600))]))), Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(44), width: getHorizontalSize(46), margin: getMargin(left: 10), child: Stack(alignment: Alignment.center, children: [CustomImageView(svgPath: ImageConstant.imgVuesaxlinearadd, height: getVerticalSize(44), width: getHorizontalSize(46), alignment: Alignment.center), Align(alignment: Alignment.center, child: Text("lbl_su".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Gray600))])))])), Padding(padding: getPadding(left: 10, top: 4, right: 10), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(45), crossAxisCount: 7, mainAxisSpacing: getHorizontalSize(1), crossAxisSpacing: getHorizontalSize(1)), physics: NeverScrollableScrollPhysics(), itemCount: controller.bookingStepOneModelObj.value.bookingStepItemList.value.length, itemBuilder: (context, index) {BookingStepItemModel model = controller.bookingStepOneModelObj.value.bookingStepItemList.value[index]; return BookingStepItemWidget(model);})))]))]))), Padding(padding: getPadding(left: 20, top: 19), child: Text("lbl_schedule".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800)), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 20, top: 9, right: 20), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomDropDown(width: getHorizontalSize(155), focusNode: FocusNode(), autofocus: true, icon: Container(margin: getMargin(left: 30, right: 15), child: CustomImageView(svgPath: ImageConstant.imgArrowdown)), hintText: "lbl_start".tr, variant: DropDownVariant.White, items: controller.bookingStepOneModelObj.value.dropdownItemList.value, onChanged: (value) {controller.onSelected(value);}), CustomDropDown(width: getHorizontalSize(148), focusNode: FocusNode(), autofocus: true, icon: Container(margin: getMargin(left: 30, right: 15), child: CustomImageView(svgPath: ImageConstant.imgArrowdown)), hintText: "lbl_end".tr, variant: DropDownVariant.White, items: controller.bookingStepOneModelObj.value.dropdownItemList1.value, onChanged: (value) {controller.onSelected1(value);})]))), Padding(padding: getPadding(left: 20, top: 19), child: Text("lbl_choose_a_nurse".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800)), CustomDropDown(focusNode: FocusNode(), autofocus: true, icon: Container(margin: getMargin(left: 30, right: 15), child: CustomImageView(svgPath: ImageConstant.imgArrowdown)), hintText: "msg_rn_kimberly_tailor".tr, margin: getMargin(left: 20, top: 9, right: 20), alignment: Alignment.center, items: controller.bookingStepOneModelObj.value.dropdownItemList2.value, onChanged: (value) {controller.onSelected2(value);}), Padding(padding: getPadding(left: 21, top: 23), child: Text("msg_additional_information".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Bluegray90003)), Container(height: getVerticalSize(24), width: getHorizontalSize(305), margin: getMargin(left: 21, top: 3), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: getPadding(bottom: 2), child: SizedBox(width: getHorizontalSize(304), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray50)))), CustomTextFormField(width: getHorizontalSize(89), focusNode: FocusNode(), autofocus: true, controller: controller.radiobuttontextController, hintText: "lbl_formula".tr, variant: TextFormFieldVariant.None, fontStyle: TextFormFieldFontStyle.OpenSansRomanRegular15Bluegray90003, textInputAction: TextInputAction.done, alignment: Alignment.topLeft, prefix: Container(margin: getMargin(top: 1, right: 12, bottom: 1), child: CustomImageView(svgPath: ImageConstant.img07RadioButton1Basic1Checked1DefaultPinkA100)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(21))), Align(alignment: Alignment.bottomRight, child: Padding(padding: getPadding(right: 63), child: Obx(() => CustomRadioButton(text: "lbl_bottles".tr, iconSize: getHorizontalSize(20), value: "lbl_bottles".tr, groupValue: controller.radioGroup.value, margin: getMargin(right: 63), fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup.value = value;}))))])), Padding(padding: getPadding(left: 21, top: 17), child: Row(children: [Padding(padding: getPadding(bottom: 1), child: Obx(() => Row(children: [CustomRadioButton(text: "lbl_nappies".tr, iconSize: getHorizontalSize(20), value: controller.bookingStepOneModelObj.value.radioList.value[0], groupValue: controller.radioGroup1.value, fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup1.value = value;}), CustomRadioButton(text: "lbl_nappies".tr, iconSize: getHorizontalSize(20), value: controller.bookingStepOneModelObj.value.radioList.value[1], groupValue: controller.radioGroup1.value, fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup1.value = value;})]))), Padding(padding: getPadding(left: 71, top: 2), child: Obx(() => CustomRadioButton(text: "lbl_pacifiers".tr, iconSize: getHorizontalSize(20), value: "lbl_pacifiers".tr, groupValue: controller.radioGroup2.value, margin: getMargin(left: 71, top: 2), fontStyle: RadioFontStyle.OpenSansRomanRegular15, onChange: (value) {controller.radioGroup2.value = value;})))]))])))), bottomNavigationBar: Container(margin: getMargin(left: 20, right: 19, bottom: 38), decoration: AppDecoration.white, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [CustomButton(height: getVerticalSize(53), text: "lbl_next".tr, onTap: () {onTapNext();})])))); } 
/// Navigates to the bookingStepTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the bookingStepTwoScreen.
onTapNext() { Get.toNamed(AppRoutes.bookingStepTwoScreen, ); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] library to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleft1() { Get.back(); } 
 }
=======
import 'dart:developer';

import 'package:flutter_calendar_carousel/classes/marked_date.dart';
import 'package:flutter_calendar_carousel/classes/multiple_marked_dates.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pbm_app/widgets/booking_card.dart';
import 'package:pbm_app/widgets/widgets.dart';

import '../../core/utils/date_time_utils.dart';
import '../booking_step_one_screen/widgets/booking_step_item_widget.dart';
import 'controller/booking_step_one_controller.dart';
import 'models/booking_step_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_drop_down.dart';
import 'package:pbm_app/widgets/custom_radio_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart' show DateFormat;

class BookingStepOneScreen extends GetWidget<BookingStepOneController> {
  BookingStepOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(51),
            leadingWidth: 28,
            leading: AppbarImage(
                height: getVerticalSize(17),
                width: getHorizontalSize(9),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 19, top: 23, bottom: 10),
                onTap: () {
                  controller.onTapArrowleft1();
                }),
            centerTitle: true,
            title: AppbarSubtitle3(text: "lbl_booking".tr),
            actions: [
              AppbarImage(
                  height: getSize(20),
                  width: getSize(20),
                  svgPath: ImageConstant.imgSearchGray80020x20,
                  margin: getMargin(left: 20, top: 12, right: 20, bottom: 19))
            ]),
        body: GetBuilder<BookingStepOneController>(builder: (cotroller) {
          return SizedBox(
              width: size.width,
              child: Padding(
                  padding: getPadding(left: 16, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(right: 19),
                            child: Row(children: [
                              CustomButton(
                                  height: getVerticalSize(35),
                                  width: getHorizontalSize(90),
                                  text: "lbl_time".tr,
                                  variant: ButtonVariant.OutlinePinkA100_2,
                                  shape: ButtonShape.RoundedBorder8,
                                  padding: ButtonPadding.PaddingAll9,
                                  fontStyle: ButtonFontStyle.OpenSans16),
                              const Spacer(flex: 41),
                              Padding(
                                  padding: getPadding(top: 10, bottom: 9),
                                  child: Text("lbl_details".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSans16)),
                              const Spacer(flex: 58),
                              Padding(
                                  padding: getPadding(top: 10, bottom: 9),
                                  child: Text("lbl_finish".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSans16))
                            ])),
                        Divider(
                            height: getVerticalSize(1),
                            thickness: getVerticalSize(1),
                            color: ColorConstant.pinkA10019),
                        Obx(() => controller.boodedDateLoading.isTrue
                            ? LinearProgressIndicator(
                                minHeight: 1,
                                color: ColorConstant.pinkA100,
                              )
                            : const SizedBox()),
                        Expanded(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        margin: getMargin(top: 19),
                                        // height: 350,
                                        padding: getPadding(top: 8, bottom: 8),
                                        decoration: AppDecoration
                                            .outlinePinkA1001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 10,
                                                      right: 16),
                                                  child: Row(
                                                      // mainAxisAlignment:
                                                      //     MainAxisAlignment
                                                      //         .center,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 3),
                                                              child: Obx(() => Text(
                                                                  "${fullMonths[controller.targetDateTime.value.month - 1]['month']}"
                                                                      .tr
                                                                      .toUpperCase(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtOpenSansRomanBold14))),
                                                        ),
                                                        CustomImageView(
                                                          onTap: () =>
                                                              controller.prev(
                                                                  context),
                                                          svgPath: ImageConstant
                                                              .imgArrowleftBlueGray90003,
                                                          height: getSize(24),
                                                          width: getSize(24),
                                                        ),
                                                        CustomImageView(
                                                            onTap: () =>
                                                                controller.next(
                                                                    context),
                                                            svgPath: ImageConstant
                                                                .imgArrowrightBlueGray90003,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                left: 8))
                                                      ])),
                                              Padding(
                                                padding: getPadding(top: 0),
                                                child: Container(
                                                  margin: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 16.0),
                                                  child: SizedBox(
                                                      height: 300,
                                                      child: controller
                                                          .calendarCarouselNoHeader()),
                                                ),
                                              )
                                            ]))),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                      padding: getPadding(top: 19),
                                      child: Text("lbl_schedule".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtOpenSansRomanSemiBold14Gray800
                                              .copyWith(fontSize: 16))),
                                ),
                                Container(
                                  margin: getMargin(top: 8),
                                  // height: markedDate.length < 3
                                  //     ? null
                                  //     : getVerticalSize(270),
                                  child: SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    child: Column(
                                      children: controller.bookings,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ])));
        }),
        bottomNavigationBar: Container(
            margin: getMargin(left: 16, top: 8, right: 16, bottom: 8),
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
}
>>>>>>> dev
