<<<<<<< HEAD
import 'controller/upcoming_booking_three_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/core/utils/validation_functions.dart';import 'package:pbm_care/widgets/custom_button.dart';import 'package:pbm_care/widgets/custom_floating_edit_text.dart';import 'package:pbm_care/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class UpcomingBookingThreeScreen extends GetWidget<UpcomingBookingThreeController> {UpcomingBookingThreeScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.whiteA700, body: Form(key: _formKey, child: SingleChildScrollView(child: Container(height: getVerticalSize(966), width: double.maxFinite, margin: getMargin(bottom: 5), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Container(padding: getPadding(left: 19, top: 9, right: 19, bottom: 9), decoration: AppDecoration.brand.copyWith(borderRadius: BorderRadiusStyle.customBorderBL30), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Text("lbl_edit_account".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanBold18)), CustomImageView(svgPath: ImageConstant.imgArrowleftWhiteA70020x9, height: getVerticalSize(20), width: getHorizontalSize(9), margin: getMargin(top: 2, bottom: 109), onTap: () {onTapImgArrowleft();})]))), Align(alignment: Alignment.bottomCenter, child: SizedBox(height: getVerticalSize(885), width: getHorizontalSize(351), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.bottomLeft, child: Padding(padding: getPadding(left: 13, bottom: 115), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_medications_taken".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Bluegray90003), Padding(padding: getPadding(top: 63), child: Text("msg_allergies_known".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Bluegray90003))]))), Align(alignment: Alignment.center, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomFloatingEditText(focusNode: FocusNode(), autofocus: true, controller: controller.nameController, labelText: "lbl_mother_s_name".tr, hintText: "lbl_jenny_piers".tr, margin: getMargin(left: 8, right: 1), validator: (value) {if (!isText(value)) {return "Please enter valid text";} return null;}), Container(height: getVerticalSize(59), width: getHorizontalSize(342), margin: getMargin(left: 8), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.bottomCenter, child: Container(padding: getPadding(left: 68, top: 9, right: 68, bottom: 9), decoration: AppDecoration.outlineGray500.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(left: 2), child: Text("lbl_mother_s_number".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10.copyWith(letterSpacing: getHorizontalSize(0.25)))), Padding(padding: getPadding(top: 3, bottom: 2), child: Text("lbl_123_456_7890".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: getHorizontalSize(0.25))))]))), CustomImageView(svgPath: ImageConstant.imgTicket, height: getVerticalSize(39), width: getHorizontalSize(33), alignment: Alignment.topLeft, margin: getMargin(left: 12))])), CustomFloatingEditText(focusNode: FocusNode(), autofocus: true, controller: controller.nameoneController, labelText: "lbl_father_s_name".tr, hintText: "lbl_tony_stark".tr, margin: getMargin(left: 8, top: 7, right: 1), validator: (value) {if (!isText(value)) {return "Please enter valid text";} return null;}), Container(margin: getMargin(left: 8, top: 7, right: 1), padding: getPadding(left: 12, top: 5, right: 12, bottom: 5), decoration: AppDecoration.outlineGray500.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [CustomImageView(svgPath: ImageConstant.imgTicket, height: getVerticalSize(39), width: getHorizontalSize(33), margin: getMargin(bottom: 1)), Padding(padding: getPadding(left: 23, top: 3, right: 172, bottom: 6), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 2), child: Text("lbl_father_s_number".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10.copyWith(letterSpacing: getHorizontalSize(0.25)))), Padding(padding: getPadding(top: 3), child: Text("lbl_123_456_7890".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14.copyWith(letterSpacing: getHorizontalSize(0.25))))]))])), CustomFloatingEditText(focusNode: FocusNode(), autofocus: true, controller: controller.nametwoController, labelText: "lbl_child_s_name".tr, hintText: "lbl_tammy_stark".tr, margin: getMargin(left: 8, top: 13, right: 1), validator: (value) {if (!isText(value)) {return "Please enter valid text";} return null;}), Padding(padding: getPadding(left: 13, top: 6), child: Text("msg_child_s_date_of".tr.toUpperCase(), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanBold12)), CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.childsdateofbirController, hintText: "lbl_04_24_23".tr, margin: getMargin(left: 8, top: 6), variant: TextFormFieldVariant.FillGray5001, shape: TextFormFieldShape.RoundedBorder4, padding: TextFormFieldPadding.PaddingAll9, fontStyle: TextFormFieldFontStyle.OpenSansRomanSemiBold15), CustomFloatingEditText(focusNode: FocusNode(), autofocus: true, controller: controller.addressController, labelText: "lbl_address_in_uae".tr, hintText: "msg_emirates_vida_hills".tr, margin: getMargin(left: 5, top: 16, right: 4)), CustomFloatingEditText(focusNode: FocusNode(), autofocus: true, controller: controller.namethreeController, labelText: "msg_siblings_name".tr, hintText: "lbl_carol".tr, margin: getMargin(left: 5, top: 13, right: 4), validator: (value) {if (!isText(value)) {return "Please enter valid text";} return null;}), Padding(padding: getPadding(left: 8, top: 7, right: 1), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomFloatingEditText(focusNode: FocusNode(), autofocus: true, controller: controller.activitieschildController, labelText: "msg_activities_child".tr, hintText: "lbl_swimming".tr, margin: getMargin(top: 2, right: 8), suffix: Container(margin: getMargin(left: 8, right: 8), child: CustomImageView(svgPath: ImageConstant.imgArrowdropdown)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(53)))), Expanded(child: CustomFloatingEditText(focusNode: FocusNode(), autofocus: true, controller: controller.genderController, labelText: "lbl_gender".tr, hintText: "lbl_female".tr, margin: getMargin(left: 8, bottom: 2)))])), CustomFloatingEditText(focusNode: FocusNode(), autofocus: true, controller: controller.timezoneController, labelText: "msg_precautions_to_be".tr, hintText: "msg_must_not_swim_alone".tr, margin: getMargin(left: 9, top: 16)), CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.pleasestatethreController, hintText: "lbl_please_state".tr, margin: getMargin(top: 47, right: 8), variant: TextFormFieldVariant.FillGray5001, shape: TextFormFieldShape.RoundedBorder4, padding: TextFormFieldPadding.PaddingAll9, fontStyle: TextFormFieldFontStyle.OpenSansRomanRegular15), CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.pleasestatethreController1, hintText: "lbl_please_state".tr, margin: getMargin(top: 39, right: 8), variant: TextFormFieldVariant.FillGray5001, shape: TextFormFieldShape.RoundedBorder4, padding: TextFormFieldPadding.PaddingAll9, fontStyle: TextFormFieldFontStyle.OpenSansRomanRegular15), Padding(padding: getPadding(top: 4), child: Text("msg_any_diagnosed_pre_existing".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Bluegray90003)), CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.pleasestatethreController2, hintText: "msg_please_state".tr, margin: getMargin(top: 6, right: 8), variant: TextFormFieldVariant.FillGray5001, shape: TextFormFieldShape.RoundedBorder4, padding: TextFormFieldPadding.PaddingAll9, fontStyle: TextFormFieldFontStyle.OpenSansRomanRegular15, textInputAction: TextInputAction.done)]))])))])))), bottomNavigationBar: CustomButton(height: getVerticalSize(53), text: "lbl_save".tr, margin: getMargin(left: 20, right: 19, bottom: 38), onTap: () {onTapSave();}))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] library to 
/// navigate to the previous screen in the navigation stack.
onTapImgArrowleft() { Get.back(); } 
/// Navigates to the upcomingBookingFourScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the upcomingBookingFourScreen.
onTapSave() { Get.toNamed(AppRoutes.upcomingBookingFourScreen, ); } 
 }
