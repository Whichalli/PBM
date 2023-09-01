import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';

import '../../../../widgets/custom_button.dart';
import 'controller/controller.dart';

class BookedNurseScreen extends GetWidget<BookedNurseController> {
  final String field;
  const BookedNurseScreen({required this.field, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('message');
    return GetBuilder<BookedNurseController>(builder: (controller) {
      return Scaffold(
        body: Container(
            color: Colors.white,
            width: double.maxFinite,
            padding: getPadding(bottom: 10),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Divider(
                  height: getVerticalSize(1),
                  thickness: getVerticalSize(1),
                  color: ColorConstant.pinkA10019),
              StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                  stream: FirebaseFirestore.instance
                      .collection('bookings')
                      .where(field,
                          isEqualTo: Authentication.getCurrentUserId())
                      .where('isActive', isEqualTo: controller.upcoming.value)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if ((!snapshot.hasData)) {
                      return LinearProgressIndicator(
                        color: ColorConstant.pinkA10019,
                        minHeight: .1,
                      );
                    } else {
                      var resp = snapshot.data!.docs;
                      Rx<List<QueryDocumentSnapshot<Map<String, dynamic>>>>
                          data = Rx([]);
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
                                          controller:
                                              controller.searchController,
                                          onChanged: (value) {
                                            if (controller.searchController.text
                                                .isNotEmpty) {
                                              data.value = resp
                                                  .where((element) =>
                                                      '${element.data()['title']}'
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
                                              hintText: 'Search',
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
                                  Expanded(
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
                                          ))),
                                  Expanded(
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
                                              ? ButtonVariant.OutlinePinkA100_1
                                              : null,
                                          shape: ButtonShape.RoundedBorder22,
                                          padding: ButtonPadding.PaddingT6,
                                          fontStyle:
                                              (!controller.upcoming.value)
                                                  ? ButtonFontStyle.NunitoBold15
                                                  : ButtonFontStyle
                                                      .NunitoBold15PinkA100,
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                padding: getPadding(left: 12, right: 12),
                                physics: const BouncingScrollPhysics(),
                                child: Obx(() => Column(
                                      children: data.value.isEmpty
                                          ? [
                                              // const Spacer(),
                                              Container(
                                                height: size.height - 300,
                                                alignment: Alignment.center,
                                                child: CustomImageView(
                                                  width: 200,
                                                  height: 200,
                                                  imagePath: ImageConstant
                                                      .emptyRecords,
                                                ),
                                              ),
                                              // const Spacer(),
                                            ]
                                          : List.generate(data.value.length,
                                              (index) {
                                              // log('booking view data ${data.value[index].data()}');
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: MaterialButton(
                                                  onPressed: () {
                                                    Get.toNamed(
                                                        AppRoutes
                                                            .pastBookingDetailsOneScreen,
                                                        arguments: {
                                                          'bookingId': data
                                                              .value[index].id,
                                                          'employeeId': data
                                                                  .value[index]
                                                                  .data()[
                                                              'employeeId'],
                                                          'parentId': data
                                                                  .value[index]
                                                                  .data()[
                                                              'parentId'],
                                                        });
                                                  },
                                                  padding: getPadding(all: 0),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Container(
                                                    // height: 100,
                                                    width: 500,
                                                    padding:
                                                        getPadding(all: 18),
                                                    decoration: BoxDecoration(
                                                        boxShadow: const [
                                                          BoxShadow(
                                                              blurRadius: 1,
                                                              spreadRadius: 1,
                                                              color: Color
                                                                  .fromARGB(
                                                                      64,
                                                                      198,
                                                                      198,
                                                                      198))
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                        color: Colors.white70),
                                                    child: Row(
                                                      children: [
                                                        // CustomImageView(
                                                        //   radius:
                                                        //       BorderRadius.circular(
                                                        //           12),
                                                        //   width: 80,
                                                        //   height: 100,
                                                        //   border: Border.all(
                                                        //       color: Colors.black12),
                                                        //   imagePath:
                                                        //       ImageConstant.imgAvatar,
                                                        // ),
                                                        // const SizedBox(
                                                        //   width: 12,
                                                        // ),
                                                        Expanded(
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            data.value[index].data()['title'],
                                                                            maxLines:
                                                                                1,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            style: AppStyle.txtAlegreyaSansBold24.copyWith(
                                                                                color: Colors.black54,
                                                                                fontSize: 18,
                                                                                fontFamily: 'Nunito'),
                                                                          ),
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              8,
                                                                        ),
                                                                        StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                                                                            stream: field == 'employeeId' ? FirebaseFirestore.instance.collection('parent').doc(data.value[index].data()['parentId']).snapshots() : FirebaseFirestore.instance.collection('employee').doc(data.value[index].data()['employeeId']).snapshots(),
                                                                            builder: (context, employeeNameSnapShot) {
                                                                              return Row(
                                                                                children: [
                                                                                  CustomImageView(
                                                                                    border: Border.all(color: Colors.black54),
                                                                                    radius: BorderRadius.circular(30),
                                                                                    width: 20,
                                                                                    height: 20,
                                                                                    fit: BoxFit.cover,
                                                                                    url: employeeNameSnapShot.hasData ? employeeNameSnapShot.data!.data()!['photoUrl'] : '',
                                                                                    imagePath: ImageConstant.imageNotFound,
                                                                                  ),
                                                                                  const SizedBox(
                                                                                    width: 4,
                                                                                  ),
                                                                                  Text(
                                                                                    employeeNameSnapShot.hasData ? employeeNameSnapShot.data!.data()!['name'] : '',
                                                                                    maxLines: 1,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    style: AppStyle.txtAlegreyaSansBold24.copyWith(color: Colors.black54, fontSize: 12, fontFamily: 'Nunito'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            })
                                                                      ],
                                                                    ),
                                                                    const SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      '${data.value[index].data()['createdAt']}'
                                                                          .toDate()
                                                                          .toActualDate(),
                                                                      maxLines:
                                                                          1,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: AppStyle.txtAlegreyaSansBold24.copyWith(
                                                                          color: Colors
                                                                              .black54,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontFamily:
                                                                              'Nunito'),
                                                                    ),
                                                                    const SizedBox(
                                                                      height: 4,
                                                                    ),
                                                                    Text(
                                                                      '${data.value[index].data()['description']}',
                                                                      maxLines:
                                                                          1,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: AppStyle.txtAlegreyaSansBold24.copyWith(
                                                                          color: Colors
                                                                              .black54,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontFamily:
                                                                              'Nunito'),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),

                                                              // const SizedBox(
                                                              //   height: 4,
                                                              // ),
                                                              // Expanded(
                                                              //   child: Text(
                                                              //     data.value[index]
                                                              //             .data()[
                                                              //         'description'],
                                                              //     maxLines: 2,
                                                              //     overflow:
                                                              //         TextOverflow
                                                              //             .ellipsis,
                                                              //     style: AppStyle
                                                              //         .txtAlegreyaSansBold24
                                                              //         .copyWith(
                                                              //             color: Colors
                                                              //                 .black54,
                                                              //             fontSize:
                                                              //                 14,
                                                              //             fontFamily:
                                                              //                 'Nunito'),
                                                              //   ),
                                                              // ),
                                                              // Align(
                                                              //   alignment: Alignment
                                                              //       .bottomRight,
                                                              //   child: Container(
                                                              //     height: 20,
                                                              //     width: 60,
                                                              //     alignment:
                                                              //         Alignment
                                                              //             .center,
                                                              //     decoration: BoxDecoration(
                                                              //         borderRadius:
                                                              //             BorderRadius
                                                              //                 .circular(
                                                              //                     4),
                                                              //         border: Border.all(
                                                              //             color: ColorConstant
                                                              //                 .pinkA100)),
                                                              //     child: const Text(
                                                              //       'Details',
                                                              //       style: TextStyle(
                                                              //           fontSize:
                                                              //               12),
                                                              //     ),
                                                              //   ),
                                                              // ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  }),
            ])),
        floatingActionButton: (field == 'employeeId')
            ? null
            : FloatingActionButton(
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
    });
  }

  onTapRownurselist() {
    Get.toNamed(
      AppRoutes.mapScreen,
    );
  }
}
