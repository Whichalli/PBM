<<<<<<< HEAD
import 'controller/services_controller.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/app_bar/custom_app_bar.dart';import 'package:pbm_care/widgets/custom_button.dart';import 'package:pbm_care/widgets/custom_drop_down.dart';import 'package:pbm_care/widgets/custom_icon_button.dart';class ServicesScreen extends GetWidget<ServicesController> {const ServicesScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(72), leadingWidth: 36, leading: CustomIconButton(height: 30, width: 30, margin: getMargin(left: 6, top: 13, bottom: 13), variant: IconButtonVariant.FillWhiteA700, shape: IconButtonShape.RoundedBorder10, padding: IconButtonPadding.PaddingAll6, onTap: () {onTapBtnArrowleft();}, child: CustomImageView(svgPath: ImageConstant.imgArrowleftBlueGray500)), title: Padding(padding: getPadding(left: 19), child: Text("lbl_our_services".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikMedium18))), body: SizedBox(width: size.width, child: SingleChildScrollView(child: Padding(padding: getPadding(left: 18, right: 23, bottom: 5), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 4), child: Text("msg_child_care_babysitting2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Black900)), Padding(padding: getPadding(left: 4, top: 18, right: 42), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 48, width: 48, margin: getMargin(bottom: 53), variant: IconButtonVariant.Brand, child: CustomImageView(svgPath: ImageConstant.imgFavorite)), Expanded(child: Padding(padding: getPadding(left: 20), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_newborn_care".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray800), Container(width: getHorizontalSize(259), margin: getMargin(top: 4), child: Text("msg_our_infant_care".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtOpenSans12))])))])), Padding(padding: getPadding(left: 4, top: 19, right: 42), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 48, width: 48, margin: getMargin(bottom: 53), variant: IconButtonVariant.Brand, child: CustomImageView(svgPath: ImageConstant.imgFavorite)), Expanded(child: Padding(padding: getPadding(left: 20, top: 1), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_baby_sleep_training".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray800), Container(width: getHorizontalSize(259), margin: getMargin(top: 3), child: Text("msg_our_infant_care".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtOpenSans12))])))])), CustomButton(height: getVerticalSize(48), width: getHorizontalSize(143), text: "msg_pricing_calculator".tr, margin: getMargin(left: 108, top: 17), shape: ButtonShape.RoundedBorder8, padding: ButtonPadding.PaddingT14_1, fontStyle: ButtonFontStyle.RalewayBold16, onTap: () {onTapPricing();}), Padding(padding: getPadding(left: 17, top: 21), child: Text("lbl_toolkit2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikBold18)), Padding(padding: getPadding(left: 18, top: 34, right: 31), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomButton(height: getVerticalSize(48), text: "lbl_white_noise".tr, margin: getMargin(right: 19), shape: ButtonShape.RoundedBorder8, fontStyle: ButtonFontStyle.RalewayBold16, onTap: () {onTapWhitenoise();})), Expanded(child: CustomButton(height: getVerticalSize(48), text: "lbl_routine".tr, margin: getMargin(left: 19), shape: ButtonShape.RoundedBorder8, fontStyle: ButtonFontStyle.RalewayBold16, onTap: () {onTapRoutine();}))])), Padding(padding: getPadding(left: 19, top: 28), child: Text("msg_pediatrician_consultation2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold12Gray600)), Padding(padding: getPadding(left: 19, top: 20), child: Text("msg_would_you_like_to".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14PinkA100)), Padding(padding: getPadding(left: 19, top: 17), child: Text("msg_choose_pediatrician".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800)), CustomDropDown(focusNode: FocusNode(), autofocus: true, icon: Container(margin: getMargin(left: 30, right: 15), child: CustomImageView(svgPath: ImageConstant.imgArrowdown)), hintText: "msg_rn_kimberly_tailor".tr, margin: getMargin(left: 19, top: 9, right: 20), alignment: Alignment.center, items: controller.servicesModelObj.value.dropdownItemList.value, onChanged: (value) {controller.onSelected(value);}), SizedBox(width: double.maxFinite, child: Container(margin: getMargin(top: 11), padding: getPadding(left: 19, top: 10, right: 19, bottom: 10), decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomButton(height: getVerticalSize(53), text: "lbl_back_to_home".tr, onTap: () {onTapBacktohome();})])))])))))); } 
/// Navigates to the pricingScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the pricingScreen.
onTapPricing() { Get.toNamed(AppRoutes.pricingScreen, ); } 
/// Navigates to the launchScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the launchScreen.
onTapWhitenoise() { Get.toNamed(AppRoutes.launchScreen, ); } 
/// Navigates to the homeEmptyScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the homeEmptyScreen.
onTapRoutine() { Get.toNamed(AppRoutes.homeEmptyScreen, ); } 
/// Navigates to the homeOnboardingContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the homeOnboardingContainerScreen.
onTapBacktohome() { Get.offNamed(AppRoutes.homeOnboardingContainerScreen,); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] library to 
/// navigate to the previous screen in the navigation stack.
onTapBtnArrowleft() { Get.back(); } 
 }
=======
import 'dart:developer';

import 'controller/services_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_drop_down.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';

class ServicesScreen extends GetWidget<ServicesController> {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(72),
            leadingWidth: 36,
            leading: CustomIconButton(
                height: 30,
                width: 30,
                margin: getMargin(left: 6, top: 13, bottom: 13),
                variant: IconButtonVariant.FillWhiteA700,
                shape: IconButtonShape.RoundedBorder10,
                padding: IconButtonPadding.PaddingAll6,
                onTap: () {
                  onTapBtnArrowleft();
                },
                child: CustomImageView(
                    svgPath: ImageConstant.imgArrowleftBlueGray500)),
            title: Padding(
                padding: getPadding(left: 19),
                child: Text("lbl_our_services".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRubikMedium18))),
        body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                    padding: getPadding(left: 18, right: 23, bottom: 5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Column(
                          //   children: controller.services
                          //       .map((e) => Column(
                          //             children: [
                          //               Row(
                          //                 mainAxisAlignment:
                          //                     MainAxisAlignment.start,
                          //                 crossAxisAlignment:
                          //                     CrossAxisAlignment.center,
                          //                 children: [
                          //                   CustomIconButton(
                          //                       height: 48,
                          //                       width: 48,
                          //                       // margin: getMargin(bottom: 53),
                          //                       variant:
                          //                           IconButtonVariant.Brand,
                          //                       child: CustomImageView(
                          //                           svgPath: ImageConstant
                          //                               .imgFavorite)),
                          //                   const SizedBox(
                          //                     width: 12,
                          //                   ),
                          //                   Text(
                          //                     e['heading'],
                          //                     style: const TextStyle(
                          //                         fontSize: 18,
                          //                         color: Colors.black),
                          //                   )
                          //                 ],
                          //               )
                          //             ],
                          //           ))
                          //       .toList(),
                          // ),
                          GetBuilder<ServicesController>(
                            builder: (_) {
                              return ExpansionPanelList(
                                elevation: 0,
                                expansionCallback: (panelIndex, isExpanded) {
                                  log('message = ');
                                  controller.services[panelIndex]
                                      ['isExpanded'] = !isExpanded;
                                  _.update();
                                },
                                expandIconColor: Colors.transparent,
                                expandedHeaderPadding: const EdgeInsets.all(0),
                                dividerColor: Colors.transparent,
                                children: controller.services
                                    .map((e) => ExpansionPanel(
                                        canTapOnHeader: true,
                                        isExpanded: e['isExpanded'],
                                        headerBuilder: (context, isExpanded) {
                                          return Padding(
                                            padding: getPadding(
                                                bottom: isExpanded ? 0 : 16),
                                            child: Row(
                                              children: [
                                                CustomIconButton(
                                                    height: 48,
                                                    width: 48,
                                                    variant:
                                                        IconButtonVariant.Brand,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFavorite)),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                Text(
                                                  e['heading'],
                                                  style: const TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                        body: Padding(
                                          padding: getPadding(left: 60),
                                          child: Text(
                                            e['subHeading'],
                                            style: const TextStyle(
                                                letterSpacing: .7,
                                                fontFamily: 'poppins',
                                                color: Colors.black87,
                                                fontSize: 12),
                                          ),
                                        )))
                                    .toList(),
                              );
                            },
                          ),
                          // Padding(
                          //     padding: getPadding(left: 4, top: 19, right: 42),
                          //     child: Row(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         children: [
                          //           CustomIconButton(
                          //               height: 48,
                          //               width: 48,
                          //               margin: getMargin(bottom: 53),
                          //               variant: IconButtonVariant.Brand,
                          //               child: CustomImageView(
                          //                   svgPath:
                          //                       ImageConstant.imgFavorite)),
                          //           Expanded(
                          //               child: Padding(
                          //                   padding:
                          //                       getPadding(left: 20, top: 1),
                          //                   child: Column(
                          //                       crossAxisAlignment:
                          //                           CrossAxisAlignment.start,
                          //                       mainAxisAlignment:
                          //                           MainAxisAlignment.start,
                          //                       children: [
                          //                         Text(
                          //                             "msg_baby_sleep_training"
                          //                                 .tr,
                          //                             overflow:
                          //                                 TextOverflow.ellipsis,
                          //                             textAlign: TextAlign.left,
                          //                             style: AppStyle
                          //                                 .txtOpenSansRomanSemiBold12Gray800),
                          //                         Container(
                          //                             width: getHorizontalSize(
                          //                                 259),
                          //                             margin: getMargin(top: 3),
                          //                             child: Text(
                          //                                 "msg_our_infant_care"
                          //                                     .tr,
                          //                                 maxLines: null,
                          //                                 textAlign:
                          //                                     TextAlign.left,
                          //                                 style: AppStyle
                          //                                     .txtOpenSans12))
                          //                       ])))
                          //         ])),
                          Center(
                            child: CustomButton(
                                height: getVerticalSize(50),
                                // width: getHorizontalSize(150),
                                text: "msg_pricing_calculator".tr,
                                margin: getMargin(
                                  top: 8,
                                  // left: 8,
                                  // right: 8,
                                ),
                                shape: ButtonShape.RoundedBorder16,
                                padding: ButtonPadding.PaddingT14_1,
                                fontStyle: ButtonFontStyle.RalewayBold16,
                                onTap: () {
                                  onTapPricing();
                                }),
                          ),
                          Padding(
                              padding: getPadding(left: 0, top: 16),
                              child: Text("lbl_toolkit2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRubikBold18)),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: CustomButton(
                                            height: getVerticalSize(48),
                                            text: "lbl_white_noise".tr,
                                            margin: getMargin(right: 8),
                                            shape: ButtonShape.RoundedBorder16,
                                            fontStyle:
                                                ButtonFontStyle.RalewayBold16,
                                            onTap: () {
                                              onTapWhitenoise();
                                            })),
                                    Expanded(
                                        child: CustomButton(
                                            height: getVerticalSize(48),
                                            text: "lbl_routine".tr,
                                            margin: getMargin(left: 8),
                                            shape: ButtonShape.RoundedBorder16,
                                            fontStyle:
                                                ButtonFontStyle.RalewayBold16,
                                            onTap: () {
                                              onTapRoutine();
                                            }))
                                  ])),
                          Padding(
                              padding: getPadding(left: 19, top: 28),
                              child: Text("msg_pediatrician_consultation2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSansRomanSemiBold12Gray600
                                      .copyWith(fontSize: 14))),
                          Padding(
                              padding: getPadding(left: 19, top: 8),
                              child: Text("msg_would_you_like_to".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtOpenSansRomanSemiBold14PinkA100)),
                          CustomButton(
                            margin: getMargin(top: 8),
                            shape: ButtonShape.RoundedBorder16,
                            variant: ButtonVariant.OutlinePinkA100,
                            height: 50,
                            padding: ButtonPadding.none,
                            alignment: Alignment.center,
                            fontStyle: ButtonFontStyle.RalewayBold16Black,
                            backgroundColor: ColorConstant.pinkA10019,
                            text: "msg_choose_pediatrician".tr,
                            onTap: () {
                              controller.onTapChoosePediatrician();
                            },
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                        ])))));
  }

  /// Navigates to the pricingScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the pricingScreen.
  onTapPricing() {
    Get.toNamed(
      AppRoutes.pricingScreen,
    );
  }

  /// Navigates to the launchScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the launchScreen.
  onTapWhitenoise() {
    Get.toNamed(
      AppRoutes.packDetailComposerScreen,
    );
  }

  /// Navigates to the homeEmptyScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeEmptyScreen.
  onTapRoutine() {
    Get.toNamed(
      AppRoutes.selectBabyScreen,
    );
  }

  /// Navigates to the homeOnboardingContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeOnboardingContainerScreen.
  onTapBacktohome() {
    Get.offNamed(
      AppRoutes.homeOnboardingContainerScreen,
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapBtnArrowleft() {
    Get.back();
  }
}
>>>>>>> dev
