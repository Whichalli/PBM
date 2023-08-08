<<<<<<< HEAD
import 'controller/already_signed_up_one_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/core/utils/validation_functions.dart';import 'package:pbm_care/widgets/custom_button.dart';import 'package:pbm_care/widgets/custom_drop_down.dart';import 'package:pbm_care/widgets/custom_radio_button.dart';import 'package:pbm_care/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AlreadySignedUpOneScreen extends GetWidget<AlreadySignedUpOneController> {AlreadySignedUpOneScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.whiteA700, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(width: double.maxFinite, child: Container(width: double.maxFinite, padding: getPadding(left: 33, top: 19, right: 33, bottom: 19), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgVector3PinkA100), fit: BoxFit.cover)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(bottom: 25), child: Text("msg_nurse_employee_login".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoBold20PinkA100.copyWith(letterSpacing: getHorizontalSize(0.8))))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 33, top: 28, right: 33), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_welcome".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoBold35.copyWith(letterSpacing: getHorizontalSize(1.4))), Padding(padding: getPadding(right: 31), child: Text("msg_create_your_account".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoSemiBold12)), CustomButton(height: getVerticalSize(32), width: getHorizontalSize(152), text: "msg_language_s_spoken".tr, margin: getMargin(top: 43), shape: ButtonShape.CircleBorder13, padding: ButtonPadding.PaddingT9, fontStyle: ButtonFontStyle.RalewayMedium11, suffixWidget: Container(padding: getPadding(all: 1), margin: getMargin(left: 14), decoration: BoxDecoration(color: ColorConstant.pinkA100), child: CustomImageView(svgPath: ImageConstant.imgClockGray50001)), alignment: Alignment.centerLeft)]), CustomImageView(imagePath: ImageConstant.imgAvatar72x72, height: getSize(72), width: getSize(72), radius: BorderRadius.circular(getHorizontalSize(36)), margin: getMargin(top: 39, bottom: 29))]))), CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.emailController, hintText: "msg_cammyjenny046_gmail_com".tr, margin: getMargin(left: 34, top: 9, right: 73), variant: TextFormFieldVariant.Brand, shape: TextFormFieldShape.RoundedBorder12, padding: TextFormFieldPadding.PaddingAll4, fontStyle: TextFormFieldFontStyle.NunitoSemiBold10, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "Please enter valid email";} return null;}), CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.passwordController, hintText: "lbl2".tr, margin: getMargin(left: 34, top: 9, right: 73), variant: TextFormFieldVariant.Brand, shape: TextFormFieldShape.RoundedBorder12, padding: TextFormFieldPadding.PaddingAll4, fontStyle: TextFormFieldFontStyle.NunitoSemiBold10), Padding(padding: getPadding(left: 40, top: 19), child: Text("lbl_name_in_company".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold15Bluegray90003)), Align(alignment: Alignment.centerRight, child: Container(height: getVerticalSize(40), width: getHorizontalSize(342), margin: getMargin(top: 2, right: 4), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topLeft, child: Container(height: getVerticalSize(24), width: getHorizontalSize(222), decoration: BoxDecoration(color: ColorConstant.pinkA100))), CustomDropDown(width: getHorizontalSize(342), focusNode: FocusNode(), autofocus: true, icon: Container(margin: getMargin(left: 30, right: 132), child: CustomImageView(svgPath: ImageConstant.imgArrowdownBlueGray300)), hintText: "msg_rn_kimberly_tailor".tr, variant: DropDownVariant.FillGray5001, shape: DropDownShape.RoundedBorder4, padding: DropDownPadding.PaddingT10, fontStyle: DropDownFontStyle.OpenSansRomanRegular15, alignment: Alignment.center, items: controller.alreadySignedUpOneModelObj.value.dropdownItemList.value, onChanged: (value) {controller.onSelected(value);})]))), Container(width: getHorizontalSize(268), margin: getMargin(left: 33, top: 4), padding: getPadding(left: 17, top: 2, right: 17, bottom: 2), decoration: AppDecoration.txtBrand.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder11), child: Text("msg_dha_registration".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoSemiBold10WhiteA700)), Padding(padding: getPadding(left: 41, top: 21), child: Text("lbl_employee_type".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoRegular10)), Padding(padding: getPadding(left: 42, top: 4), child: Obx(() => Column(children: [CustomRadioButton(text: "lbl_nurse".tr, iconSize: getHorizontalSize(12), value: controller.alreadySignedUpOneModelObj.value.radioList.value[0], groupValue: controller.radioGroup.value, margin: getMargin(right: 135), fontStyle: RadioFontStyle.NunitoRegular10, onChange: (value) {controller.radioGroup.value = value;}), CustomRadioButton(text: "msg_physical_therapist".tr, value: controller.alreadySignedUpOneModelObj.value.radioList.value[1], groupValue: controller.radioGroup.value, margin: getMargin(top: 5, right: 62), fontStyle: RadioFontStyle.NunitoRegular10, onChange: (value) {controller.radioGroup.value = value;}), CustomRadioButton(text: "msg_registered_behavior".tr, iconSize: getHorizontalSize(12), value: controller.alreadySignedUpOneModelObj.value.radioList.value[2], groupValue: controller.radioGroup.value, margin: getMargin(top: 2), fontStyle: RadioFontStyle.NunitoRegular10, onChange: (value) {controller.radioGroup.value = value;})]))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 106, top: 3, right: 36), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_no".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoExtraBold18), Padding(padding: getPadding(top: 3, bottom: 7), child: Text("lbl_forgot_password".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoSemiBold10PinkA100))]))), CustomButton(height: getVerticalSize(59), width: getHorizontalSize(149), text: "lbl_sign_up".tr, margin: getMargin(left: 93, top: 5), shape: ButtonShape.RoundedBorder29, padding: ButtonPadding.PaddingAll19, fontStyle: ButtonFontStyle.NunitoExtraBold18, onTap: () {onTapSignup();}), Padding(padding: getPadding(left: 65, top: 12), child: Row(children: [Padding(padding: getPadding(top: 6, bottom: 6), child: SizedBox(width: getHorizontalSize(56), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.lightBlueA400))), Padding(padding: getPadding(left: 9), child: Text("lbl_or_sign_in_with".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoRegular10PinkA100)), Padding(padding: getPadding(top: 6, bottom: 6), child: SizedBox(width: getHorizontalSize(65), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.pinkA100, indent: getHorizontalSize(9))))])), Container(height: getVerticalSize(153), width: double.maxFinite, margin: getMargin(top: 14), child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgVector3PinkA100, height: getVerticalSize(107), width: getHorizontalSize(375), alignment: Alignment.bottomCenter), Align(alignment: Alignment.topLeft, child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(left: 34), color: ColorConstant.whiteA700, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder23), child: Container(height: getVerticalSize(53), width: getHorizontalSize(73), padding: getPadding(left: 23, top: 13, right: 23, bottom: 13), decoration: AppDecoration.outlineBlack90026.copyWith(borderRadius: BorderRadiusStyle.roundedBorder23), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgGoogleoriginal, height: getSize(27), width: getSize(27), alignment: Alignment.center)])))), CustomTextFormField(width: getHorizontalSize(73), focusNode: FocusNode(), autofocus: true, controller: controller.group3849Controller, margin: getMargin(left: 125), variant: TextFormFieldVariant.Brand, shape: TextFormFieldShape.RoundedBorder25, textInputAction: TextInputAction.done, alignment: Alignment.topLeft, suffix: Container(margin: getMargin(left: 22, top: 11, right: 21, bottom: 11), child: CustomImageView(svgPath: ImageConstant.imgFacebookOriginal)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(53))), Align(alignment: Alignment.topRight, child: Container(margin: getMargin(right: 86), padding: getPadding(left: 22, top: 11, right: 22, bottom: 11), decoration: AppDecoration.brand.copyWith(borderRadius: BorderRadiusStyle.roundedBorder23), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: getSize(29), width: getSize(29), margin: getMargin(bottom: 2), padding: getPadding(left: 2, right: 2), decoration: AppDecoration.brand, child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgFire, height: getVerticalSize(29), width: getHorizontalSize(24), alignment: Alignment.center)]))])))]))]))))); } 
/// Navigates to the dashboardScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the dashboardScreen.
onTapSignup() { Get.toNamed(AppRoutes.dashboardScreen, ); } 
 }
