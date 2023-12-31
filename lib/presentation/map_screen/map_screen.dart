import '../map_screen/widgets/listcalendar_item_widget.dart';
import '../map_screen/widgets/listsearch_item_widget.dart';
import 'controller/map_controller.dart';
import 'models/listcalendar_item_model.dart';
import 'models/listsearch_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class MapScreen extends GetWidget<MapController> {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(44),
            leadingWidth: 28,
            leading: AppbarImage(
                height: getVerticalSize(14),
                width: getHorizontalSize(8),
                svgPath: ImageConstant.imgArrowleft,
                margin: getMargin(left: 20, top: 12, bottom: 17),
                onTap: () {
                  onTapArrowleft();
                }),
            centerTitle: true,
            title: AppbarSubtitle3(text: "lbl_nurse_search".tr),
            actions: [
              CustomButton(
                  height: getVerticalSize(39),
                  width: getHorizontalSize(65),
                  text: "lbl_cancel".tr,
                  margin: getMargin(left: 20, top: 2, right: 20, bottom: 2),
                  variant: ButtonVariant.White,
                  shape: ButtonShape.RoundedBorder16,
                  padding: ButtonPadding.PaddingAll9,
                  fontStyle: ButtonFontStyle.OpenSansRomanSemiBold14Gray600)
            ]),
        body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
                padding: getPadding(top: 21),
                child: Padding(
                    padding: getPadding(right: 4),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 20),
                              child: Text("lbl_quick_filter".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSansRomanSemiBold14Gray800)),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 20, top: 8, right: 16),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(20));
                                      },
                                      itemCount: controller.mapModelObj.value
                                          .listcalendarItemList.value.length,
                                      itemBuilder: (context, index) {
                                        ListcalendarItemModel model = controller
                                            .mapModelObj
                                            .value
                                            .listcalendarItemList
                                            .value[index];
                                        return ListcalendarItemWidget(model);
                                      })))),
                          Padding(
                              padding: getPadding(left: 20, top: 31),
                              child: Text("lbl_filter_by".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSansRomanSemiBold14Gray800)),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 20, top: 7, right: 11),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(20));
                                      },
                                      itemCount: controller.mapModelObj.value
                                          .listsearchItemList.value.length,
                                      itemBuilder: (context, index) {
                                        ListsearchItemModel model = controller
                                            .mapModelObj
                                            .value
                                            .listsearchItemList
                                            .value[index];
                                        return ListsearchItemWidget(model);
                                      })))),
                          SizedBox(
                              width: double.maxFinite,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapColumnapply();
                                  },
                                  child: Container(
                                      margin: getMargin(top: 20),
                                      padding: getPadding(
                                          left: 16,
                                          top: 10,
                                          right: 16,
                                          bottom: 10),
                                      decoration: AppDecoration.white,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomButton(
                                                height: getVerticalSize(59),
                                                text: "lbl_apply_filter".tr,
                                                variant: ButtonVariant
                                                    .OutlineBluegray100_1,
                                                shape:
                                                    ButtonShape.RoundedBorder29,
                                                padding:
                                                    ButtonPadding.PaddingAll19,
                                                fontStyle: ButtonFontStyle
                                                    .OpenSansRomanSemiBold14Gray90002)
                                          ]))))
                        ])))));
  }

  /// Navigates to the upcomingBooking1Screen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBooking1Screen.
  onTapColumnapply() {
    Get.toNamed(
      AppRoutes.upcomingBooking1Screen,
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft() {
    Get.back();
  }
}
