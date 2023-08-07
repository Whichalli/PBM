import 'controller/calling_nurse_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';

class CallingNurseScreen extends GetWidget<CallingNurseController> {
  const CallingNurseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.pinkA100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 49, top: 83, right: 49),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_calling".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOpenSansRomanSemiBold15WhiteA700),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Text("msg_rn_hugo_saavedra".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOpenSansRomanBold24WhiteA700)),
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(left: 1, top: 76),
                              padding: getPadding(all: 21),
                              decoration: AppDecoration.outlineWhiteA70061
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder138),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: double.maxFinite,
                                        child: Container(
                                            padding: getPadding(all: 24),
                                            decoration: AppDecoration
                                                .outlineWhiteA70061
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder117),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: ColorConstant
                                                          .whiteA70068,
                                                      shape: RoundedRectangleBorder(
                                                          side: BorderSide(
                                                              color: ColorConstant
                                                                  .whiteA70068,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1)),
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder93),
                                                      child: Container(
                                                          height: getSize(186),
                                                          width: getSize(186),
                                                          padding: getPadding(
                                                              left: 4,
                                                              top: 14,
                                                              right: 4,
                                                              bottom: 14),
                                                          decoration: AppDecoration
                                                              .outlineWhiteA70068
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .circleBorder93),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgAvatar157x177,
                                                                height:
                                                                    getVerticalSize(
                                                                        157),
                                                                width:
                                                                    getHorizontalSize(
                                                                        177),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ])))
                                                ])))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 80, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomIconButton(
                                    height: 64,
                                    width: 64,
                                    variant: IconButtonVariant.FillWhiteA700,
                                    shape: IconButtonShape.CircleBorder32,
                                    padding: IconButtonPadding.PaddingAll20,
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgCallBlueGray90004)),
                                CustomIconButton(
                                    height: 64,
                                    width: 64,
                                    margin: getMargin(left: 30),
                                    variant: IconButtonVariant.FillWhiteA700,
                                    shape: IconButtonShape.CircleBorder32,
                                    padding: IconButtonPadding.PaddingAll20,
                                    onTap: () {
                                      onTapBtnClose();
                                    },
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCloseRed500))
                              ]))
                    ]))));
  }

  /// Navigates to the chatOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the chatOneScreen.
  onTapBtnClose() {
    Get.toNamed(
      AppRoutes.chatOneScreen,
    );
  }
}
