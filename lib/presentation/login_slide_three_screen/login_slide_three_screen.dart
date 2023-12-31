import 'controller/login_slide_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class LoginSlideThreeScreen extends GetWidget<LoginSlideThreeController> {
  const LoginSlideThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.pinkA100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 69),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                              height: getVerticalSize(404),
                              width: getHorizontalSize(327),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            padding: getPadding(
                                                right: 10, bottom: 31),
                                            child: IntrinsicWidth(
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                  Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgGroup,
                                                        height: getSize(229),
                                                        width: getSize(229)),
                                                    // CustomImageView(
                                                    //     svgPath: ImageConstant
                                                    //         .imgGroupLightBlue800,
                                                    //     height: getVerticalSize(
                                                    //         229),
                                                    //     width:
                                                    //         getHorizontalSize(
                                                    //             223),
                                                    //     margin: getMargin(
                                                    //         left: 188))
                                                  ]),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 20,
                                                              right: 3),
                                                          child: Text(
                                                              "lbl_story_for_kids"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtOpenSansRomanBold34))),
                                                  Row(children: [
                                                    Expanded(
                                                        child: SizedBox(
                                                            width:
                                                                getHorizontalSize(
                                                                    311),
                                                            child: Text(
                                                                "msg_we_have_an_author_s"
                                                                    .tr,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtOpenSansRomanRegular17))),
                                                    Expanded(
                                                        child: Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    311),
                                                            margin: getMargin(
                                                                left: 104),
                                                            child: Text(
                                                                "msg_our_sounds_will"
                                                                    .tr,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtOpenSansRomanRegular17)))
                                                  ])
                                                ])))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: SizedBox(
                                            width: getHorizontalSize(264),
                                            child: Text(
                                                "msg_famous_fairy_tales".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtOpenSansRomanRegular17)))
                                  ]))),
                      CustomImageView(
                          svgPath: ImageConstant.imgPaginator,
                          height: getVerticalSize(43),
                          width: getHorizontalSize(311),
                          margin: getMargin(top: 30)),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_start".tr,
                          margin: getMargin(
                              left: 32, top: 24, right: 32, bottom: 5),
                          variant: ButtonVariant.FillBluegray90001,
                          fontStyle: ButtonFontStyle.OpenSansItalicLight17,
                          onTap: () {
                            onTapStart();
                          })
                    ]))));
  }

  /// Navigates to the packDetailContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the packDetailContainerScreen.
  onTapStart() {
    Get.toNamed(
      AppRoutes.packDetailContainerScreen,
    );
  }
}
