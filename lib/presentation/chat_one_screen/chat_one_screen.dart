import 'controller/chat_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class ChatOneScreen extends GetWidget<ChatOneController> {
  const ChatOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 11, right: 20, bottom: 11),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          text: "msg_rn_hugo_saavedra".tr,
                          margin: getMargin(right: 94),
                          shape: ButtonShape.Square,
                          fontStyle: ButtonFontStyle.OpenSansRomanBold16,
                          prefixWidget: Container(
                              margin: getMargin(right: 30),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray800),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft)),
                          onTap: () {
                            onTapRnhugosaavedra();
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 5),
                              child: Text("msg_last_visit_21_37".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSansRomanSemiBold12Gray600))),
                      Container(
                          margin: getMargin(top: 38),
                          padding: getPadding(
                              left: 19, top: 10, right: 19, bottom: 10),
                          decoration: AppDecoration.fillPinkA10019.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("msg_hey_how_do_you".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSansRomanSemiBold14)),
                                Padding(
                                    padding: getPadding(top: 7, right: 1),
                                    child: Text("msg_aug_19_2022_7_40pm".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSansRomanSemiBold9))
                              ])),
                      Container(
                          margin: getMargin(top: 10, right: 60),
                          padding: getPadding(
                              left: 19, top: 10, right: 19, bottom: 10),
                          decoration: AppDecoration.fillPinkA10019.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1, right: 1),
                                    child: Text("msg_receive_daily_content".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSansRomanSemiBold14)),
                                Padding(
                                    padding: getPadding(top: 8, right: 1),
                                    child: Text("msg_aug_19_2022_7_40pm".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSansRomanSemiBold9))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: getMargin(top: 10),
                              padding: getPadding(
                                  left: 19, top: 10, right: 19, bottom: 10),
                              decoration: AppDecoration.brand.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2, right: 1),
                                        child: Text("msg_i_am_alright_thank".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanSemiBold14WhiteA700)),
                                    Padding(
                                        padding: getPadding(top: 7, right: 1),
                                        child: Text("msg_aug_19_2022_7_40pm".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanSemiBold9WhiteA700))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: getMargin(top: 10),
                              padding: getPadding(
                                  left: 19, top: 10, right: 19, bottom: 10),
                              decoration: AppDecoration.brand.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("msg_when_are_you_free".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanSemiBold14WhiteA700)),
                                    Padding(
                                        padding: getPadding(top: 7, right: 1),
                                        child: Text("msg_aug_19_2022_7_40pm".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanSemiBold9WhiteA700))
                                  ]))),
                      Container(
                          margin: getMargin(top: 10, bottom: 5),
                          padding: getPadding(
                              left: 19, top: 10, right: 19, bottom: 10),
                          decoration: AppDecoration.fillPinkA10019.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getHorizontalSize(193),
                                    margin: getMargin(top: 1),
                                    child: Text("msg_i_have_time_for".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSansRomanSemiBold14)),
                                Padding(
                                    padding: getPadding(top: 6, right: 1),
                                    child: Text("msg_aug_19_2022_7_40pm".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSansRomanSemiBold9))
                              ]))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 35, right: 35, bottom: 33),
                decoration: AppDecoration.fillPinkA10019
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          decoration: AppDecoration.outlineBluegray1001
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgUpload,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 2, bottom: 2)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMicrophone,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin:
                                        getMargin(left: 10, top: 2, bottom: 2)),
                                Padding(
                                    padding:
                                        getPadding(left: 15, top: 5, bottom: 1),
                                    child: Text("lbl_type_message".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOpenSans12)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLocationPinkA100,
                                    height: getSize(24),
                                    width: getSize(24))
                              ]))
                    ]))));
  }

  /// Navigates to the chatScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chatScreen.
  onTapRnhugosaavedra() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }
}
