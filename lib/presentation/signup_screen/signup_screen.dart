import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/core/utils/validation_functions.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    controller.loading.value = false;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      body: Form(
          key: _formKey,
          child: SizedBox(
              width: double.maxFinite,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                    height: getVerticalSize(226),
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle1372,
                          height: getVerticalSize(226),
                          width: getHorizontalSize(375),
                          radius: BorderRadius.only(
                              bottomRight:
                                  Radius.circular(getHorizontalSize(30))),
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: getPadding(left: 52, top: 71, right: 52),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_hello".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOpenSansRomanBold30),
                                    Padding(
                                        padding: getPadding(top: 11),
                                        child: Text("msg_looks_like_it_s".tr,
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
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
                            style: AppStyle.txtOpenSansRomanSemiBold15))),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        CustomTextFormField(
                            focusNode: FocusNode(),
                            autofocus: true,
                            controller: controller.firstNameController,
                            hintText: "lbl_first_name".tr,
                            margin: getMargin(left: 20, top: 27, right: 23),
                            textInputType: TextInputType.name,
                            validator: (value) {
                              value =
                                  controller.firstNameController.text.trim();
                              if (value.isEmpty ||
                                  (!isText(value, isRequired: true))) {
                                return "Please enter valid name";
                              }
                              return null;
                            }),
                        CustomTextFormField(
                            focusNode: FocusNode(),
                            autofocus: true,
                            controller: controller.lastNameController,
                            hintText: "lbl_last_name".tr,
                            margin: getMargin(left: 20, top: 27, right: 23),
                            textInputType: TextInputType.name,
                            validator: (value) {
                              value = controller.lastNameController.text.trim();
                              if (value.isEmpty ||
                                  (!isText(value, isRequired: true))) {
                                return "Please enter valid name";
                              }
                              return null;
                            }),
                        CustomTextFormField(
                            focusNode: FocusNode(),
                            autofocus: true,
                            controller: controller.emailController,
                            hintText: "lbl_email_address".tr,
                            margin: getMargin(left: 20, top: 27, right: 23),
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              value = controller.emailController.text.trim();
                              if (value.isEmpty || !value.isEmail) {
                                return "Please enter valid email";
                              }
                              return null;
                            }),
                        CustomTextFormField(
                            focusNode: FocusNode(),
                            autofocus: true,
                            controller: controller.phoneController,
                            hintText: "lbl_phone_number".tr,
                            margin: getMargin(left: 20, top: 27, right: 23),
                            textInputType: TextInputType.phone,
                            validator: (value) {
                              value = controller.phoneController.text.trim();
                              if (value.isEmpty || !value.isPhoneNumber) {
                                return "Please enter valid phone number";
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
                                  (!isValidPassword(value, isRequired: true))) {
                                return "Please enter valid password";
                              }
                              return null;
                            },
                            isObscureText: true),
                      ],
                    ),
                  ),
                ),
              ]))),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
        child: Obx(() => CustomButton(
            height: getVerticalSize(53),
            onTap: controller.loading.value
                ? null
                : () async {
                    if (_formKey.currentState!.validate()) {
                      controller.loading.value = true;
                      await controller.onTapBtnSignup(context);
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
            text: controller.loading.value ? null : "lbl_sign_up".tr,
            margin: getMargin(left: 20, top: 28, right: 19))),
      ),
    );
  }
}
