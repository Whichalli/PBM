import 'controller/viewroutine_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/app_bar/appbar_image.dart';import 'package:pbm_care/widgets/app_bar/appbar_subtitle.dart';import 'package:pbm_care/widgets/app_bar/custom_app_bar.dart';import 'package:pbm_care/widgets/custom_button.dart';import 'package:pbm_care/widgets/custom_text_form_field.dart';class ViewroutineScreen extends GetWidget<ViewroutineController> {const ViewroutineScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.gray100, appBar: CustomAppBar(height: getVerticalSize(92), leadingWidth: 80, leading: AppbarImage(height: getSize(48), width: getSize(48), svgPath: ImageConstant.imgMdiarrowleft, margin: getMargin(left: 32, top: 3, bottom: 4), onTap: () {onTapMdiarrowleft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_feeding_f".tr), actions: [AppbarImage(height: getSize(40), width: getSize(40), svgPath: ImageConstant.imgEdit, margin: getMargin(left: 32, top: 7, right: 32, bottom: 8))]), body: Container(width: getHorizontalSize(411), padding: getPadding(left: 29, top: 19, right: 29, bottom: 19), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.taskdescriptionController, hintText: "lbl_describe_task".tr, margin: getMargin(left: 12, right: 9), textInputAction: TextInputAction.done), Container(height: getVerticalSize(540), width: getHorizontalSize(353), margin: getMargin(top: 35, bottom: 5), child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.centerLeft, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 6), child: Row(children: [Container(width: getHorizontalSize(102), padding: getPadding(left: 14, top: 13, right: 14, bottom: 13), decoration: AppDecoration.txtBrand.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8), child: Text("lbl_breast".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansLight24)), Container(width: getHorizontalSize(98), margin: getMargin(left: 22), padding: getPadding(all: 14), decoration: AppDecoration.txtFillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8), child: Text("lbl_bottle".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansLight24)), Container(width: getHorizontalSize(84), margin: getMargin(left: 23), padding: getPadding(left: 6, top: 14, right: 6, bottom: 14), decoration: AppDecoration.txtFillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder8), child: Text("lbl_solids".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansLight24))])), CustomButton(height: getVerticalSize(48), width: getHorizontalSize(150), text: "lbl_00_00".tr, margin: getMargin(left: 87, top: 98), variant: ButtonVariant.FillWhiteA700, padding: ButtonPadding.PaddingT7, fontStyle: ButtonFontStyle.OpenSans24, prefixWidget: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgTimer))), Padding(padding: getPadding(left: 14, top: 72), child: Row(children: [CustomButton(height: getVerticalSize(48), width: getHorizontalSize(150), text: "lbl_00_00".tr, variant: ButtonVariant.FillWhiteA700, padding: ButtonPadding.PaddingT7, fontStyle: ButtonFontStyle.OpenSans24, prefixWidget: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgTimer))), CustomButton(height: getVerticalSize(48), width: getHorizontalSize(150), text: "lbl_00_00".tr, margin: getMargin(left: 21), variant: ButtonVariant.FillWhiteA700, padding: ButtonPadding.PaddingT7, fontStyle: ButtonFontStyle.OpenSans24, prefixWidget: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgFlag)))])), Container(margin: getMargin(left: 3, top: 15), padding: getPadding(left: 16, top: 12, right: 16, bottom: 12), decoration: AppDecoration.fillPink400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(svgPath: ImageConstant.imgPlay, height: getSize(40), width: getSize(40)), Padding(padding: getPadding(left: 19, right: 27, bottom: 3), child: Text("lbl_left".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular24))])), Padding(padding: getPadding(left: 9, top: 13, right: 5), child: Row(children: [CustomButton(height: getVerticalSize(48), width: getHorizontalSize(150), text: "lbl_01_34".tr, variant: ButtonVariant.FillWhiteA700, padding: ButtonPadding.PaddingT7, fontStyle: ButtonFontStyle.OpenSans24, prefixWidget: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgTimer))), CustomButton(height: getVerticalSize(48), width: getHorizontalSize(150), text: "lbl_02_40".tr, margin: getMargin(left: 21), variant: ButtonVariant.FillWhiteA700, padding: ButtonPadding.PaddingT7, fontStyle: ButtonFontStyle.OpenSans24, prefixWidget: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgFlag)))])), CustomButton(height: getVerticalSize(64), width: getHorizontalSize(129), text: "lbl_save".tr, margin: getMargin(top: 7, right: 89), variant: ButtonVariant.FillPink400, shape: ButtonShape.CircleBorder32, fontStyle: ButtonFontStyle.PoppinsRegular24, alignment: Alignment.centerRight)])), Align(alignment: Alignment.bottomRight, child: Container(margin: getMargin(left: 193, top: 344, bottom: 132), padding: getPadding(left: 16, top: 11, right: 16, bottom: 11), decoration: AppDecoration.fillPink400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: Row(children: [CustomImageView(svgPath: ImageConstant.imgPlay, height: getSize(40), width: getSize(40)), Padding(padding: getPadding(left: 10, top: 4), child: Text("lbl_right".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular24))])))]))])))); } 
/// Navigates to the homeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the homeScreen.
onTapMdiarrowleft() { Get.toNamed(AppRoutes.homeScreen, ); } 
 }
