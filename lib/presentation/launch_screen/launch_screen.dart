<<<<<<< HEAD
import 'controller/launch_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/custom_button.dart';class LaunchScreen extends GetWidget<LaunchController> {const LaunchScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.pinkA100, body: Container(width: double.maxFinite, padding: getPadding(left: 15, right: 15), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Spacer(), Padding(padding: getPadding(left: 60, right: 60), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(138), width: getHorizontalSize(104), child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgLayer2, height: getVerticalSize(126), width: getHorizontalSize(104), alignment: Alignment.topCenter), Align(alignment: Alignment.bottomRight, child: Text("lbl_uladluch".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansItalicLight17))])), Padding(padding: getPadding(top: 5), child: Text("lbl_sleep_sounds".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanBold34))])), CustomImageView(svgPath: ImageConstant.imgPaginator, height: getVerticalSize(43), width: getHorizontalSize(311), margin: getMargin(top: 41)), CustomButton(height: getVerticalSize(50), text: "lbl_next".tr, margin: getMargin(left: 34, top: 40), variant: ButtonVariant.FillBluegray90001, fontStyle: ButtonFontStyle.OpenSansItalicLight17, onTap: () {onTapNext();}, alignment: Alignment.centerRight)])))); } 
/// Navigates to the loginSlideTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the loginSlideTwoScreen.
onTapNext() { Get.toNamed(AppRoutes.loginSlideTwoScreen, ); } 
 }
=======
import 'controller/launch_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class LaunchScreen extends GetWidget<LaunchController> {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.pinkA100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, right: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: PageView(
                          allowImplicitScrolling: false,
                          controller: controller.pageController,
                          physics: const BouncingScrollPhysics(),
                          children: List.generate(
                            3,
                            (index) => Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: getVerticalSize(124),
                                      width: getHorizontalSize(200),
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                                imagePath: controller
                                                        .pageViewData[index]
                                                    ['imagePath'],
                                                svgPath: controller
                                                        .pageViewData[index]
                                                    ['svgPath'],
                                                height: getVerticalSize(150),
                                                width: getHorizontalSize(150),
                                                fit: BoxFit.contain,
                                                alignment: Alignment.topCenter),
                                            if (index == 0) ...[
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text("lbl_uladluch".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOpenSansItalicLight17))
                                            ],
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 4),
                                      child: Text(
                                          controller.pageViewData[index]
                                              ['title'],
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtOpenSansRomanBold34)),
                                  if (index != 0) ...[
                                    Padding(
                                      padding: getPadding(all: 16),
                                      child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                              controller.pageViewData[index]
                                                  ['content'],
                                              maxLines: null,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtOpenSansRomanRegular17)),
                                    )
                                  ]
                                ]),
                          ),
                        ),
                      ),
                      CustomImageView(
                          svgPath: ImageConstant.imgPaginator,
                          height: getVerticalSize(43),
                          width: getHorizontalSize(311),
                          margin: getMargin(top: 41)),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_next".tr,
                          margin: getMargin(all: 8),
                          variant: ButtonVariant.FillBluegray90001,
                          fontStyle: ButtonFontStyle.OpenSansItalicLight17,
                          onTap: () {
                            controller.onTapNext();
                          },
                          alignment: Alignment.centerRight)
                    ]))));
  }
}
>>>>>>> dev
