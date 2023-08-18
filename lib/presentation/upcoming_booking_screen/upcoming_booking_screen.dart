import 'controller/upcoming_booking_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class UpcomingBookingScreen extends GetWidget<UpcomingBookingController> {
  const UpcomingBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
            width: double.maxFinite,
            padding: getPadding(top: 12, bottom: 12),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text("lbl_payment".tr,
                  //     overflow: TextOverflow.ellipsis,
                  //     textAlign: TextAlign.left,
                  //     style: AppStyle.txtOpenSansRomanBold18Gray800),
                  // Spacer(),
                  CustomImageView(
                      svgPath: ImageConstant.imgCheckmarkPinkA100,
                      height: getSize(40),
                      width: getSize(40)),
                  Padding(
                      padding: getPadding(top: 13),
                      child: Text("msg_booking_successful".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOpenSansRomanBold24Gray800)),
                  Padding(
                      padding: getPadding(top: 8, bottom: 16),
                      child: Text("msg_your_appointment".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOpenSans14Gray800)),
                ])),
        bottomNavigationBar: Container(
            margin: getMargin(left: 20, right: 19, bottom: 16),
            decoration: AppDecoration.white,
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomButton(
                        height: getVerticalSize(53),
                        text: "lbl_next".tr,
                        onTap: () {
                          onTapNext();
                        }),
                  )
                ])));
  }

  /// Navigates to the usageFollowUpNegativeSelectionScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the usageFollowUpNegativeSelectionScreen.
  onTapNext() {
    Get.toNamed(
      AppRoutes.usageFollowUpNegativeSelectionScreen,
    );
  }
}
