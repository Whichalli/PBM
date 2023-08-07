import 'controller/upcoming_booking_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/core/utils/validation_functions.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_floating_edit_text.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class UpcomingBookingThreeScreen
    extends GetWidget<UpcomingBookingThreeController> {
  UpcomingBookingThreeScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: AppBar(
            backgroundColor: ColorConstant.pinkA100,
            centerTitle: true,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                )),
            title: Text("lbl_edit_account".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOpenSansRomanBold18)),
        body: Container(
            height: getVerticalSize(966),
            width: double.maxFinite,
            margin: getMargin(bottom: 5),
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 100,
                    width: size.width,
                    padding: getPadding(left: 19, top: 9, right: 19, bottom: 9),
                    decoration: AppDecoration.brand.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL30),
                  )),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  margin: getMargin(top: 16, bottom: 12),
                  // height: getVerticalSize(885),
                  width: getHorizontalSize(351),
                  padding: getPadding(left: 12, right: 12, top: 24),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              CustomFloatingEditText(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: controller.nameController,
                                  labelText: "lbl_mother_s_name".tr,
                                  hintText: "lbl_jenny_piers".tr,
                                  margin: getMargin(left: 8, right: 1),
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              Container(
                                  height: getVerticalSize(59),
                                  width: getHorizontalSize(342),
                                  margin: getMargin(left: 8),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 68,
                                                    top: 9,
                                                    right: 68,
                                                    bottom: 9),
                                                decoration: AppDecoration
                                                    .outlineGray500
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder8),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 2),
                                                          child: Text(
                                                              "lbl_mother_s_number"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular10
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.25)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3,
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_123_456_7890"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.25))))
                                                    ]))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgTicket,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(33),
                                            alignment: Alignment.topLeft,
                                            margin: getMargin(left: 12))
                                      ])),
                              CustomFloatingEditText(
                                  focusNode: FocusNode(),
                                  autofocus: true,
                                  controller: controller.nameoneController,
                                  labelText: "lbl_father_s_name".tr,
                                  hintText: "lbl_tony_stark".tr,
                                  margin: getMargin(left: 8, top: 7, right: 1),
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              Container(
                                  margin: getMargin(left: 8, top: 7, right: 1),
                                  padding: getPadding(
                                      left: 12, top: 5, right: 12, bottom: 5),
                                  decoration: AppDecoration.outlineGray500
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgTicket,
                                            height: getVerticalSize(39),
                                            width: getHorizontalSize(33),
                                            margin: getMargin(bottom: 1)),
                                        Padding(
                                            padding: getPadding(
                                                left: 23,
                                                top: 3,
                                                right: 172,
                                                bottom: 6),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 2),
                                                      child: Text(
                                                          "lbl_father_s_number"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular10
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.25)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 3),
                                                      child: Text(
                                                          "lbl_123_456_7890".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular14
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.25))))
                                                ]))
                                      ])),
                            ]),
                      )))
            ])),
        bottomNavigationBar: CustomButton(
            height: getVerticalSize(50),
            text: "lbl_save".tr,
            margin: getMargin(left: 16, right: 16, bottom: 8),
            onTap: () {
              onTapSave();
            }));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgArrowleft() {
    Get.back();
  }

  /// Navigates to the upcomingBookingFourScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingFourScreen.
  onTapSave() {
    Get.toNamed(
      AppRoutes.upcomingBookingFourScreen,
    );
  }
}
