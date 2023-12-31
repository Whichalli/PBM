import '../past_booking_details_screen/widgets/listsearch1_item_widget.dart';
import 'controller/past_booking_details_controller.dart';
import 'models/listsearch1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_button_1.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_bottom_bar.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

class PastBookingDetailsScreen extends GetWidget<PastBookingDetailsController> {
  const PastBookingDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                title: AppbarButton1(
                    margin: getMargin(left: 19),
                    onTap: () {
                      onTapReviewdetails();
                    }),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 14),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 20, right: 20),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgAvatar,
                                        height: getSize(44),
                                        width: getSize(44),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(22)),
                                        margin: getMargin(bottom: 45)),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(left: 20),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_thanawan_chadee"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtOpenSansRomanSemiBold16Gray800),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              5),
                                                                  child: Text(
                                                                      "lbl_1_day_ago"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtOpenSans12))
                                                            ]),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgShare,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                left: 60,
                                                                bottom: 20)),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgFavorite,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                left: 20,
                                                                bottom: 20))
                                                      ]),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 19),
                                                      child: Row(children: [
                                                        Text("lbl_4_0".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOpenSansRomanSemiBold18),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgStarPinkA100,
                                                            height: getSize(18),
                                                            width: getSize(18),
                                                            margin: getMargin(
                                                                left: 10,
                                                                top: 3,
                                                                bottom: 3)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgStarPinkA100,
                                                            height: getSize(18),
                                                            width: getSize(18),
                                                            margin: getMargin(
                                                                left: 5,
                                                                top: 3,
                                                                bottom: 3)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgStarPinkA100,
                                                            height: getSize(18),
                                                            width: getSize(18),
                                                            margin: getMargin(
                                                                left: 5,
                                                                top: 3,
                                                                bottom: 3)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgStarPinkA100,
                                                            height: getSize(18),
                                                            width: getSize(18),
                                                            margin: getMargin(
                                                                left: 5,
                                                                top: 3,
                                                                bottom: 3)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgStarPinkA10018x18,
                                                            height: getSize(18),
                                                            width: getSize(18),
                                                            margin: getMargin(
                                                                left: 5,
                                                                top: 3,
                                                                bottom: 3))
                                                      ]))
                                                ])))
                                  ])),
                          Padding(
                              padding: getPadding(top: 29),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.pinkA10019)),
                          Padding(
                              padding: getPadding(left: 20, top: 29, right: 20),
                              child: Obx(() => ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(23));
                                  },
                                  itemCount: controller
                                      .pastBookingDetailsModelObj
                                      .value
                                      .listsearch1ItemList
                                      .value
                                      .length,
                                  itemBuilder: (context, index) {
                                    Listsearch1ItemModel model = controller
                                        .pastBookingDetailsModelObj
                                        .value
                                        .listsearch1ItemList
                                        .value[index];
                                    return Listsearch1ItemWidget(model);
                                  }))),
                          Padding(
                              padding: getPadding(top: 28),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.pinkA10019)),
                          Container(
                              width: getHorizontalSize(329),
                              margin: getMargin(left: 20, top: 29, right: 25),
                              child: Text("msg_far_far_away_behind".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSans14Gray800)),
                          Padding(
                              padding: getPadding(top: 26),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.pinkA10019)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 20, top: 30),
                                  child: Text("msg_write_your_comment".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtOpenSansRomanSemiBold12Gray600))),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: true,
                              controller: controller.commentController,
                              hintText: "lbl_comment".tr,
                              margin: getMargin(left: 20, top: 7, right: 20),
                              shape: TextFormFieldShape.RoundedBorder21,
                              padding: TextFormFieldPadding.PaddingAll9,
                              fontStyle: TextFormFieldFontStyle.OpenSans14,
                              textInputAction: TextInputAction.done),
                          Padding(
                              padding: getPadding(top: 30),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.pinkA10019)),
                          Padding(
                              padding: getPadding(left: 23, top: 29, right: 23),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 2),
                                        child: Text("msg_thank_you_very".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtOpenSans14Gray800)),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgFavoriteGray800,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 23, top: 9),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgAvatar44x44,
                                        height: getSize(44),
                                        width: getSize(44),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(22))),
                                    Padding(
                                        padding: getPadding(left: 20),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_thanawan_chadee".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansRomanSemiBold16Gray800),
                                              Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text(
                                                      "lbl_25_may_12_09".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOpenSans12))
                                            ]))
                                  ]))),
                          Padding(
                              padding: getPadding(top: 29),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.pinkA10019)),
                          Padding(
                              padding: getPadding(top: 29),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.pinkA10019))
                        ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Volume:
        return "/";
      case BottomBarEnum.Sort:
        return "/";
      case BottomBarEnum.Vuesaxlinearaddpinka100:
        return "/";
      case BottomBarEnum.Car:
        return "/";
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the pastBookingDetailsOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the pastBookingDetailsOneScreen.
  onTapReviewdetails() {
    Get.toNamed(
      AppRoutes.pastBookingDetailsOneScreen,
    );
  }
}
