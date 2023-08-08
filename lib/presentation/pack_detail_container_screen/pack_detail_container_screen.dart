import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';
//import 'package:pbm_care/widgets/custom_bottom_bar.dart';
import '../pack_detail_container1_page/pack_detail_container1_page.dart'; // Import the required page/widget
import 'package:pbm_care/widgets/custom_button.dart';
=======
import 'package:pbm_app/core/app_export.dart';
//import 'package:pbm_app/widgets/custom_bottom_bar.dart';
import '../pack_detail_container1_page/pack_detail_container1_page.dart'; // Import the required page/widget
import 'package:pbm_app/widgets/custom_button.dart';
>>>>>>> dev
import '../pack_detail_container1_page/widgets/listsongname_item_widget.dart';
import '../pack_detail_container1_page/models/listsongname_item_model.dart';
import '../pack_detail_container1_page/controller/pack_detail_container1_controller.dart';
import '../pack_detail_container1_page/models/pack_detail_container1_model.dart';

// ignore_for_file: must_be_immutable
class PackDetailContainerScreen extends StatelessWidget {
<<<<<<< HEAD
 PackDetailContainerScreen({Key? key}) : super(key: key);

 PackDetailContainer1Controller controller =
 Get.put(PackDetailContainer1Controller(PackDetailContainer1Model().obs));

