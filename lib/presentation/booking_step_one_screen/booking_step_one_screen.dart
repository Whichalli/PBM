import 'controller/booking_step_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class BookingStepOneScreen extends GetWidget<BookingStepOneController> {
  const BookingStepOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(51),
            leadingWidth: 28,
            leading: AppbarImage(
                height: getVerticalSize(17),
                width: getHorizontalSize(9),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 19, top: 23, bottom: 10),
                onTap: () {
                  controller.onTapArrowleft1();
                }),
            centerTitle: true,
            title: AppbarSubtitle3(text: "lbl_booking".tr),
            actions: [
              AppbarImage(
                  height: getSize(20),
                  width: getSize(20),
                  svgPath: ImageConstant.imgSearchGray80020x20,
                  margin: getMargin(left: 20, top: 12, right: 20, bottom: 19))
            ]),
        body: GetBuilder<BookingStepOneController>(builder: (cotroller) {
          return SizedBox(
              width: size.width,
              child: Padding(
                  padding: getPadding(left: 16, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(right: 19),
                            child: Row(children: [
                              CustomButton(
                                  height: getVerticalSize(35),
                                  width: getHorizontalSize(90),
                                  text: "lbl_time".tr,
                                  variant: ButtonVariant.OutlinePinkA100_2,
                                  shape: ButtonShape.RoundedBorder8,
                                  padding: ButtonPadding.PaddingAll9,
                                  fontStyle: ButtonFontStyle.OpenSans16),
                              const Spacer(flex: 41),
                              Padding(
                                  padding: getPadding(top: 10, bottom: 9),
                                  child: Text("lbl_details".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSans16)),
                              const Spacer(flex: 58),
                              Padding(
                                  padding: getPadding(top: 10, bottom: 9),
                                  child: Text("lbl_finish".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSans16))
                            ])),
                        Divider(
                            height: getVerticalSize(1),
                            thickness: getVerticalSize(1),
                            color: ColorConstant.pinkA10019),
                        Obx(() => controller.boodedDateLoading.isTrue
                            ? LinearProgressIndicator(
                                minHeight: 1,
                                color: ColorConstant.pinkA100,
                              )
                            : const SizedBox()),
                        Expanded(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        margin: getMargin(top: 19),
                                        // height: 350,
                                        padding: getPadding(top: 8, bottom: 8),
                                        decoration: AppDecoration
                                            .outlinePinkA1001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 10,
                                                      right: 16),
                                                  child: Row(
                                                      // mainAxisAlignment:
                                                      //     MainAxisAlignment
                                                      //         .center,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 3),
                                                              child: Obx(() => Text(
                                                                  "${fullMonths[controller.targetDateTime.value.month - 1]['month']}"
                                                                      .tr
                                                                      .toUpperCase(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtOpenSansRomanBold14))),
                                                        ),
                                                        CustomImageView(
                                                          onTap: () =>
                                                              controller.prev(
                                                                  context),
                                                          svgPath: ImageConstant
                                                              .imgArrowleftBlueGray90003,
                                                          height: getSize(24),
                                                          width: getSize(24),
                                                        ),
                                                        CustomImageView(
                                                            onTap: () =>
                                                                controller.next(
                                                                    context),
                                                            svgPath: ImageConstant
                                                                .imgArrowrightBlueGray90003,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                left: 8))
                                                      ])),
                                              Padding(
                                                padding: getPadding(top: 0),
                                                child: Container(
                                                  margin: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 16.0),
                                                  child: SizedBox(
                                                      height: 300,
                                                      child: controller
                                                          .calendarCarouselNoHeader()),
                                                ),
                                              )
                                            ]))),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                      padding: getPadding(top: 19),
                                      child: Text("lbl_schedule".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtOpenSansRomanSemiBold14Gray800
                                              .copyWith(fontSize: 16))),
                                ),
                                Container(
                                  margin: getMargin(top: 8),
                                  // height: markedDate.length < 3
                                  //     ? null
                                  //     : getVerticalSize(270),
                                  child: SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    child: Column(
                                      children: controller.bookings,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ])));
        }),
        bottomNavigationBar: Container(
            margin: getMargin(left: 16, top: 8, right: 16, bottom: 8),
            decoration: AppDecoration.white,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomButton(
                      height: getVerticalSize(53),
                      text: "lbl_next".tr,
                      onTap: () {
                        controller.onTapNext();
                      })
                ])));
  }
}