=======
import 'dart:developer';

import 'package:pbm_app/widgets/custom_drop_down.dart';

import 'controller/already_signed_up_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/core/utils/validation_functions.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/core/utils/validation_functions.dart';
import 'package:pbm_app/widgets/custom_radio_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AlreadySignedUpOneScreen extends GetWidget<AlreadySignedUpOneController> {
  AlreadySignedUpOneScreen({Key? key}) : super(key: key);

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Transform.flip(
                        // flipX: true,
                        flipY: true,
                        child: CustomImageView(
                            svgPath: ImageConstant.imgVector2,
                            height: getVerticalSize(102),
                            width: getHorizontalSize(double.maxFinite)),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_welcome".tr,
                                                    overflow: TextOverflow.clip,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtNunitoBold35
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    1.4))),
                                                Padding(
                                                    padding: getPadding(
                                                        right: 20, bottom: 8),
                                                    child: Text(
                                                        "msg_create_your_account"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNunitoSemiBold16
                                                            .copyWith(
                                                                color: ColorConstant
                                                                    .pinkA100))),
                                                CustomDropDown(
                                                  width: 150,
                                                  hintText: 'Language spoken',
                                                  onChanged: (value) {
                                                    controller.language =
                                                        value.title;
                                                  },
                                                  validator: (value) {
                                                    if (value == null) {
                                                      return "Select a language";
                                                    }
                                                    return null;
                                                  },
                                                  variant:
                                                      DropDownVariant.Brand,
                                                  items: [
                                                    SelectionPopupModel(
                                                        title: 'English',
                                                        value: 'English'),
                                                    SelectionPopupModel(
                                                        title: 'French',
                                                        value: 'French'),
                                                    SelectionPopupModel(
                                                        title: 'German',
                                                        value: 'German'),
                                                    SelectionPopupModel(
                                                        title: 'Russian',
                                                        value: 'Russian'),
                                                    SelectionPopupModel(
                                                        title: 'Arabic',
                                                        value: 'Arabic'),
                                                  ],
                                                ),
                                              ]),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAvatar72x72,
                                              height: getSize(72),
                                              width: getSize(72),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(36)),
                                              margin: getMargin(
                                                  top: 14, bottom: 29))
                                        ])),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: false,
                                controller: controller.nameController,
                                hintText: "Name".tr,
                                validator: (value) {
                                  value = controller.nameController.text.trim();
                                  if (value.isEmpty ||
                                      (!isFullName(value, isRequired: true))) {
                                    return "Please enter valid Name";
                                  }
                                  return null;
                                },
                                margin: getMargin(left: 16, top: 12, right: 16),
                                variant: TextFormFieldVariant.OutlinePinkA100,
                                shape: TextFormFieldShape.RoundedBorder12,
                                padding: TextFormFieldPadding.PaddingT17,
                                fontStyle: TextFormFieldFontStyle.ManropeBold14,
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: false,
                                controller: controller.regNumController,
                                hintText: "msg_dha_registration".tr,
                                margin: getMargin(left: 16, top: 12, right: 16),
                                variant: TextFormFieldVariant.OutlinePinkA100,
                                shape: TextFormFieldShape.RoundedBorder12,
                                padding: TextFormFieldPadding.PaddingT17,
                                fontStyle: TextFormFieldFontStyle.ManropeBold14,
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: false,
                                controller: controller.addressController,
                                hintText: "Address".tr,
                                maxLines: 2,
                                validator: (value) {
                                  if (value == null || value == '') {
                                    return "Please enter valid address";
                                  }
                                  return null;
                                },
                                margin: getMargin(left: 16, top: 12, right: 16),
                                variant: TextFormFieldVariant.OutlinePinkA100,
                                shape: TextFormFieldShape.RoundedBorder12,
                                padding: TextFormFieldPadding.PaddingT17,
                                fontStyle: TextFormFieldFontStyle.ManropeBold14,
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: false,
                                readOnly: true,
                                onTap: () async {
                                  DateTime? dob = await showDatePicker(
                                      context: context,
                                      initialDate:
                                          DateTime(DateTime.now().year - 18),
                                      firstDate: DateTime(1900),
                                      lastDate:
                                          DateTime(DateTime.now().year - 18));
                                  log('dob  = $dob');
                                  controller.dobController.text =
                                      dob!.getDate();
                                },
                                controller: controller.dobController,
                                validator: (value) {
                                  if (value == null || value == '') {
                                    return "Please select date of birth";
                                  }
                                  return null;
                                },
                                hintText: "Date of Birth".tr,
                                margin: getMargin(left: 16, top: 12, right: 16),
                                variant: TextFormFieldVariant.OutlinePinkA100,
                                shape: TextFormFieldShape.RoundedBorder12,
                                padding: TextFormFieldPadding.PaddingT17,
                                fontStyle: TextFormFieldFontStyle.ManropeBold14,
                              ),
                              CustomDropDown(
                                // width: 150,
                                margin: getMargin(left: 14, right: 14, top: 8),
                                hintText: 'Gender',
                                onChanged: (value) {
                                  controller.gender = value.title;
                                },
                                shape: DropDownShape.RoundedBorder12,
                                validator: (value) {
                                  if (value == null) {
                                    return "Select your gender";
                                  }
                                  return null;
                                },
                                variant: DropDownVariant.OutlinePinkA100,
                                items: [
                                  SelectionPopupModel(
                                      title: 'Male', value: 'Male'),
                                  SelectionPopupModel(
                                      title: 'Female', value: 'Female'),
                                ],
                              ),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: false,
                                  controller: controller.emailController,
                                  hintText: "lbl_email_address".tr,
                                  maxLines: 1,
                                  margin:
                                      getMargin(left: 16, top: 12, right: 16),
                                  variant: TextFormFieldVariant.OutlinePinkA100,
                                  shape: TextFormFieldShape.RoundedBorder12,
                                  padding: TextFormFieldPadding.PaddingT17,
                                  fontStyle:
                                      TextFormFieldFontStyle.ManropeBold14,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: false,
                                  controller: controller.phoneController,
                                  hintText: "Phone".tr,
                                  maxLines: 1,
                                  margin:
                                      getMargin(left: 16, top: 12, right: 16),
                                  variant: TextFormFieldVariant.OutlinePinkA100,
                                  shape: TextFormFieldShape.RoundedBorder12,
                                  padding: TextFormFieldPadding.PaddingT17,
                                  fontStyle:
                                      TextFormFieldFontStyle.ManropeBold14,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!(value ?? '').isPhoneNumber)) {
                                      return "Please enter valid phone number";
                                    }
                                    return null;
                                  }),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 16, top: 21),
                                    child: Text("Specialization".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular15
                                            .copyWith(
                                                fontWeight: FontWeight.bold))),
                              ),
                              Padding(
                                  padding: getPadding(left: 16, top: 8),
                                  child: Obx(() => Column(children: [
                                        CustomRadioButton(
                                            text: "lbl_nurse".tr,
                                            iconSize: getHorizontalSize(12),
                                            value: controller
                                                .alreadySignedUpOneModelObj
                                                .value
                                                .radioList
                                                .value[0],
                                            groupValue:
                                                controller.radioGroup.value,
                                            padding: RadioPadding.PaddingAll8,
                                            fontStyle:
                                                RadioFontStyle.NunitoRegular12,
                                            onChange: (value) {
                                              controller.radioGroup.value =
                                                  value;
                                            }),
                                        CustomRadioButton(
                                            text: "msg_physical_therapist".tr,
                                            iconSize: getHorizontalSize(12),
                                            value: controller
                                                .alreadySignedUpOneModelObj
                                                .value
                                                .radioList
                                                .value[1],
                                            groupValue:
                                                controller.radioGroup.value,
                                            padding: RadioPadding.PaddingAll8,
                                            fontStyle:
                                                RadioFontStyle.NunitoRegular12,
                                            onChange: (value) {
                                              controller.radioGroup.value =
                                                  value;
                                            }),
                                        CustomRadioButton(
                                            text: "msg_registered_behavior".tr,
                                            iconSize: getHorizontalSize(12),
                                            value: controller
                                                .alreadySignedUpOneModelObj
                                                .value
                                                .radioList
                                                .value[2],
                                            groupValue:
                                                controller.radioGroup.value,
                                            padding: RadioPadding.PaddingAll8,
                                            fontStyle:
                                                RadioFontStyle.NunitoRegular12,
                                            onChange: (value) {
                                              controller.radioGroup.value =
                                                  value;
                                            })
                                      ]))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: false,
                                  controller: controller.bioController,
                                  maxLines: 5,
                                  hintText: "About you".tr,
                                  margin:
                                      getMargin(left: 16, top: 12, right: 16),
                                  variant: TextFormFieldVariant.OutlinePinkA100,
                                  shape: TextFormFieldShape.RoundedBorder12,
                                  padding: TextFormFieldPadding.PaddingT17,
                                  fontStyle:
                                      TextFormFieldFontStyle.ManropeBold14,
                                  validator: (value) {
                                    if (value == null) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: false,
                                  controller: controller.expController,
                                  hintText: "Practicing Tenure".tr,
                                  margin:
                                      getMargin(left: 16, top: 12, right: 16),
                                  variant: TextFormFieldVariant.OutlinePinkA100,
                                  shape: TextFormFieldShape.RoundedBorder12,
                                  padding: TextFormFieldPadding.PaddingT17,
                                  textInputType: TextInputType.number,
                                  fontStyle:
                                      TextFormFieldFontStyle.ManropeBold14,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isNumeric(value, isRequired: true))) {
                                      return "Please enter valid years of experience";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                autofocus: false,
                                controller: controller.passwordController,
                                hintText: "Password".tr,
                                isObscureText: true,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Password nust have 1 of this (A-Z a-z 0-9 *&^%!@#\$)";
                                  }
                                  return null;
                                },
                                margin: getMargin(left: 16, top: 12, right: 16),
                                variant: TextFormFieldVariant.OutlinePinkA100,
                                shape: TextFormFieldShape.RoundedBorder12,
                                padding: TextFormFieldPadding.PaddingT17,
                                fontStyle: TextFormFieldFontStyle.ManropeBold14,
                              ),
                              Obx(() => CustomButton(
                                    height: getVerticalSize(50),
                                    width: getHorizontalSize(400),
                                    text: controller.loading.value
                                        ? null
                                        : "lbl_sign_up".tr,
                                    margin:
                                        getMargin(left: 16, right: 16, top: 24),
                                    shape: ButtonShape.RoundedBorder29,
                                    padding: ButtonPadding.PaddingAll16,
                                    fontStyle:
                                        ButtonFontStyle.NunitoExtraBold18,
                                    onTap: controller.loading.value
                                        ? null
                                        : () async {
                                            log('message = ${controller.radioGroup.value}');
                                            if (_formKey.currentState!
                                                    .validate() &&
                                                controller.radioGroup.value
                                                    .isNotEmpty) {
                                              controller.loading.value = true;
                                              await controller
                                                  .onTapBtnSignup(context);
                                              controller.loading.value = false;
                                            }
                                          },
                                    icon: controller.loading.value
                                        ? SizedBox(
                                            width: 18,
                                            height: 20,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                              color: Colors.white,
                                              backgroundColor:
                                                  ColorConstant.pinkA100,
                                            ),
                                          )
                                        : null,
                                  )),
                              Padding(
                                  padding:
                                      getPadding(left: 16, right: 16, top: 12),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            width: getHorizontalSize(56),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant
                                                    .lightBlueA400)),
                                        Padding(
                                            padding: getPadding(left: 9),
                                            child: Text(
                                                "lbl_or_sign_in_with".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtNunitoRegular10PinkA100)),
                                        SizedBox(
                                            width: getHorizontalSize(65),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.pinkA100,
                                                indent: getHorizontalSize(9)))
                                      ])),
                              Container(
                                  // height: getVerticalSize(153),
                                  width: double.maxFinite,
                                  margin: getMargin(top: 24, bottom: 8),
                                  child: Row(
                                      // alignment: Alignment.topLeft,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () async {
                                            await controller
                                                .onTapBtnSocialsgoogletw(
                                                    context);
                                          },
                                          child: Container(
                                              height: getVerticalSize(50),
                                              width: getHorizontalSize(70),
                                              margin: getMargin(right: 16),
                                              padding: getPadding(
                                                  left: 23,
                                                  top: 13,
                                                  right: 23,
                                                  bottom: 13),
                                              decoration: AppDecoration
                                                  .outlineBlack90026
                                                  .copyWith(
                                                      boxShadow: [
                                                    const BoxShadow(
                                                        color: Colors.black12,
                                                        blurRadius: 8,
                                                        spreadRadius: 4),
                                                  ],
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder23),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgGoogleoriginal,
                                                  height: getSize(27),
                                                  width: getSize(27),
                                                  alignment: Alignment.center)),
                                        ),
                                        Container(
                                            height: getVerticalSize(50),
                                            width: getHorizontalSize(70),
                                            margin: getMargin(right: 16),
                                            padding: getPadding(
                                                left: 23,
                                                top: 13,
                                                right: 23,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineBlack90026
                                                .copyWith(
                                                    boxShadow: [
                                                  const BoxShadow(
                                                      color: Colors.black12,
                                                      blurRadius: 8,
                                                      spreadRadius: 4),
                                                ],
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder23),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgFacebookOriginal,
                                                height: getSize(27),
                                                width: getSize(27),
                                                alignment: Alignment.center)),
                                        Container(
                                            height: getVerticalSize(50),
                                            width: getHorizontalSize(70),
                                            padding: getPadding(
                                                left: 23,
                                                top: 13,
                                                right: 23,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineBlack90026
                                                .copyWith(
                                                    boxShadow: [
                                                  const BoxShadow(
                                                      color: Colors.black12,
                                                      blurRadius: 8,
                                                      spreadRadius: 4),
                                                ],
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder23),
                                            child: CustomImageView(
                                                svgPath: ImageConstant.imgFire,
                                                height: getSize(27),
                                                width: getSize(27),
                                                alignment: Alignment.center)),
                                      ])),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                          svgPath: ImageConstant.imgVector2,
                          height: getVerticalSize(102),
                          width: getHorizontalSize(double.maxFinite)),
                    ]))));
  }

  /// Navigates to the dashboardScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the dashboardScreen.
  onTapSignup() {
    Get.toNamed(
      AppRoutes.dashboardScreen,
    );
  }
}
>>>>>>> dev