 @override
 Widget build(BuildContext context) {
  return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.pinkA100,
          body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.brand,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   SizedBox(
                       height: getVerticalSize(747),
                       width: double.maxFinite,
                       child: Stack(
                           alignment: Alignment.bottomCenter,
                           children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    height: getVerticalSize(565),
                                    width: double.maxFinite,
                                    decoration: AppDecoration.brand,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                         CustomImageView(
                                             imagePath: ImageConstant
                                                 .imgAsset24x1565x375,
                                             height: getVerticalSize(565),
                                             width: getHorizontalSize(375),
                                             alignment: Alignment.center),
                                         Align(
                                             alignment: Alignment.center,
                                             child: SizedBox(
                                                 height:
                                                 getVerticalSize(565),
                                                 width: double.maxFinite,
                                                 child: Stack(
                                                     alignment:
                                                     Alignment.center,
                                                     children: [
                                                      CustomImageView(
                                                          imagePath:
                                                          ImageConstant
                                                              .imgImage3565x375,
                                                          height:
                                                          getVerticalSize(
                                                              565),
                                                          width:
                                                          getHorizontalSize(
                                                              375),
                                                          alignment:
                                                          Alignment
                                                              .center),
                                                      Align(
                                                          alignment:
                                                          Alignment
                                                              .center,
                                                          child:
                                                          Container(
                                                              decoration:
                                                              AppDecoration
                                                                  .gradientBlack90000Black900c4,
                                                              child: Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize.min,
                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                  children: [
                                                                   SizedBox(
                                                                       width: double.maxFinite,
                                                                       child: Container(
                                                                           width: double.maxFinite,
                                                                           padding: getPadding(left: 30, top: 7, right: 30, bottom: 7),
                                                                           decoration: AppDecoration.brand,
                                                                           child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                            Padding(padding: getPadding(top: 5), child: Text("lbl_sleep".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanRegular17WhiteA700))
                                                                           ]))),
                                                                   Container(
                                                                       margin: getMargin(left: 36, top: 33, right: 23, bottom: 380),
                                                                       padding: getPadding(left: 16, right: 16, bottom: 16),
                                                                       decoration: AppDecoration.brand.copyWith(borderRadius: BorderRadiusStyle.roundedBorder23),
                                                                       child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                        Padding(
                                                                            padding: getPadding(bottom: 1),
                                                                            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                             CustomImageView(svgPath: ImageConstant.imgIcons8sleeping, height: getSize(24), width: getSize(24)),
                                                                             Text("lbl_mood".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanRegular13),
                                                                             Padding(padding: getPadding(top: 2), child: Text("lbl_lighthearted".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanBold22))
                                                                            ])),
                                                                        Padding(
                                                                            padding: getPadding(left: 16, bottom: 1),
                                                                            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                             CustomImageView(svgPath: ImageConstant.imgIcons8sleep, height: getSize(24), width: getSize(24)),
                                                                             Text("lbl_dreams".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanRegular13),
                                                                             Padding(padding: getPadding(top: 1), child: Text("lbl_daydreams".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanBold22))
                                                                            ]))
                                                                       ]))
                                                                  ])))
                                                     ])))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    margin: getMargin(left: 5),
                                    padding:
                                    getPadding(left: 11, right: 11),
                                    decoration: AppDecoration.brand
                                        .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .customBorderTL24),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                         Container(
                                             height: getVerticalSize(59),
                                             width: getHorizontalSize(214),
                                             margin: getMargin(left: 5),
                                             child: Stack(
                                                 alignment:
                                                 Alignment.bottomLeft,
                                                 children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .topCenter,
                                                      child: Text(
                                                          "lbl_guitar_camp"
                                                              .tr,
                                                          overflow:
                                                          TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign
                                                              .left,
                                                          style: AppStyle
                                                              .txtOpenSansRomanBold34)),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomLeft,
                                                      child: Row(
                                                          children: [
                                                           Padding(
                                                               padding: getPadding(
                                                                   top:
                                                                   1),
                                                               child: Text(
                                                                   "lbl_7_songs"
                                                                       .tr,
                                                                   overflow: TextOverflow
                                                                       .ellipsis,
                                                                   textAlign: TextAlign
                                                                       .left,
                                                                   style:
                                                                   AppStyle.txtOpenSansRomanRegular15)),
                                                           Padding(
                                                               padding: getPadding(
                                                                   left:
                                                                   4,
                                                                   bottom:
                                                                   1),
                                                               child: Text(
                                                                   "lbl"
                                                                       .tr,
                                                                   overflow: TextOverflow
                                                                       .ellipsis,
                                                                   textAlign: TextAlign
                                                                       .left,
                                                                   style:
                                                                   AppStyle.txtOpenSansRomanRegular15)),
                                                           Padding(
                                                               padding: getPadding(
                                                                   left:
                                                                   4,
                                                                   bottom:
                                                                   1),
                                                               child: Text(
                                                                   "lbl_instrumental"
                                                                       .tr,
                                                                   overflow: TextOverflow
                                                                       .ellipsis,
                                                                   textAlign: TextAlign
                                                                       .left,
                                                                   style:
                                                                   AppStyle.txtOpenSansRomanRegular15))
                                                          ]))
                                                 ])),
                                         Padding(
                                             padding: getPadding(top: 24),
                                             child: Divider(
                                                 height:
                                                 getVerticalSize(1),
                                                 thickness:
                                                 getVerticalSize(1),
                                                 color: ColorConstant
                                                     .blueGray90001,
                                                 indent: getHorizontalSize(
                                                     5))),
                                         Padding(
                                             padding: getPadding(
                                                 left: 5, top: 24),
                                             child: Row(
                                                 mainAxisAlignment:
                                                 MainAxisAlignment
                                                     .center,
                                                 children: [
                                                  Expanded(
                                                      child: CustomButton(
                                                          height:
                                                          getVerticalSize(
                                                              38),
                                                          text: "lbl_play"
                                                              .tr,
                                                          margin:
                                                          getMargin(
                                                              right:
                                                              7),
                                                          shape: ButtonShape
                                                              .CircleBorder19,
                                                          padding:
                                                          ButtonPadding
                                                              .PaddingT7,
                                                          fontStyle:
                                                          ButtonFontStyle
                                                              .OpenSansItalicLight17WhiteA700,
                                                          prefixWidget: Container(
                                                              margin: getMargin(
                                                                  right:
                                                                  4),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                  ImageConstant.imgIcons8play)),
                                                          onTap: () {
                                                           onTapPlay();
                                                          })),
                                                  Expanded(
                                                      child: CustomButton(
                                                          height:
                                                          getVerticalSize(
                                                              38),
                                                          text:
                                                          "lbl_favorite"
                                                              .tr,
                                                          margin: getMargin(
                                                              left: 7),
                                                          variant:
                                                          ButtonVariant
                                                              .FillBluegray90001,
                                                          shape: ButtonShape
                                                              .CircleBorder19,
                                                          padding:
                                                          ButtonPadding
                                                              .PaddingT7,
                                                          fontStyle:
                                                          ButtonFontStyle
                                                              .OpenSansItalicLight17WhiteA700,
                                                          prefixWidget: Container(
                                                              margin: getMargin(
                                                                  right:
                                                                  4),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                  ImageConstant.imgIcons8starfilled))))
                                                 ])),
                                         Padding(
                                             padding: getPadding(top: 23),
                                             child: Divider(
                                                 height:
                                                 getVerticalSize(1),
                                                 thickness:
                                                 getVerticalSize(1),
                                                 color: ColorConstant
                                                     .blueGray90001,
                                                 indent: getHorizontalSize(
                                                     5))),
                                         Container(
                                             height: getVerticalSize(130),
                                             width: getHorizontalSize(338),
                                             margin: getMargin(
                                                 left: 4, top: 21),
                                             child: Stack(
                                                 alignment:
                                                 Alignment.topLeft,
                                                 children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: SizedBox(
                                                          width:
                                                          getHorizontalSize(
                                                              338),
                                                          child: Text(
                                                              "msg_lorem_ipsum_is_simply"
                                                                  .tr,
                                                              maxLines:
                                                              null,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtOpenSansRomanRegular17))),
                                                  Align(
                                                      alignment: Alignment
                                                          .topLeft,
                                                      child: Text(
                                                          "lbl_about_this_pack"
                                                              .tr,
                                                          overflow:
                                                          TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign
                                                              .left,
                                                          style: AppStyle
                                                              .txtOpenSansItalicLight17WhiteA700))
                                                 ])),
                                         Container(
                                             margin: getMargin(
                                                 left: 6,
                                                 right: 1,
                                                 bottom: 20),
                                             padding: getPadding(
                                                 top: 22, bottom: 22),
                                             decoration: AppDecoration
                                                 .outlineBlack90033
                                                 .copyWith(
                                                 borderRadius:
                                                 BorderRadiusStyle
                                                     .roundedBorder23),
                                             child: Column(
                                                 mainAxisSize:
                                                 MainAxisSize.min,
                                                 crossAxisAlignment:
                                                 CrossAxisAlignment
                                                     .start,
                                                 mainAxisAlignment:
                                                 MainAxisAlignment
                                                     .start,
                                                 children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16),
                                                      child: Text(
                                                          "lbl_list_of_songs"
                                                              .tr
                                                              .toUpperCase(),
                                                          overflow:
                                                          TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign
                                                              .left,
                                                          style: AppStyle
                                                              .txtOpenSansRomanRegular13Indigo5099)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 15,
                                                          bottom: 34),
                                                      child: Obx(() => ListView
                                                          .separated(
                                                          physics:
                                                          NeverScrollableScrollPhysics(),
                                                          shrinkWrap:
                                                          true,
                                                          separatorBuilder:
                                                              (context,
                                                              index) {
                                                           return SizedBox(
                                                               height:
                                                               getVerticalSize(12));
                                                          },
                                                          itemCount: controller
                                                              .packDetailContainer1ModelObj
                                                              .value
                                                              .listsongnameItemList
                                                              .value
                                                              .length,
                                                          itemBuilder:
                                                              (context,
                                                              index) {
                                                           ListsongnameItemModel model = controller
                                                               .packDetailContainer1ModelObj
                                                               .value
                                                               .listsongnameItemList
                                                               .value[index];
                                                           return ListsongnameItemWidget(
                                                               model);
                                                          })))
                                                 ]))
                                        ])))
                           ]))
                  ]))));
 }

 /// Navigates to the packDetailSwipeUpUnlockScreen when the action is triggered.

 /// When the action is triggered, this function uses the `Get` package to
 /// push the named route for the packDetailSwipeUpUnlockScreen.
 onTapPlay() {
  Get.toNamed(
   AppRoutes.packDetailSwipeUpUnlockScreen,
  );
 }
}
=======
  PackDetailContainerScreen({Key? key}) : super(key: key);

  PackDetailContainer1Controller controller =
      Get.put(PackDetailContainer1Controller(PackDetailContainer1Model().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.pinkA100,
        body: Container(
            width: double.maxFinite,
            decoration: AppDecoration.brand,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                  height: getVerticalSize(747),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            height: getVerticalSize(565),
                            width: double.maxFinite,
                            decoration: AppDecoration.brand,
                            child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgAsset24x1565x375,
                                      height: getVerticalSize(565),
                                      width: getHorizontalSize(375),
                                      alignment: Alignment.center),
                                  Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                          height: getVerticalSize(565),
                                          width: double.maxFinite,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImage3565x375,
                                                    height:
                                                        getVerticalSize(565),
                                                    width:
                                                        getHorizontalSize(375),
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        decoration: AppDecoration
                                                            .gradientBlack90000Black900c4,
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                  width: double
                                                                      .maxFinite,
                                                                  child:
                                                                      Container(
                                                                          width: double
                                                                              .maxFinite,
                                                                          padding: getPadding(
                                                                              left:
                                                                                  30,
                                                                              top:
                                                                                  7,
                                                                              right:
                                                                                  30,
                                                                              bottom:
                                                                                  7),
                                                                          decoration: AppDecoration
                                                                              .brand,
                                                                          child: Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                Padding(padding: getPadding(top: 5), child: Text("lbl_sleep".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanRegular17WhiteA700))
                                                                              ]))),
                                                              Container(
                                                                  margin: getMargin(
                                                                      left: 36,
                                                                      top: 33,
                                                                      right: 23,
                                                                      bottom:
                                                                          380),
                                                                  padding: getPadding(
                                                                      left: 16,
                                                                      right: 16,
                                                                      bottom:
                                                                          16),
                                                                  decoration: AppDecoration
                                                                      .brand
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder23),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(bottom: 1),
                                                                            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgIcons8sleeping, height: getSize(24), width: getSize(24)),
                                                                              Text("lbl_mood".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanRegular13),
                                                                              Padding(padding: getPadding(top: 2), child: Text("lbl_lighthearted".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanBold22))
                                                                            ])),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 16, bottom: 1),
                                                                            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgIcons8sleep, height: getSize(24), width: getSize(24)),
                                                                              Text("lbl_dreams".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanRegular13),
                                                                              Padding(padding: getPadding(top: 1), child: Text("lbl_daydreams".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanBold22))
                                                                            ]))
                                                                      ]))
                                                            ])))
                                              ])))
                                ]))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            margin: getMargin(left: 4),
                            padding: getPadding(left: 12, right: 12),
                            decoration: AppDecoration.brand.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL24),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      // height: 500,
                                      // width: getHorizontalSize(214),
                                      // margin: getMargin(left: 5),
                                      // padding: getPadding(top: 8),
                                      child: SingleChildScrollView(
                                    child: Column(
                                        // alignment:
                                        //     Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Text("lbl_guitar_camp".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSansRomanBold34)),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Row(children: [
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Text(
                                                        "lbl_7_songs".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOpenSansRomanRegular15)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 4, bottom: 1),
                                                    child: Text("lbl".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOpenSansRomanRegular15)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 4, bottom: 1),
                                                    child: Text(
                                                        "lbl_instrumental".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOpenSansRomanRegular15))
                                              ]))
                                        ]),
                                  )),
                                  Padding(
                                      padding: getPadding(top: 24),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.blueGray90001,
                                          indent: getHorizontalSize(5))),
                                  Padding(
                                      padding: getPadding(left: 5, top: 24),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                                child: CustomButton(
                                                    height: getVerticalSize(38),
                                                    text: "lbl_play".tr,
                                                    margin: getMargin(right: 7),
                                                    shape: ButtonShape
                                                        .CircleBorder19,
                                                    padding:
                                                        ButtonPadding.PaddingT7,
                                                    fontStyle: ButtonFontStyle
                                                        .OpenSansItalicLight17WhiteA700,
                                                    prefixWidget: Container(
                                                        margin:
                                                            getMargin(right: 4),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgIcons8play)),
                                                    onTap: () {
                                                      onTapPlay();
                                                    })),
                                            Expanded(
                                                child: CustomButton(
                                                    height: getVerticalSize(38),
                                                    text: "lbl_favorite".tr,
                                                    margin: getMargin(left: 7),
                                                    variant: ButtonVariant
                                                        .FillBluegray90001,
                                                    shape: ButtonShape
                                                        .CircleBorder19,
                                                    padding:
                                                        ButtonPadding.PaddingT7,
                                                    fontStyle: ButtonFontStyle
                                                        .OpenSansItalicLight17WhiteA700,
                                                    prefixWidget: Container(
                                                        margin:
                                                            getMargin(right: 4),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgIcons8starfilled))))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 23),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.blueGray90001,
                                          indent: getHorizontalSize(5))),
                                  Container(
                                      height: getVerticalSize(130),
                                      width: getHorizontalSize(338),
                                      margin: getMargin(left: 4, top: 21),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(338),
                                                    child: Text(
                                                        "msg_lorem_ipsum_is_simply"
                                                            .tr,
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOpenSansRomanRegular17))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Text(
                                                    "lbl_about_this_pack".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtOpenSansItalicLight17WhiteA700))
                                          ])),
                                  Container(
                                      margin: getMargin(
                                          left: 6, right: 1, bottom: 20),
                                      padding: getPadding(top: 22, bottom: 22),
                                      decoration: AppDecoration
                                          .outlineBlack90033
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder23),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(left: 16),
                                                child: Text(
                                                    "lbl_list_of_songs"
                                                        .tr
                                                        .toUpperCase(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtOpenSansRomanRegular13Indigo5099)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 15,
                                                    bottom: 34),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        physics:
                                                            NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      12));
                                                        },
                                                        itemCount: controller
                                                            .packDetailContainer1ModelObj
                                                            .value
                                                            .listsongnameItemList
                                                            .value
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          ListsongnameItemModel
                                                              model = controller
                                                                  .packDetailContainer1ModelObj
                                                                  .value
                                                                  .listsongnameItemList
                                                                  .value[index];
                                                          return ListsongnameItemWidget(
                                                              model);
                                                        })))
                                          ]))
                                ])))
                  ]))
            ])));
  }

  /// Navigates to the packDetailSwipeUpUnlockScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the packDetailSwipeUpUnlockScreen.
  onTapPlay() {
    Get.toNamed(
      AppRoutes.packDetailSwipeUpUnlockScreen,
    );
  }
}
>>>>>>> dev
