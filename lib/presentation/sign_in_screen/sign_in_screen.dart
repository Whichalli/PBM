import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/core/utils/validation_functions.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                              height: getVerticalSize(226),
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle1372,
                                        height: getVerticalSize(226),
                                        width: getHorizontalSize(375),
                                        radius: BorderRadius.only(
                                            bottomRight: Radius.circular(
                                                getHorizontalSize(30))),
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 52, top: 71, right: 52),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_welcome_back".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOpenSansRomanBold30),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 11),
                                                      child:
                                                          Text(
                                                              "msg_let_s_get_you_signed"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .clip,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtOpenSansRomanBold15))
                                                ])))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 20, top: 31),
                                  child: Text("msg_please_enter_your".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtOpenSansRomanSemiBold15))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: controller.emailController,
                              hintText: "lbl_email_address".tr,
                              margin: getMargin(left: 20, top: 27, right: 23),
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(left: 20, top: 20, right: 23),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 36, top: 8),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSans11))),
                          Obx(() => CustomButton(
                              height: getVerticalSize(53),
                              onTap: controller.loading.value
                                  ? null
                                  : () async {
                                      if (_formKey.currentState!.validate()) {
                                        controller.loading.value = true;
                                        await controller.onTapSignin(context);
                                        controller.loading.value = false;
                                      }
                                    },
                              icon: controller.loading.value
                                  ? SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        color: Colors.white,
                                        backgroundColor: ColorConstant.pinkA100,
                                      ),
                                    )
                                  : null,
                              text: controller.loading.value
                                  ? null
                                  : "lbl_sign_in".tr,
                              margin: getMargin(left: 20, top: 28, right: 19))),
                          GestureDetector(
                              onTap: () {
                                controller.onTapBtnSignup();
                              },
                              child: Padding(
                                  padding: getPadding(top: 24, bottom: 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("msg_create_an_account".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanSemiBold14),
                                        Padding(
                                            padding: getPadding(left: 8),
                                            child: Text("msg_signup".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOpenSansRomanSemiBold14PinkA100))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 30),
                              child: Text("lbl_or".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSansRomanSemiBold16)),
                          Padding(
                              padding: getPadding(top: 26),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: 54,
                                        width: 54,
                                        variant: IconButtonVariant
                                            .OutlineBluegray100,
                                        shape: IconButtonShape.CircleBorder27,
                                        onTap: () {
                                          controller
                                              .onTapBtnSocialsgoogletw(context);
                                        },
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSocialsgoogle2)),
                                    CustomIconButton(
                                        height: 54,
                                        width: 54,
                                        margin: getMargin(left: 20),
                                        variant: IconButtonVariant
                                            .OutlineBluegray100,
                                        shape: IconButtonShape.CircleBorder27,
                                        onTap: () {
                                          controller.onTapBtnFacebook();
                                        },
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFacebook)),
                                    CustomIconButton(
                                        height: 54,
                                        width: 54,
                                        margin: getMargin(left: 20),
                                        variant: IconButtonVariant
                                            .OutlineBluegray100,
                                        shape: IconButtonShape.CircleBorder27,
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgTwitter))
                                  ])),
                          GestureDetector(
                              onTap: () {
                                controller.onTapRowdonthaveanac();
                              },
                              child: Padding(
                                  padding: getPadding(top: 28, bottom: 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                            "msg_sign_in_as_a_nurse_employee"
                                                .tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanSemiBold14),
                                        Padding(
                                            padding: getPadding(left: 8),
                                            child: Text("lbl_sign_in".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOpenSansRomanSemiBold14PinkA100))
                                      ]))),
                        ])))));
  }
}
