<<<<<<< HEAD
import '../favourites_with_selection_screen/widgets/gridframe811_item_widget.dart';import 'controller/favourites_with_selection_controller.dart';import 'models/gridframe811_item_model.dart';import 'package:flutter/material.dart';import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/widgets/custom_button.dart';import 'package:pbm_care/widgets/custom_text_form_field.dart';class FavouritesWithSelectionScreen extends GetWidget<FavouritesWithSelectionController> {const FavouritesWithSelectionScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.whiteA700, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Expanded(child: SingleChildScrollView(padding: getPadding(top: 4), child: Padding(padding: getPadding(left: 9, right: 14, bottom: 46), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_favourites".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeExtraBold24), Container(width: getHorizontalSize(319), margin: getMargin(top: 8, right: 32), child: Text("msg_whats_your_favourite".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtManropeMedium16)), Padding(padding: getPadding(top: 17, right: 9), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(89), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(20), crossAxisSpacing: getHorizontalSize(20)), physics: NeverScrollableScrollPhysics(), itemCount: controller.favouritesWithSelectionModelObj.value.gridframe811ItemList.value.length, itemBuilder: (context, index) {Gridframe811ItemModel model = controller.favouritesWithSelectionModelObj.value.gridframe811ItemList.value[index]; return Gridframe811ItemWidget(model);}))), Padding(padding: getPadding(left: 9, top: 40), child: Text("lbl_thank_you".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeExtraBold24)), Container(width: getHorizontalSize(283), margin: getMargin(left: 9, top: 6, right: 60), child: Text("msg_thanks_for_taking".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtManropeMedium16)), Container(width: getHorizontalSize(299), margin: getMargin(left: 9, top: 11, right: 43), child: Text("msg_if_you_have_anymore".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtManropeMedium16)), CustomTextFormField(focusNode: FocusNode(), autofocus: true, controller: controller.textfieldController, hintText: "msg_penny_for_your_thoughts".tr, margin: getMargin(left: 9, top: 21), variant: TextFormFieldVariant.OutlineGray10001, shape: TextFormFieldShape.RoundedBorder12, padding: TextFormFieldPadding.PaddingT17, fontStyle: TextFormFieldFontStyle.ManropeMedium15, textInputAction: TextInputAction.done, maxLines: 4), CustomButton(height: getVerticalSize(44), text: "lbl_submit".tr, margin: getMargin(left: 7, top: 67, right: 2), shape: ButtonShape.CircleBorder13, padding: ButtonPadding.PaddingAll9, fontStyle: ButtonFontStyle.ManropeBold16, onTap: () {onTapSubmit();})]))))])))); } 
/// Navigates to the callingNurseScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the callingNurseScreen.
onTapSubmit() { Get.toNamed(AppRoutes.callingNurseScreen, ); } 
 }
=======
import 'dart:developer';

import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';

import '../favourites_with_selection_screen/widgets/gridframe811_item_widget.dart';
import 'controller/favourites_with_selection_controller.dart';
import 'models/gridframe811_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

class FavouritesWithSelectionScreen
    extends GetWidget<FavouritesWithSelectionController> {
  const FavouritesWithSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: 40,
        ),
        body: SizedBox(
            width: double.maxFinite,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Expanded(
                  child: SingleChildScrollView(
                      padding: getPadding(top: 4),
                      child: Padding(
                          padding: getPadding(left: 9, right: 14, bottom: 46),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_favourites".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtManropeExtraBold24),
                                Container(
                                    width: getHorizontalSize(319),
                                    margin: getMargin(top: 8, right: 32),
                                    child: Text("msg_whats_your_favourite".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeMedium16)),
                                Padding(
                                    padding: getPadding(top: 17, right: 9),
                                    child: Obx(() => GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent:
                                                    getVerticalSize(89),
                                                crossAxisCount: 2,
                                                mainAxisSpacing:
                                                    getHorizontalSize(20),
                                                crossAxisSpacing:
                                                    getHorizontalSize(20)),
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: controller
                                            .favouritesWithSelectionModelObj
                                            .value
                                            .gridframe811ItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          Gridframe811ItemModel model = controller
                                              .favouritesWithSelectionModelObj
                                              .value
                                              .gridframe811ItemList[index];
                                          return InkWell(
                                            onTap: () {
                                              model.active.value =
                                                  !model.active.value;
                                              controller
                                                      .favouritesWithSelectionModelObj
                                                      .value
                                                      .favors[index]['value'] =
                                                  model.active.value;
                                            },
                                            child:
                                                Gridframe811ItemWidget(model),
                                          );
                                        }))),
                                Padding(
                                    padding: getPadding(left: 9, top: 40),
                                    child: Text("lbl_thank_you".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeExtraBold24)),
                                Container(
                                    width: getHorizontalSize(283),
                                    margin:
                                        getMargin(left: 9, top: 6, right: 60),
                                    child: Text("msg_thanks_for_taking".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeMedium16)),
                                Container(
                                    width: getHorizontalSize(299),
                                    margin:
                                        getMargin(left: 9, top: 11, right: 43),
                                    child: Text("msg_if_you_have_anymore".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeMedium16)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: false,
                                    controller: controller.textfieldController,
                                    hintText: "msg_penny_for_your_thoughts".tr,
                                    margin: getMargin(left: 9, top: 21),
                                    variant:
                                        TextFormFieldVariant.OutlineGray10001,
                                    shape: TextFormFieldShape.RoundedBorder12,
                                    padding: TextFormFieldPadding.PaddingT17,
                                    fontStyle:
                                        TextFormFieldFontStyle.ManropeMedium15,
                                    textInputAction: TextInputAction.done,
                                    maxLines: 4),
                                Obx(() => CustomButton(
                                      height: getVerticalSize(50),

                                      text: controller.loading.value
                                          ? null
                                          : "lbl_submit".tr,
                                      icon: controller.loading.value
                                          ? const SizedBox(
                                              width: 20,
                                              height: 20,
                                              child: CircularProgressIndicator(
                                                strokeWidth: 2,
                                                color: Colors.white,
                                              ),
                                            )
                                          : null,
                                      onTap: controller.loading.value
                                          ? null
                                          : () async {
                                              controller.loading.value = true;
                                              await controller.onTapSubmit();
                                              controller.loading.value = false;
                                            },
                                      margin:
                                          getMargin(left: 7, top: 67, right: 2),
                                      // shape: ButtonShape.CircleBorder13,
                                      padding: ButtonPadding.PaddingAll9,
                                      fontStyle: ButtonFontStyle.ManropeBold16,
                                    ))
                              ]))))
            ])));
  }

  /// Navigates to the callingNurseScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the callingNurseScreen.
}
>>>>>>> dev
