import 'controller/login_slide_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class LoginSlideTwoScreen extends GetWidget<LoginSlideTwoController> {
  const LoginSlideTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.pinkA100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 67),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(406),
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        padding: getPadding(bottom: 33),
                                        child: IntrinsicWidth(
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 78),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroup,
                                                                height: getSize(
                                                                    229),
                                                                width: getSize(
                                                                    229)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroupLightBlue800,
                                                                height:
                                                                    getVerticalSize(
                                                                        229),
                                                                width:
                                                                    getHorizontalSize(
                                                                        223))
                                                          ]))),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 27, bottom: 29),
                                                  child: Row(children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 41,
                                                            top: 22,
                                                            bottom: 22),
                                                        child: Text(
                                                            "msg_exclusive_sounds"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtOpenSansRomanBold34)),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                190),
                                                        margin: getMargin(
                                                            left: 164),
                                                        child: Text(
                                                            "msg_relax_sleep_sounds"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtOpenSansRomanBold34)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 163,
                                                            top: 22,
                                                            bottom: 22),
                                                        child: Text(
                                                            "lbl_story_for_kids"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtOpenSansRomanBold34))
                                                  ]))
                                            ])))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: SizedBox(
                                        width: getHorizontalSize(260),
                                        child: Text("msg_our_sounds_will".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtOpenSansRomanRegular17)))
                              ])),
                      CustomImageView(
                          svgPath: ImageConstant.imgPaginator,
                          height: getVerticalSize(43),
                          width: getHorizontalSize(311),
                          margin: getMargin(top: 30)),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_next".tr,
                          margin: getMargin(
                              left: 32, top: 24, right: 32, bottom: 5),
                          variant: ButtonVariant.FillBluegray90001,
                          fontStyle: ButtonFontStyle.OpenSansItalicLight17,
                          onTap: () {
                            onTapNext();
                          })
                    ]))));
  }

  /// Navigates to the loginSlideThreeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the loginSlideThreeScreen.
  onTapNext() {
    Get.toNamed(
      AppRoutes.loginSlideThreeScreen,
    );
  }
}
