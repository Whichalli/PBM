<<<<<<< HEAD
import 'controller/tasktimerpage_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/app_bar/appbar_image.dart';import 'package:pbm_care/widgets/app_bar/appbar_subtitle.dart';import 'package:pbm_care/widgets/app_bar/custom_app_bar.dart';import 'package:pbm_care/widgets/custom_button.dart';class TasktimerpageScreen extends GetWidget<TasktimerpageController> {const TasktimerpageScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray100, appBar: CustomAppBar(height: getVerticalSize(92), leadingWidth: 78, leading: AppbarImage(height: getSize(48), width: getSize(48), svgPath: ImageConstant.imgMdiarrowleft, margin: getMargin(left: 30, top: 2, bottom: 5), onTap: () {onTapMdiarrowleft1();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_sleeping_f".tr), actions: [AppbarImage(height: getSize(40), width: getSize(40), svgPath: ImageConstant.imgClose, margin: getMargin(left: 32, top: 7, right: 32, bottom: 8))]), body: Container(width: getHorizontalSize(411), padding: getPadding(left: 31, top: 19, right: 31, bottom: 19), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(width: double.maxFinite, child: Container(margin: getMargin(left: 2), padding: getPadding(left: 34, top: 21, right: 34, bottom: 21), decoration: AppDecoration.fillPink5001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder23), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(right: 40), child: Text("lbl_wakes_up".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular30)), Padding(padding: getPadding(top: 4, bottom: 4), child: Text("lbl_02_37".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold96.copyWith(letterSpacing: getHorizontalSize(4.8))))]))), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(top: 32), color: ColorConstant.pink400, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder48), child: Container(height: getSize(96), width: getSize(96), padding: getPadding(left: 25, top: 30, right: 25, bottom: 30), decoration: AppDecoration.fillPink400.copyWith(borderRadius: BorderRadiusStyle.circleBorder48), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgCheckmark, height: getVerticalSize(33), width: getHorizontalSize(43), alignment: Alignment.center)]))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 2, top: 32, right: 25), child: Row(children: [CustomButton(height: getVerticalSize(48), width: getHorizontalSize(150), text: "lbl_01_34".tr, variant: ButtonVariant.FillWhiteA700, padding: ButtonPadding.PaddingT7, fontStyle: ButtonFontStyle.OpenSans24, prefixWidget: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgTimer))), CustomButton(height: getVerticalSize(48), width: getHorizontalSize(150), text: "lbl_02_40".tr, margin: getMargin(left: 21), variant: ButtonVariant.FillWhiteA700, padding: ButtonPadding.PaddingT7, fontStyle: ButtonFontStyle.OpenSans24, prefixWidget: Container(margin: getMargin(right: 16), child: CustomImageView(svgPath: ImageConstant.imgFlag)))]))), Padding(padding: getPadding(top: 45, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(svgPath: ImageConstant.imgSkipprev, height: getSize(40), width: getSize(40), margin: getMargin(top: 2, bottom: 2)), CustomImageView(svgPath: ImageConstant.imgPause, height: getSize(45), width: getSize(45), margin: getMargin(left: 37)), CustomImageView(svgPath: ImageConstant.imgSkipprev, height: getSize(40), width: getSize(40), margin: getMargin(left: 37, top: 2, bottom: 2))]))])))); } 
/// Navigates to the homeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the homeScreen.
onTapMdiarrowleft1() { Get.toNamed(AppRoutes.homeScreen, ); } 
 }
=======
import 'package:pbm_app/widgets/widgets.dart';

import 'controller/tasktimerpage_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class TasktimerpageScreen extends GetWidget<TasktimerpageController> {
  const TasktimerpageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorConstant.gray100,
          automaticallyImplyLeading: false,
          title: Text(
            "lbl_sleeping_f".tr,
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
              )),
        ),
        body: Container(
            width: getHorizontalSize(500),
            padding: getPadding(left: 31, top: 19, right: 31, bottom: 19),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                  width: double.maxFinite,
                  child: Container(
                      height: 120,
                      margin: getMargin(left: 2),
                      decoration: AppDecoration.fillPink5001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder23),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: getPadding(top: 4, bottom: 4),
                                child: Obx(() => Text(controller.counter.value,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtPoppinsSemiBold96
                                        .copyWith(
                                            fontSize: 50,
                                            letterSpacing:
                                                getHorizontalSize(4.8)))))
                          ]))),
              Padding(
                padding: getPadding(top: 24, bottom: 5),
                child: IconButton(
                    onPressed: controller.playing.value
                        ? null
                        : () => controller.sleep(),
                    icon: Obx(
                      () => (controller.playing.value)
                          ? CustomImageView(
                              svgPath: ImageConstant.imgPause,
                              height: getSize(45),
                              width: getSize(45),
                              // margin: getMargin(left: 37)
                            )
                          : CustomImageView(
                              svgPath: ImageConstant.imgPlay,
                              height: getSize(45),
                              width: getSize(45),
                              // margin: getMargin(left: 37)
                            ),
                    )),
              ),
              const SizedBox(
                height: 14,
              ),
              CustomButton2(
                text: 'Start time',
                height: 60,
                fontSize: 16,
                icon: Obx(() => Text(
                      '${controller.startTime.value.isEmpty ? '--:-- --' : controller.startTime.value.getTime()}',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              CustomButton2(
                text: 'End time',
                height: 60,
                fontSize: 16,
                icon: Obx(() => Text(
                      '${controller.endTime.value.isEmpty ? '--:-- --' : controller.endTime.value.getTime()}',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              // CustomButton2(
              //   text: 'Total time',
              //   height: 60,
              //   fontSize: 16,
              //   icon: Obx(() => Text(
              //         '${controller.totalTime.value.isEmpty ? '--:-- --' : controller.totalTime.value.getTime()}',
              //         style: TextStyle(fontSize: 18),
              //       )),
              // ),
              const SizedBox(
                height: 48,
              ),
              Obx(() => CustomButton(
                  height: getVerticalSize(50),
                  width: getHorizontalSize(200),
                  text: !controller.loading.value ? "lbl_save".tr : null,
                  icon: !controller.loading.value
                      ? null
                      : SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: ColorConstant.whiteA700,
                            strokeWidth: 2,
                          ),
                        ),
                  onTap: () async {
                    controller.loading.value = true;
                    await controller.save();
                    controller.loading.value = false;
                  },
                  margin: getMargin(top: 15),
                  variant: ButtonVariant.FillPink400,
                  shape: ButtonShape.CircleBorder32,
                  fontStyle: ButtonFontStyle.OpenSansRomanBold18,
                  alignment: Alignment.center)),
            ])));
  }

  /// Navigates to the homeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeScreen.
  onTapMdiarrowleft1() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
>>>>>>> dev
