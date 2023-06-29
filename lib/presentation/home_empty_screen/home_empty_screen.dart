import 'controller/home_empty_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/custom_floating_button.dart';class HomeEmptyScreen extends GetWidget<HomeEmptyController> {const HomeEmptyScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray200, body: SizedBox(width: getHorizontalSize(411), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgMdiarrowleft, height: getVerticalSize(28), width: getHorizontalSize(32), onTap: () {onTapImgArrowleft();}), Padding(padding: getPadding(left: 32, top: 12), child: Text("lbl_routines".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular30)), Container(width: getHorizontalSize(327), margin: getMargin(left: 32, top: 40, right: 51), child: Text("msg_no_routines_tap".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtOpenSansLight24)), CustomImageView(svgPath: ImageConstant.imgArrow1, height: getVerticalSize(387), width: getHorizontalSize(251), margin: getMargin(left: 32, top: 72, bottom: 79))])), floatingActionButton: CustomFloatingButton(height: 64, width: 64, onTap: () {onTapFloatingactionb();}, child: CustomImageView(svgPath: ImageConstant.imgPlus, height: getVerticalSize(32.0), width: getHorizontalSize(32.0))))); } 
/// Navigates to the homeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the homeScreen.
onTapFloatingactionb() { Get.offNamed(AppRoutes.homeScreen,); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] library to 
/// navigate to the previous screen in the navigation stack.
onTapImgArrowleft() { Get.back(); } 
 }
