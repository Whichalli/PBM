import 'controller/onboarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
  const OnboardingTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        // appBar: CustomAppBar(
        //     height: getVerticalSize(116),
        //     title: Container(
        //         width: getHorizontalSize(132),
        //         margin: getMargin(left: 29, top: 41),
        //         child: Text("lbl_welcome_to_pbm".tr,
        //             maxLines: null,
        //             textAlign: TextAlign.left,
        //             style: AppStyle.txtNunitoBold30PinkA100)),
        //     actions: [
        //       AppbarImage(
        //           height: getVerticalSize(98),
        //           width: getHorizontalSize(168),
        //           imagePath: ImageConstant.imgVector5,
        //           margin: getMargin(bottom: 18))
        //     ]),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      width: getHorizontalSize(132),
                      margin: getMargin(left: 29, top: 41),
                      child: Text("lbl_welcome_to_pbm".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNunitoBold30PinkA100)),
                  const Spacer(),
                  AppbarImage(
                      height: getVerticalSize(98),
                      width: getHorizontalSize(168),
                      imagePath: ImageConstant.imgVector5,
                      margin: getMargin(
                        bottom: 18,
                      ))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      height: getSize(8),
                      width: getSize(8),
                      margin: getMargin(top: 60, right: 73),
                      decoration: BoxDecoration(
                          color: ColorConstant.pinkA100,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(4)))),
                  Container(
                      height: getSize(8),
                      width: getSize(8),
                      margin: getMargin(top: 34, right: 73),
                      decoration: BoxDecoration(
                          color: ColorConstant.pinkA100,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(4)))),
                  Container(
                      height: getSize(8),
                      width: getSize(8),
                      margin: getMargin(top: 25, right: 91),
                      decoration: BoxDecoration(
                          color: ColorConstant.pinkA100,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(4)))),
                  CustomButton(
                      height: getVerticalSize(59),
                      width: getHorizontalSize(165),
                      text: "lbl_get_started".tr,
                      margin: getMargin(top: 12),
                      shape: ButtonShape.RoundedBorder29,
                      padding: ButtonPadding.PaddingAll19,
                      fontStyle: ButtonFontStyle.NunitoBold18,
                      onTap: () {
                        onTapGetstarted();
                      },
                      alignment: Alignment.center),
                  const SizedBox(
                    height: 28,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgUndrawdoctorshwty,
                    height: getVerticalSize(169),
                    width: getHorizontalSize(227),
                    alignment: Alignment.center,
                    // radius: BorderRadius.circular(20),
                    // margin: getMargin(left: 57)
                  ),
                ],
              ),
              // Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgVector3,
                  height: getVerticalSize(115),
                  width: getHorizontalSize(375),
                  margin: getMargin(top: 82))
            ]));
  }

  /// Navigates to the alreadySignedUpScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the alreadySignedUpScreen.
  onTapGetstarted() {
    Get.toNamed(
      AppRoutes.alreadySignedUpScreen,
    );
  }
}
