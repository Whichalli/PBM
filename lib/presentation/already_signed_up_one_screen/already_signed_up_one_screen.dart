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