=======
import 'controller/upcoming_booking_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/core/utils/validation_functions.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_floating_edit_text.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class UpcomingBookingThreeScreen
    extends GetWidget<UpcomingBookingThreeController> {
  UpcomingBookingThreeScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: AppBar(
            backgroundColor: ColorConstant.pinkA100,
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                )),
            title: Text("lbl_edit_account".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOpenSansRomanBold18)),
        body: Container(
            height: getVerticalSize(966),
            width: double.maxFinite,
            margin: getMargin(bottom: 5),
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 100,
                    width: size.width,
                    padding: getPadding(left: 19, top: 9, right: 19, bottom: 9),
                    decoration: AppDecoration.brand.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL30),
                  )),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  margin: getMargin(top: 16, bottom: 12),
                  // height: getVerticalSize(885),
                  width: getHorizontalSize(351),
                  padding: getPadding(left: 12, right: 12, top: 24),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              CustomFloatingEditText(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: controller.nameController,
                                  labelText: "lbl_mother_s_name".tr,
                                  hintText: "lbl_jenny_piers".tr,
                                  margin: getMargin(left: 8, right: 1),
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              Container(
                                  height: getVerticalSize(59),
                                  width: getHorizontalSize(342),
                                  margin: getMargin(left: 8),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 68,
                                                    top: 9,
                                                    right: 68,
                                                    bottom: 9),
                                                decoration: AppDecoration
                                                    .outlineGray500
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder8),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
                                                          child: Text(
                                                              "lbl_mother_s_number"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular10
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.25)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3,
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_123_456_7890"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.25))))
                                                    ]))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgTicket,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(33),
                                            alignment: Alignment.topLeft,
                                            margin: getMargin(left: 12))
                                      ])),
                              CustomFloatingEditText(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: controller.nameoneController,
                                  labelText: "lbl_father_s_name".tr,
                                  hintText: "lbl_tony_stark".tr,
                                  margin: getMargin(left: 8, top: 7, right: 1),
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              Container(
                                  margin: getMargin(left: 8, top: 7, right: 1),
                                  padding: getPadding(
                                      left: 12, top: 5, right: 12, bottom: 5),
                                  decoration: AppDecoration.outlineGray500
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgTicket,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(33),
                                            margin: getMargin(bottom: 1)),
                                        Padding(
                                            padding: getPadding(
                                                left: 23,
                                                top: 3,
                                                right: 172,
                                                bottom: 6),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 2),
                                                      child: Text(
                                                          "lbl_father_s_number"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular10
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.25)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 3),
                                                      child: Text(
                                                          "lbl_123_456_7890".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular14
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.25))))
                                                ]))
                                      ])),
                            ]),
                      )))
            ])),
        bottomNavigationBar: CustomButton(
            height: getVerticalSize(50),
            text: "lbl_save".tr,
            margin: getMargin(left: 16, right: 16, bottom: 8),
            onTap: () {
              onTapSave();
            }));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgArrowleft() {
    Get.back();
  }

  /// Navigates to the upcomingBookingFourScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingFourScreen.
  onTapSave() {
    Get.toNamed(
      AppRoutes.upcomingBookingFourScreen,
    );
  }
}
>>>>>>> dev
