import 'package:cloud_firestore/cloud_firestore.dart';

import 'controller/upcoming_booking1_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_bottom_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

class UpcomingBooking1Screen extends GetWidget<UpcomingBooking1Controller> {
  const UpcomingBooking1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      appBar: CustomAppBar(
          height: getVerticalSize(50),
          title:
              AppbarSubtitle3(text: "lbl_team".tr, margin: getMargin(left: 20)),
          actions: [
            AppbarImage(
                height: getSize(20),
                width: getSize(20),
                svgPath: ImageConstant.imgCarbonnotificationGray800,
                margin: getMargin(left: 20, top: 12, right: 12)),
            AppbarImage(
                height: getSize(20),
                width: getSize(20),
                svgPath: ImageConstant.imgVuesaxlinearsetting2,
                margin: getMargin(left: 15, top: 12, right: 32))
          ]),
      body: Container(
          width: double.maxFinite,
          padding: getPadding(bottom: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            // Align(
            //     alignment: Alignment.centerLeft,
            //     child: Padding(
            //         padding: getPadding(left: 16, top: 2, right: 16),
            //         child: Row(children: [
            //           CustomButton(
            //               height: getVerticalSize(42),
            //               width: getHorizontalSize(121),
            //               text: "lbl_care_team".tr,
            //               variant: ButtonVariant.OutlinePinkA100,
            //               shape: ButtonShape.RoundedBorder16,
            //               padding: ButtonPadding.PaddingAll9,
            //               fontStyle: ButtonFontStyle.OpenSans16),
            //           const Spacer(),
            //           Padding(
            //               padding: getPadding(left: 36, top: 12, bottom: 7),
            //               child: Text("msg_my_nurse_history".tr,
            //                   overflow: TextOverflow.ellipsis,
            //                   textAlign: TextAlign.left,
            //                   style: AppStyle.txtOpenSans16))
            //         ]))),
            Divider(
                height: getVerticalSize(1),
                thickness: getVerticalSize(1),
                color: ColorConstant.pinkA10019),
            // GestureDetector(
            //     onTap: () {
            //       onTapRownurselist();
            //     },
            //     child: Padding(
            //         padding: getPadding(left: 20, top: 19, right: 20),
            //         child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Text("lbl_nurse_list".tr,
            //                   overflow: TextOverflow.ellipsis,
            //                   textAlign: TextAlign.left,
            //                   style: AppStyle.txtOpenSans16Gray800),
            //               Padding(
            //                   padding: getPadding(top: 1),
            //                   child: Text("lbl_card_view".tr,
            //                       overflow: TextOverflow.ellipsis,
            //                       textAlign: TextAlign.left,
            //                       style: AppStyle.txtOpenSans14Gray600))
            //             ]))),
            Expanded(
                child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                    stream: FirebaseFirestore.instance
                        .collection('employee')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if ((!snapshot.hasData)) {
                        return LinearProgressIndicator(
                          color: ColorConstant.pinkA10019,
                          minHeight: 2,
                        );
                      } else {
                        var resp = snapshot.data!.docs;
                        Rx<List<QueryDocumentSnapshot<Map<String, dynamic>>>>
                            data = Rx([]);
                        data.value = resp;
                        // for (var element in resp) {
                        //   data
                        // }
                        return Column(
                          children: [
                            Padding(
                              padding: getPadding(top: 8, bottom: 8),
                              child: Container(
                                  margin: getMargin(
                                      right: 16, left: 16, top: 0, bottom: 0),
                                  // width: 200,
                                  height: 35,
                                  padding: getPadding(left: 8, right: 8),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.person_search_outlined,
                                        size: 20,
                                        color: Colors.black26,
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller:
                                              controller.searchController,
                                          onChanged: (value) {
                                            if (controller.searchController.text
                                                .isNotEmpty) {
                                              data.value = resp
                                                  .where((element) =>
                                                      '${element.data()['name']}'
                                                          .toLowerCase()
                                                          .contains(controller
                                                              .searchController
                                                              .text
                                                              .toLowerCase()))
                                                  .toList();
                                            } else {
                                              data.value = resp;
                                            }
                                          },
                                          onTapOutside: (event) {
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          cursorColor: Colors.black12,
                                          decoration: const InputDecoration(
                                              hintText: 'Search pediatrician',
                                              // contentPadding: getPadding(all: 0),
                                              focusColor: Colors.transparent,
                                              fillColor: Colors.transparent,
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          onTapRownurselist();
                                        },
                                        icon: const Icon(
                                            Icons.filter_list_rounded),
                                        iconSize: 20,
                                        color: Colors.black26,
                                      ),
                                    ],
                                  )),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  child: Obx(
                                    () => Column(
                                      children: List.generate(
                                        data.value.length,
                                        (index) => GestureDetector(
                                          onTap: () {
                                            controller.bookEmployee(
                                                employeeId:
                                                    data.value[index].id);
                                          },
                                          child: Container(
                                              margin: getMargin(
                                                  left: 20, top: 19, right: 20),
                                              padding: getPadding(
                                                  left: 16,
                                                  top: 19,
                                                  right: 16,
                                                  bottom: 19),
                                              width: 400,
                                              height: 200,
                                              decoration: AppDecoration
                                                  .outlineBluegray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder30),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                              height:
                                                                  getSize(50),
                                                              width:
                                                                  getSize(50),
                                                              // margin: getMargin(
                                                              //     top: 10,
                                                              //     bottom: 12),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  children: [
                                                                    CustomImageView(
                                                                        onTap:
                                                                            () {
                                                                          Get.toNamed(
                                                                              AppRoutes.nurseProfileDetails,
                                                                              arguments: {
                                                                                'employeeId': data.value[index].id,
                                                                                'data': data.value[index].data()
                                                                              });
                                                                        },
                                                                        url: data.value[index]
                                                                            [
                                                                            'photoUrl'],
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imageNotFound,
                                                                        // height: getSize(
                                                                        //     44),
                                                                        // width: getSize(
                                                                        //     44),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            100)),
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomRight,
                                                                        child: Container(
                                                                            height: getSize(
                                                                                9),
                                                                            width: getSize(
                                                                                9),
                                                                            decoration: BoxDecoration(
                                                                                color: ColorConstant.greenA700,
                                                                                borderRadius: BorderRadius.circular(getHorizontalSize(4)),
                                                                                border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(1), strokeAlign: strokeAlignCenter))))
                                                                  ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 21),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "${data.value[index].data()['name']}"
                                                                            .capitalize!,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtOpenSansRomanSemiBold16Gray800),
                                                                    const SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        const Icon(
                                                                          Icons
                                                                              .assured_workload_outlined,
                                                                          size:
                                                                              15,
                                                                          color:
                                                                              Colors.black45,
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              4,
                                                                        ),
                                                                        Text(
                                                                            "${data.value[index].data()['profession'] ?? '___ ___ ___'}"
                                                                                .tr
                                                                                .capitalize!,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtOpenSansRomanSemiBold16Gray800.copyWith(fontSize: 12, color: Colors.black45)),
                                                                      ],
                                                                    ),
                                                                    const SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                            margin:
                                                                                getMargin(right: 5, bottom: 2),
                                                                            child: CustomImageView(
                                                                              svgPath: ImageConstant.imgLocation,
                                                                              width: 15,
                                                                              height: 15,
                                                                            )),
                                                                        Text("${data.value[index].data()['address'] ?? '___ ___ ___'}".tr.capitalize!,
                                                                            overflow: TextOverflow
                                                                                .ellipsis,
                                                                            softWrap:
                                                                                true,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtOpenSansRomanSemiBold16Gray800.copyWith(fontSize: 12, color: Colors.black45)),
                                                                      ],
                                                                    ),
                                                                  ])),
                                                          const Spacer(),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          27),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .end,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgStar,
                                                                              height: getSize(14),
                                                                              width: getSize(14),
                                                                              margin: getMargin(top: 2, bottom: 3)),
                                                                          Padding(
                                                                              padding: getPadding(left: 5),
                                                                              child: Text("lbl_4_0".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14PinkA100))
                                                                        ]),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                5),
                                                                        child: Text(
                                                                            "lbl_12"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtOpenSansRomanSemiBold10Gray600))
                                                                  ]))
                                                        ]),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 4),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .pinkA100)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 19),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                height: 40,
                                                                width: 100,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20),
                                                                    color: ColorConstant
                                                                        .whiteA70001),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCall,
                                                                      height:
                                                                          getSize(
                                                                              18),
                                                                      width:
                                                                          getSize(
                                                                              18),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            getPadding(
                                                                          left:
                                                                              5,
                                                                        ),
                                                                        child: Text(
                                                                            "lbl_book_now"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtOpenSansRomanSemiBold12PinkA100)),
                                                                  ],
                                                                ),
                                                              ),
                                                              Spacer(),
                                                              CustomIconButton(
                                                                  height: 48,
                                                                  width: 48,
                                                                  shape: IconButtonShape
                                                                      .CircleBorder24,
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgSortGray800)),
                                                              CustomIconButton(
                                                                  onTap: () {},
                                                                  height: 48,
                                                                  width: 48,
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              10),
                                                                  variant:
                                                                      IconButtonVariant
                                                                          .FillWhiteA700,
                                                                  shape: IconButtonShape
                                                                      .CircleBorder24,
                                                                  child: CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCarGray80048x48))
                                                            ]))
                                                  ])),
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        );
                      }
                    })),
          ])),
      // bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {
      //   Get.toNamed(getCurrentRoute(type), id: 1);
      // })
    );
  }

  // ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Volume:
  //       return "/";
  //     case BottomBarEnum.Sort:
  //       return "/";
  //     case BottomBarEnum.Vuesaxlinearaddpinka100:
  //       return "/";
  //     case BottomBarEnum.Car:
  //       return "/";
  //     case BottomBarEnum.User:
  //       return "/";
  //     default:
  //       return "/";
  //   }
  // }

  // ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     default:
  //       return DefaultWidget();
  //   }
  // }

  // /// Navigates to the mapScreen when the action is triggered.

  // /// When the action is triggered, this function uses the `Get` package to
  // /// push the named route for the mapScreen.
  onTapRownurselist() {
    Get.toNamed(
      AppRoutes.mapScreen,
    );
  }
}
