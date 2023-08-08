import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_bottom_bar.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

class DashboardScreen extends GetWidget<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        
        body: Container(
            width: double.maxFinite,
            padding: getPadding(left: 19, top: 14, right: 19, bottom: 14),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: double.maxFinite,
                      child: Container(
                          padding: getPadding(left: 25, top: 17, right: 25),
                          decoration: AppDecoration.brand.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder40),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(207),
                                    margin: getMargin(left: 2, right: 77),
                                    child: Text("msg_let_s_find_your_client".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtNunitoBold30WhiteA700)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 18, top: 18, right: 24),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomIconButton(
                                                  height: 35,
                                                  width: 35,
                                                  margin: getMargin(
                                                      top: 1, bottom: 1),
                                                  variant: IconButtonVariant
                                                      .FillWhiteA700,
                                                  padding: IconButtonPadding
                                                      .PaddingAll6,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup2887)),
                                              CustomIconButton(
                                                  height: 35,
                                                  width: 35,
                                                  margin: getMargin(
                                                      top: 1, bottom: 1),
                                                  variant: IconButtonVariant
                                                      .FillWhiteA700,
                                                  padding: IconButtonPadding
                                                      .PaddingAll6,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup2884)),
                                              CustomIconButton(
                                                  height: 36,
                                                  width: 36,
                                                  margin: getMargin(top: 1),
                                                  variant: IconButtonVariant
                                                      .FillPinkA100,
                                                  padding: IconButtonPadding
                                                      .PaddingAll10,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup2886)),
                                              CustomIconButton(
                                                  height: 37,
                                                  width: 37,
                                                  variant: IconButtonVariant
                                                      .FillWhiteA700,
                                                  padding: IconButtonPadding
                                                      .PaddingAll10,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgStarPinkA10037x37))
                                            ]))),
                                Container(
                                    height: getVerticalSize(38),
                                    width: getHorizontalSize(278),
                                    margin: getMargin(top: 23, bottom: 19),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 48, bottom: 10),
                                                  child: Text("lbl_male_18".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoRegular10Black90099
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.4))))),
                                          CustomTextFormField(
                                              width: getHorizontalSize(278),
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .group3836Controller,
                                              hintText:
                                                  "msg_try_physical_therapist"
                                                      .tr,
                                              variant:
                                                  TextFormFieldVariant.Brand,
                                              shape: TextFormFieldShape
                                                  .RoundedBorder21,
                                              padding: TextFormFieldPadding
                                                  .PaddingT10,
                                              fontStyle: TextFormFieldFontStyle
                                                  .NunitoBold12,
                                              textInputAction:
                                                  TextInputAction.done,
                                              alignment: Alignment.center,
                                              suffix: Container(
                                                  margin: getMargin(
                                                      left: 30,
                                                      top: 8,
                                                      right: 15,
                                                      bottom: 8),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .pinkA100),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFimic)),
                                              suffixConstraints: BoxConstraints(
                                                  maxHeight:
                                                      getVerticalSize(38)))
                                        ]))
                              ]))),
                  Padding(
                      padding: getPadding(left: 2, top: 8, right: 13),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("msg_available_clients".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtNunitoBold15),
                            Padding(
                                padding: getPadding(top: 4, bottom: 2),
                                child: Text("lbl_view_more".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtNunitoRegular10PinkA100))
                          ])),
                  Expanded(
                      child: Padding(
                          padding: getPadding(
                              left: 22, top: 17, right: 8, bottom: 5),
                          child: StreamBuilder<
                                  QuerySnapshot<Map<String, dynamic>>>(
                              stream: FirebaseFirestore.instance
                                  .collection('bookings')
                                  .where('employeeId',
                                      isEqualTo: controller.userId.value)
                                  .snapshots(),
                              builder: (context, snapshot) {
                                // log('message = ${snapshot.data?.docs[0]['name']}');
                                return SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  child: Wrap(
                                      runSpacing: 12,
                                      spacing: 12,
    
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceBetween,
                                      children: (!snapshot.hasData)
                                          ? [
                                              LinearProgressIndicator(
                                                  color: ColorConstant.pinkA100,
                                                  minHeight: 2)
                                            ]
                                          : List.generate(
                                              snapshot.data!.docs.length,
                                              (index) =>
                                                  StreamBuilder<
                                                          DocumentSnapshot<
                                                              Map<String,
                                                                  dynamic>>>(
                                                      stream: FirebaseFirestore
                                                          .instance
                                                          .collection('parent')
                                                          .doc(snapshot.data!
                                                                  .docs[index]
                                                              ['parentId'])
                                                          .snapshots(),
                                                      builder:
                                                          (context, snapshot2) {
                                                        return SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    192),
                                                            width:
                                                                getHorizontalSize(
                                                                    127),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      child: GestureDetector(
                                                                          onTap: () {
                                                                            onTapColumnkaterose(data: snapshot.data!.docs[index].data());
                                                                          },
                                                                          child: Container(
                                                                              padding: getPadding(left: 0, top: 8, right: 0, bottom: 8),
                                                                              decoration: AppDecoration.fillBlue5002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                Padding(padding: getPadding(top: 11), child: Text("${snapshot2.data?['name']}".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtNunitoBold15)),
                                                                                Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 1), child: Text("lbl_dubai_mall".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNunitoSemiBold10))),
                                                                                CustomImageView(svgPath: ImageConstant.imgUarrowright, height: getSize(30), width: getSize(30), margin: getMargin(left: 9))
                                                                              ])))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      child: Container(
                                                                          height: getVerticalSize(95),
                                                                          width: getHorizontalSize(105),
                                                                          margin: getMargin(top: 27),
                                                                          decoration: BoxDecoration(color: ColorConstant.pinkA100, borderRadius: BorderRadius.circular(getHorizontalSize(40)), boxShadow: [
                                                                            BoxShadow(
                                                                                color: ColorConstant.black9000a,
                                                                                spreadRadius: getHorizontalSize(2),
                                                                                blurRadius: getHorizontalSize(2),
                                                                                offset: Offset(0, 0))
                                                                          ]))),
                                                                  CustomImageView(
                                                                      url: snapshot2
                                                                              .data?[
                                                                          'photoUrl'],
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgImage1,
                                                                      height:
                                                                          getVerticalSize(
                                                                              115),
                                                                      width: getHorizontalSize(
                                                                          124),
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter)
                                                                ]));
                                                      }),
                                            )),
                                );
                              })))
                ])),
        // bottomNavigationBar: CustomAppBar
        );
  }

  /// Navigates to the appointmentsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the appointmentsScreen.
  onTapColumnkaterose({required dynamic data}) {
    Get.toNamed(AppRoutes.appointmentsScreen, arguments: {'bookings': data});
  }
}
