import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';

import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';

import '../../../../widgets/custom_button.dart';
import '../../../nurse_dashboard_page/pages/chat_screen/models/chat_item_model.dart';
import 'controller/controller.dart';

class BookedNurseScreen extends GetWidget<BookedNurseController> {
  const BookedNurseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('message');
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          padding: getPadding(bottom: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Divider(
                height: getVerticalSize(1),
                thickness: getVerticalSize(1),
                color: ColorConstant.pinkA10019),
            StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream: FirebaseFirestore.instance
                    .collection('bookings')
                    .where('parentId', isEqualTo: controller.userId.value)
                    .snapshots(),
                builder: (context, snapshot) {
                  if ((!snapshot.hasData)) {
                    return LinearProgressIndicator(
                      color: ColorConstant.pinkA10019,
                      minHeight: .1,
                    );
                  } else {
                    log('bookings = ${snapshot.data!.docs}');
                    var resp = snapshot.data!.docs;
                    Rx<List<QueryDocumentSnapshot<Map<String, dynamic>>>> data =
                        Rx([]);
                    data.value = resp;
                    // for (var element in resp) {
                    //   data
                    // }
                    return Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: getPadding(top: 8, bottom: 4),
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
                                      Icons.search_rounded,
                                      size: 20,
                                      color: Colors.black26,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: controller.searchController,
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
                                            hintText: 'Appointment Id',
                                            // contentPadding: getPadding(all: 0),
                                            focusColor: Colors.transparent,
                                            fillColor: Colors.transparent,
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: getPadding(left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Obx(() => Expanded(
                                      flex: (controller.upcoming.value) ? 2 : 1,
                                      child: Obx(() => CustomButton(
                                            onTap: () async {
                                              await controller.switchTab(
                                                  upcoming: true);
                                            },
                                            height: getVerticalSize(
                                              30,
                                            ),
                                            text: "lbl_upcoming".tr,
                                            margin: getMargin(
                                              right: 11,
                                            ),
                                            variant: (controller.upcoming.value)
                                                ? null
                                                : ButtonVariant
                                                    .OutlinePinkA100_1,
                                            shape: ButtonShape.RoundedBorder22,
                                            padding: ButtonPadding.PaddingT6,
                                            fontStyle: (controller
                                                    .upcoming.value)
                                                ? ButtonFontStyle.NunitoBold15
                                                : ButtonFontStyle
                                                    .NunitoBold15PinkA100,
                                          )),
                                    )),
                                Obx(() => Expanded(
                                      flex: (controller.upcoming.value) ? 1 : 2,
                                      child: Obx(() => CustomButton(
                                            onTap: () async {
                                              await controller.switchTab(
                                                  upcoming: false);
                                            },
                                            height: getVerticalSize(
                                              30,
                                            ),
                                            // width: 100,
                                            text: "lbl_past".tr,
                                            margin: getMargin(
                                              left: 11,
                                            ),
                                            variant: (controller.upcoming.value)
                                                ? ButtonVariant
                                                    .OutlinePinkA100_1
                                                : null,
                                            shape: ButtonShape.RoundedBorder22,
                                            padding: ButtonPadding.PaddingT6,
                                            fontStyle: (!controller
                                                    .upcoming.value)
                                                ? ButtonFontStyle.NunitoBold15
                                                : ButtonFontStyle
                                                    .NunitoBold15PinkA100,
                                          )),
                                    )),
                              ],
                            ),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              padding: getPadding(left: 12, right: 12),
                              physics: const BouncingScrollPhysics(),
                              child: Obx(() => Column(
                                    children: List.generate(
                                        data.value.length + 10,
                                        (index) => Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: MaterialButton(
                                                onPressed: () {},
                                                padding: getPadding(all: 0),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  height: 100,
                                                  width: 500,
                                                  padding: getPadding(all: 8),
                                                  decoration: BoxDecoration(
                                                      boxShadow: const [
                                                        BoxShadow(
                                                            blurRadius: 1,
                                                            spreadRadius: 1,
                                                            color:
                                                                Color.fromARGB(
                                                                    64,
                                                                    198,
                                                                    198,
                                                                    198))
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16),
                                                      color: Colors.white70),
                                                  child: Row(
                                                    children: [
                                                      CustomImageView(
                                                        radius: BorderRadius
                                                            .circular(12),
                                                        width: 80,
                                                        height: 100,
                                                        border: Border.all(
                                                            color:
                                                                Colors.black12),
                                                        imagePath: ImageConstant
                                                            .imgAvatar,
                                                      ),
                                                      const SizedBox(
                                                        width: 12,
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Appointment Title',
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: AppStyle
                                                                  .txtAlegreyaSansBold24
                                                                  .copyWith(
                                                                      color: Colors
                                                                          .black54,
                                                                      fontSize:
                                                                          18,
                                                                      fontFamily:
                                                                          'Nunito'),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                'Appointment Details Appointment Details Appointment Details Appointment Details Appointment Details',
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: AppStyle
                                                                    .txtAlegreyaSansBold24
                                                                    .copyWith(
                                                                        color: Colors
                                                                            .black54,
                                                                        fontSize:
                                                                            14,
                                                                        fontFamily:
                                                                            'Nunito'),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                }),
          ])),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Book a Pediatrician',
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        onPressed: () {
          Get.toNamed(AppRoutes.upcomingBooking1Screen);
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(color: ColorConstant.pinkA100, width: 2)),
        child: Icon(
          Icons.handshake_outlined,
          color: ColorConstant.pinkA100,
        ),
      ),
      // bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {
      //   Get.toNamed(getCurrentRoute(type), id: 1);
      // })
    );
  }

  onTapRownurselist() {
    Get.toNamed(
      AppRoutes.mapScreen,
    );
  }
}
