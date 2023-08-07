import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';

import '../../widgets/app_drawer.dart';
import 'controller/home_onboarding_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_bottom_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';
import 'package:pbm_app/widgets/custom_search_view.dart';

class HomeOnboardingContainerScreen
    extends GetWidget<HomeOnboardingContainerController> {
  HomeOnboardingContainerScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => await Future.value(false),
      child: Scaffold(
          key: _key,
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          drawer: const AppDrawer(
            profileRoutes: AppRoutes.upcomingBookingFourScreen,
          ),
          appBar: CustomAppBar(
              height: getVerticalSize(42),
              leadingWidth: 50,
              leading: AppbarImage(
                  onTap: () async {
                    // await Authentication.logout();
                    // drawer.
                    _key.currentState!.openDrawer();
                  },
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgGrid,
                  margin: getMargin(left: 26, top: 9, bottom: 9)),
              actions: [
                AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgMdimomdadchild,
                    margin: getMargin(left: 20, top: 9, right: 20, bottom: 9),
                    onTap: () {
                      onTapMdimomdadchild();
                    })
              ]),
          body: SizedBox(
              width: size.width,
              child: SingleChildScrollView(
                  padding: getPadding(top: 17),
                  child: Padding(
                      padding: getPadding(left: 11),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() => Padding(
                                padding: getPadding(left: 17),
                                child: (controller.userId.value.isEmpty)
                                    ? Text('Hello --- ---',
                                        style: AppStyle
                                            .txtOpenSansRomanSemiBold16Black90001)
                                    : StreamBuilder<
                                            DocumentSnapshot<
                                                Map<String, dynamic>>>(
                                        stream: FirebaseFirestore.instance
                                            .collection('parent')
                                            .doc('/${controller.userId.value}')
                                            .snapshots(),
                                        builder: (context, snapshot) {
                                          log('data = ${snapshot.data?.data()}');
                                          return Text(
                                              'Hello ${snapshot.data?.data()?['name']}',
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSansRomanSemiBold16Black90001);
                                        }))),
                            Padding(
                                padding: getPadding(left: 17),
                                child: Text("msg_welcome_to_pb_m".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOpenSans12)),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: getVerticalSize(221),
                                    width: getHorizontalSize(335),
                                    margin: getMargin(top: 33),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle1415,
                                              height: getVerticalSize(200),
                                              width: getHorizontalSize(335),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(20)),
                                              alignment: Alignment.topCenter),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: CustomSearchView(
                                                  onChanged: (value) {
                                                    controller.searching.value =
                                                        controller
                                                            .searchController
                                                            .text
                                                            .isNotEmpty;
                                                  },
                                                  width: getHorizontalSize(295),
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .searchController,
                                                  hintText: "lbl_search".tr,
                                                  margin: getMargin(left: 9),
                                                  variant: SearchViewVariant
                                                      .Brand,
                                                  fontStyle: SearchViewFontStyle
                                                      .OpenSans14,
                                                  alignment: Alignment
                                                      .bottomLeft,
                                                  prefix: Container(
                                                      margin: getMargin(
                                                          left: 15,
                                                          top: 11,
                                                          right: 10,
                                                          bottom: 11),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSearch)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight:
                                                              getVerticalSize(
                                                                  42)),
                                                  suffix: Padding(
                                                      padding: EdgeInsets.only(
                                                          right:
                                                              getHorizontalSize(
                                                                  15)),
                                                      child: IconButton(
                                                          onPressed: () {
                                                            controller
                                                                .searchController
                                                                .clear();
                                                          },
                                                          icon: Icon(
                                                              Icons.clear,
                                                              color: Colors.grey
                                                                  .shade600)))))
                                        ]))),
                            Obx(() => Visibility(
                                  visible: controller.searching.value,
                                  child:
                                      StreamBuilder<
                                              QuerySnapshot<
                                                  Map<String, dynamic>>>(
                                          stream: FirebaseFirestore.instance
                                              .collection('employee')
                                              .limit(6)
                                              .snapshots(),
                                          builder: (context, snapshot) {
                                            log('data = ${snapshot.data?.docs}');
                                            if (!snapshot.hasData) {
                                              return LinearProgressIndicator(
                                                color: ColorConstant.pinkA100,
                                                minHeight: 2,
                                              );
                                            }
                                            return snapshot.data!.docs.isEmpty
                                                ? const Center(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                          'No data fetched'),
                                                    ),
                                                  )
                                                : Wrap(
                                                    runSpacing: 8,
                                                    spacing: 12,
                                                    runAlignment:
                                                        WrapAlignment.center,
                                                    alignment:
                                                        WrapAlignment.center,
                                                    crossAxisAlignment:
                                                        WrapCrossAlignment
                                                            .center,

                                                    // mainAxisAlignment:
                                                    //     MainAxisAlignment.center,
                                                    children: List.generate(
                                                      snapshot
                                                          .data!.docs.length,
                                                      (index) =>
                                                          (!snapshot
                                                                  .data!
                                                                  .docs[index]
                                                                      ['name']
                                                                  .toString()
                                                                  .toLowerCase()
                                                                  .startsWith(controller
                                                                      .searchController
                                                                      .text
                                                                      .toLowerCase()))
                                                              ? const SizedBox()
                                                              : Container(
                                                                  margin: getMargin(
                                                                      right: 8),
                                                                  padding: getPadding(
                                                                      all: 8),
                                                                  width: 150,
                                                                  decoration: AppDecoration.fillPinkA10019.copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder20),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        CustomImageView(
                                                                            url:
                                                                                snapshot.data?.docs[index]['photoUrl'],
                                                                            radius: BorderRadiusStyle.roundedBorder20,
                                                                            imagePath: ImageConstant.imageNotFound,
                                                                            fit: BoxFit.cover,
                                                                            height: getVerticalSize(100),
                                                                            width: getHorizontalSize(150)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 12),
                                                                            child: Text("msg_registered_nurses".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSans12)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(bottom: 8, top: 4),
                                                                            child: Text(snapshot.data?.docs[index]['name'], overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14Gray800))
                                                                      ])),
                                                    ));
                                          }),
                                )),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(
                                        left: 14, top: 31, right: 15),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_our_services".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSansRomanSemiBold12Gray600),
                                          Text("lbl_view_all".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSansRomanSemiBold12Gray600)
                                        ]))),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: getPadding(left: 15, top: 18),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                                height: 48,
                                                width: 48,
                                                variant:
                                                    IconButtonVariant.Brand,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFavorite)),
                                            Container(
                                                width: getHorizontalSize(72),
                                                margin: getMargin(top: 20),
                                                child: Text(
                                                    "msg_child_care_babysitting"
                                                        .tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtOpenSansRomanSemiBold12Gray800))
                                          ]),
                                      Padding(
                                          padding:
                                              getPadding(left: 17, bottom: 2),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomIconButton(
                                                    height: 48,
                                                    width: 48,
                                                    variant:
                                                        IconButtonVariant.Brand,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFavorite)),
                                                Container(
                                                    width:
                                                        getHorizontalSize(74),
                                                    margin: getMargin(top: 20),
                                                    child: Text(
                                                        "msg_behavioral_autism"
                                                            .tr,
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtOpenSansRomanSemiBold12Gray800))
                                              ])),
                                      Padding(
                                          padding:
                                              getPadding(left: 28, bottom: 18),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomIconButton(
                                                    height: 48,
                                                    width: 48,
                                                    variant:
                                                        IconButtonVariant.Brand,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFavorite)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 19),
                                                    child: Text(
                                                        "lbl_toolkit".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOpenSansRomanSemiBold12Gray800))
                                              ])),
                                      Padding(
                                          padding:
                                              getPadding(left: 30, bottom: 18),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomIconButton(
                                                    height: 48,
                                                    width: 48,
                                                    variant:
                                                        IconButtonVariant.Brand,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFavorite)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 19),
                                                    child: Text(
                                                        "lbl_mother_care".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOpenSansRomanSemiBold12Gray800))
                                              ])),
                                      Padding(
                                          padding:
                                              getPadding(left: 15, bottom: 4),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomIconButton(
                                                    height: 48,
                                                    width: 48,
                                                    variant: IconButtonVariant
                                                        .OutlinePinkA100,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFavorite)),
                                                Container(
                                                    width:
                                                        getHorizontalSize(75),
                                                    margin: getMargin(top: 20),
                                                    child: Text(
                                                        "msg_pediatrician_consultation"
                                                            .tr,
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtOpenSansRomanSemiBold12Gray800))
                                              ]))
                                    ])),
                            Align(
                              child: CustomButton(
                                  height: getVerticalSize(50),
                                  width: getHorizontalSize(230),
                                  text: "msg_click_to_view_services".tr,
                                  margin: getMargin(bottom: 14, top: 16),
                                  shape: ButtonShape.RoundedBorder8,
                                  padding: ButtonPadding.PaddingT14,
                                  fontStyle: ButtonFontStyle.RalewayBold16,
                                  onTap: () {
                                    onTapClicktoview();
                                  }),
                            ),
                            Padding(
                                padding: getPadding(top: 6, right: 29),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_our_care_team".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtOpenSansRomanSemiBold12Gray600),
                                      // CustomButton(
                                      //     height: getVerticalSize(50),
                                      //     width: getHorizontalSize(230),
                                      //     text: "lbl_view_all"
                                      //         .tr,
                                      //     margin: getMargin(
                                      //         bottom: 14, top: 16),
                                      //     shape: ButtonShape.RoundedBorder8,
                                      //     padding: ButtonPadding.PaddingT14,
                                      //     fontStyle:
                                      //         ButtonFontStyle.RalewayBold16,
                                      //     onTap: () {
                                      //       onTapClicktoview();
                                      //     }),
                                      GestureDetector(
                                        onTap: () async {
                                          onTapMdimomdadchild();
                                        },
                                        child: Text("lbl_view_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSansRomanSemiBold12Gray600),
                                      )
                                    ])),
                            Padding(
                                padding: getPadding(top: 16, bottom: 12),
                                child:
                                    StreamBuilder<
                                            QuerySnapshot<
                                                Map<String, dynamic>>>(
                                        stream: FirebaseFirestore.instance
                                            .collection('employee')
                                            .limit(6)
                                            .snapshots(),
                                        builder: (context, snapshot) {
                                          if (!snapshot.hasData) {
                                            return LinearProgressIndicator(
                                              color: ColorConstant.pinkA100,
                                              minHeight: 2,
                                            );
                                          }
                                          return SizedBox(
                                            height: getVerticalSize(200),
                                            child: SingleChildScrollView(
                                              physics:
                                                  const BouncingScrollPhysics(),
                                              child: Wrap(
                                                  runSpacing: 8,
                                                  spacing: 12,
                                                  runAlignment:
                                                      WrapAlignment.start,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  children: List.generate(
                                                    snapshot.data!.docs.length,
                                                    (index) => GestureDetector(
                                                      onTap: () {
                                                        Get.toNamed(
                                                            AppRoutes
                                                                .nurseProfileDetails,
                                                            arguments: {
                                                              'data': snapshot
                                                                  .data!
                                                                  .docs[index]
                                                                  .data(),
                                                              'employeeId':
                                                                  snapshot
                                                                      .data!
                                                                      .docs[
                                                                          index]
                                                                      .id
                                                            });
                                                      },
                                                      child: Container(
                                                          margin:
                                                              getMargin(all: 8),
                                                          padding: getPadding(
                                                              all: 0),
                                                          width: 150,
                                                          // height: 10,
                                                          decoration: AppDecoration
                                                              .fillPinkA10019
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder16),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    // border: Border.all(
                                                                    //     color: Colors
                                                                    //         .black38),
                                                                    url: snapshot
                                                                            .data
                                                                            ?.docs[index]
                                                                        [
                                                                        'photoUrl'],
                                                                    radius: const BorderRadius.only(
                                                                        topLeft:
                                                                            Radius.circular(
                                                                                16),
                                                                        topRight:
                                                                            Radius.circular(
                                                                                16)),
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imageNotFound,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    height:
                                                                        getVerticalSize(
                                                                            120),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            155)),
                                                                Container(
                                                                  width: 200,
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(8),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant
                                                                          .pinkA100,
                                                                      borderRadius: const BorderRadius
                                                                              .only(
                                                                          bottomLeft: Radius.circular(
                                                                              16),
                                                                          bottomRight:
                                                                              Radius.circular(16))),
                                                                  child: Column(
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  0,
                                                                              top:
                                                                                  0),
                                                                          child: Text(
                                                                              snapshot.data?.docs[index]['name'],
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtOpenSansRomanSemiBold14Gray800)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              // top:
                                                                              //     2,
                                                                              bottom: 4),
                                                                          child: Text("${snapshot.data?.docs[index]['profession']}".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSans12.copyWith(color: Colors.white54))),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ])),
                                                    ),
                                                  )),
                                            ),
                                          );
                                        }))
                          ])))),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomBottomBar(onChanged: (BottomBarEnum type) {
              log('message = $type');
              Get.toNamed(
                getCurrentRoute(type),
              );
            }),
          )),
    );
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

  /// Navigates to the servicesScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the servicesScreen.
  onTapClicktoview() {
    Get.toNamed(
      AppRoutes.servicesScreen,
    );
  }

  /// Navigates to the upcomingBookingFourScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the upcomingBookingFourScreen.
  onTapMdimomdadchild() {
    Get.toNamed(
      AppRoutes.upcomingBookingFourScreen,
    );
  }
}
