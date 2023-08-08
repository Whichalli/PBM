import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/core/utils/validation_functions.dart';
import 'package:pbm_app/presentation/already_signed_up_two_screen/controller/already_signed_up_two_controller.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AlreadySignedUpTwoScreen extends GetWidget<AlreadySignedUpTwoController> {
  AlreadySignedUpTwoScreen({Key? key}) : super(key: key);

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
                                                Text(
                                                    "msg_nurse_employee_login"
                                                        .tr,
                                                    overflow: TextOverflow.clip,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtNunitoBold20
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    1.4))),
                                              ]),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAvatar72x72,
                                              height: getSize(72),
                                              width: getSize(72),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(36)),
                                              margin:
                                                  getMargin(top: 0, bottom: 8))
                                        ])),
                              ),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  autofocus: true,
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
                                textInputAction: TextInputAction.done,
                                fontStyle: TextFormFieldFontStyle.ManropeBold14,
                              ),
                              const SizedBox(
                                height: 100,
                              ),
                              Obx(() => CustomButton(
                                    height: getVerticalSize(50),
                                    width: getHorizontalSize(400),
                                    text: controller.loading.value
                                        ? null
                                        : "lbl_sign_in".tr,
                                    margin: getMargin(left: 16, right: 16),
                                    shape: ButtonShape.RoundedBorder29,
                                    padding: ButtonPadding.PaddingAll16,
                                    fontStyle:
                                        ButtonFontStyle.NunitoExtraBold18,
                                    onTap: controller.loading.value
                                        ? null
                                        : () async {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              controller.loading.value = true;
                                              await controller
                                                  .onTapSignin(context);
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
                                                    BoxShadow(
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
                                                  BoxShadow(
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
                                                  BoxShadow(
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
