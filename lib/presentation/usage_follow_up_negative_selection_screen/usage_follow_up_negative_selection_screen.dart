<<<<<<< HEAD
import 'controller/usage_follow_up_negative_selection_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/custom_button.dart';import 'package:pbm_care/widgets/custom_radio_button.dart';import 'package:pbm_care/widgets/custom_text_form_field.dart';class UsageFollowUpNegativeSelectionScreen extends GetWidget<UsageFollowUpNegativeSelectionController> {const UsageFollowUpNegativeSelectionScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.whiteA700, body: Container(width: double.maxFinite, padding: getPadding(left: 16, top: 46, right: 16, bottom: 46), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(top: 18), child: Text("lbl_pbm_experience".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeExtraBold24)), Container(width: getHorizontalSize(317), margin: getMargin(left: 6, top: 6, right: 19), child: Text("msg_would_you_consider".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtManropeMedium16)), Padding(padding: getPadding(top: 17), child: Obx(() => CustomRadioButton(width: getHorizontalSize(343), text: "msg_my_nurses_providers".tr, iconSize: getHorizontalSize(16), value: "msg_my_nurses_providers".tr, groupValue: controller.radioGroup.value, margin: getMargin(top: 17), variant: RadioVariant.OutlinePinkA100, shape: RadioShape.RoundedBorder12, padding: RadioPadding.PaddingAll5, fontStyle: RadioFontStyle.ManropeBold14, isRightCheck: true, onChange: (value) {controller.radioGroup.value = value;}))), CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.timeController, hintText: "msg_i_don_t_have_the".tr, margin: getMargin(top: 12), variant: TextFormFieldVariant.OutlineGray30002, shape: TextFormFieldShape.RoundedBorder12, padding: TextFormFieldPadding.PaddingT18, fontStyle: TextFormFieldFontStyle.ManropeBold14, suffix: Container(margin: getMargin(left: 30, top: 14, bottom: 14), child: CustomImageView(svgPath: ImageConstant.imgAccessory)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56))), CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.unsureController, hintText: "msg_i_m_un_sure_about".tr, margin: getMargin(top: 12), variant: TextFormFieldVariant.OutlineGray30002, shape: TextFormFieldShape.RoundedBorder12, padding: TextFormFieldPadding.PaddingT18, fontStyle: TextFormFieldFontStyle.ManropeBold14, textInputAction: TextInputAction.done, suffix: Container(margin: getMargin(left: 24, top: 14, bottom: 14), child: CustomImageView(svgPath: ImageConstant.imgAccessory)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56))), Spacer(), CustomButton(height: getVerticalSize(44), text: "lbl_next".tr, shape: ButtonShape.CircleBorder13, padding: ButtonPadding.PaddingAll9, fontStyle: ButtonFontStyle.ManropeBold16, onTap: () {onTapNext();})])))); } 
/// Navigates to the favouritesWithSelectionScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the favouritesWithSelectionScreen.
onTapNext() { Get.toNamed(AppRoutes.favouritesWithSelectionScreen, ); } 
 }
=======
import 'controller/usage_follow_up_negative_selection_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_radio_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

class UsageFollowUpNegativeSelectionScreen
    extends GetWidget<UsageFollowUpNegativeSelectionController> {
  const UsageFollowUpNegativeSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
            width: double.maxFinite,
            padding: getPadding(left: 16, top: 46, right: 16, bottom: 46),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(top: 18),
                      child: Text("lbl_pbm_experience".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtManropeExtraBold24)),
                  Container(
                      width: getHorizontalSize(317),
                      margin: getMargin(left: 6, top: 6, right: 19),
                      child: Text("msg_would_you_consider".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtManropeMedium16)),
                  Padding(
                      padding: getPadding(bottom: 2, top: 12),
                      child: Obx(() => CustomRadioButton(
                          text:
                              "My nurses/providers have been responsive & \nattentive to the queries and concerns"
                                  .tr,
                          value: "msg_my_nurses_providers".tr,
                          alignment: Alignment.centerLeft,
                          groupValue: controller.radioGroup.value,
                          textAlign: TextAlign.left,
                          margin: getMargin(bottom: 2),
                          variant: controller.radioGroup.value ==
                                  "msg_my_nurses_providers".tr
                              ? RadioVariant.OutlinePinkA100
                              : RadioVariant.Default,
                          shape: RadioShape.RoundedBorder12,
                          padding: RadioPadding.PaddingAll4,
                          fontStyle: RadioFontStyle.ManropeBold14,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          }))),
                  Padding(
                      padding: getPadding(bottom: 2, top: 12),
                      child: Obx(() => CustomRadioButton(
                          text: "msg_i_don_t_have_the".tr,
                          value: "msg_i_don_t_have_the".tr,
                          variant: controller.radioGroup.value ==
                                  "msg_i_don_t_have_the".tr
                              ? RadioVariant.OutlinePinkA100
                              : RadioVariant.Default,
                          alignment: Alignment.centerLeft,
                          groupValue: controller.radioGroup.value,
                          textAlign: TextAlign.left,
                          margin: getMargin(bottom: 2),
                          shape: RadioShape.RoundedBorder12,
                          padding: RadioPadding.PaddingAll4,
                          fontStyle: RadioFontStyle.ManropeBold14,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          }))),
                  Padding(
                      padding: getPadding(bottom: 2, top: 12),
                      child: Obx(() => CustomRadioButton(
                          text: "msg_i_m_un_sure_about".tr,
                          value: "msg_i_m_un_sure_about".tr,
                          alignment: Alignment.centerLeft,
                          groupValue: controller.radioGroup.value,
                          variant: controller.radioGroup.value ==
                                  "msg_i_m_un_sure_about".tr
                              ? RadioVariant.OutlinePinkA100
                              : RadioVariant.Default,
                          margin: getMargin(bottom: 2),
                          shape: RadioShape.RoundedBorder12,
                          padding: RadioPadding.PaddingAll4,
                          fontStyle: RadioFontStyle.ManropeBold14,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          }))),
                  Spacer(),
                  CustomButton(
                      height: getVerticalSize(50),
                      text: "lbl_next".tr,
                      // shape: ButtonShape.CircleBorder13,
                      padding: ButtonPadding.PaddingAll9,
                      fontStyle: ButtonFontStyle.ManropeBold16,
                      onTap: () {
                        controller.onTapNext();
                      })
                ])));
  }

  /// Navigates to the favouritesWithSelectionScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the favouritesWithSelectionScreen.
}
>>>>>>> dev
