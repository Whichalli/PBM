import 'controller/choose_age_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/core/utils/validation_functions.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChooseAgeScreen extends GetWidget<ChooseAgeController> {
  ChooseAgeScreen({Key? key}) : super(key: key);

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
                          CustomImageView(
                              imagePath: ImageConstant.imgVector4,
                              height: getVerticalSize(91),
                              width: getHorizontalSize(375)),
                          Padding(
                              padding: getPadding(top: 94),
                              child: Text("msg_what_is_your_little".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoBold20)),
                          CustomImageView(
                              svgPath: ImageConstant.imgMusic,
                              height: getSize(98),
                              width: getSize(98),
                              margin: getMargin(top: 38)),
                          Container(
                              height: getVerticalSize(57),
                              width: getHorizontalSize(332),
                              margin: getMargin(top: 50),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Text("lbl_calvin".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoSemiBold16)),
                                CustomTextFormField(
                                    width: getHorizontalSize(332),
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: controller.nameController,
                                    hintText: "lbl_name".tr,
                                    textInputAction: TextInputAction.done,
                                    alignment: Alignment.center,
                                    validator: (value) {
                                      if (!isText(value, isRequired: true)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    })
                              ])),
                          CustomButton(
                              height: getVerticalSize(59),
                              width: getHorizontalSize(149),
                              text: "lbl_proceed".tr,
                              margin: getMargin(top: 49),
                              variant: ButtonVariant.OutlineBlack90019,
                              shape: ButtonShape.RoundedBorder29,
                              fontStyle: ButtonFontStyle.NunitoExtraBold18,
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  controller.onTapProceed();
                                }
                              }),
                          Padding(
                              padding: getPadding(top: 21),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: getVerticalSize(7),
                                        width: getHorizontalSize(14),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.pinkA100,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(3)))),
                                    Container(
                                        height: getVerticalSize(7),
                                        width: getHorizontalSize(14),
                                        margin: getMargin(left: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.pinkA100,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(3)))),
                                    Container(
                                        height: getVerticalSize(7),
                                        width: getHorizontalSize(30),
                                        margin: getMargin(left: 5),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.pinkA100,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(3))))
                                  ])),
                          Spacer(),
                          CustomImageView(
                              imagePath: ImageConstant.imgVector3,
                              height: getVerticalSize(96),
                              width: getHorizontalSize(375))
                        ])))));
  }

  /// Navigates to the chooseGenderAgeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chooseGenderAgeScreen.
}
