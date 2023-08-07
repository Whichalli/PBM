import 'controller/upcoming_booking_two1_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_drop_down.dart';

class UpcomingBookingTwo1Screen
    extends GetWidget<UpcomingBookingTwo1Controller> {
  const UpcomingBookingTwo1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 29,
                leading: AppbarImage(
                    height: getVerticalSize(15),
                    width: getHorizontalSize(9),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 20, top: 15, bottom: 19),
                    onTap: () {
                      onTapArrowleft4();
                    }),
                centerTitle: true,
                title: AppbarSubtitle3(text: "lbl_support".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 15, bottom: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 20, top: 9, right: 20, bottom: 9),
                          decoration: AppDecoration.outlinePinkA100191,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("msg_how_to_delete_account".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtOpenSansRomanSemiBold16Gray800),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 2, bottom: 2))
                              ])),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 20),
                          padding: getPadding(
                              left: 20, top: 8, right: 20, bottom: 8),
                          decoration: AppDecoration.outlinePinkA100191,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("msg_how_do_i_delete".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSansRomanSemiBold16Gray800)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                    height: getSize(18),
                                    width: getSize(18),
                                    margin: getMargin(top: 3, bottom: 3))
                              ])),
                      CustomDropDown(
                          focusNode: FocusNode(),
                          autofocus: true,
                          icon: Container(
                              margin: getMargin(left: 30, right: 19),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdown)),
                          hintText: "msg_i_don_t_need_notifications".tr,
                          margin: getMargin(top: 20),
                          variant: DropDownVariant.OutlinePinkA10019,
                          padding: DropDownPadding.PaddingT10,
                          fontStyle: DropDownFontStyle.OpenSansRomanSemiBold16,
                          items: controller.upcomingBookingTwo1ModelObj.value
                              .dropdownItemList.value,
                          onChanged: (value) {
                            controller.onSelected(value);
                          }),
                      CustomDropDown(
                          focusNode: FocusNode(),
                          autofocus: true,
                          icon: Container(
                              margin: getMargin(left: 30, right: 20),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdown)),
                          hintText: "msg_how_to_download".tr,
                          margin: getMargin(top: 20, bottom: 5),
                          variant: DropDownVariant.OutlinePinkA10019,
                          padding: DropDownPadding.PaddingT10,
                          fontStyle: DropDownFontStyle.OpenSansRomanSemiBold16,
                          items: controller.upcomingBookingTwo1ModelObj.value
                              .dropdownItemList1.value,
                          onChanged: (value) {
                            controller.onSelected1(value);
                          })
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft4() {
    Get.back();
  }
}
