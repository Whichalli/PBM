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
      // bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {
      //   Get.toNamed(getCurrentRoute(type), id: 1);
      // })
    );
  }

  //           children: List.generate(
  //             data.value.length,
  //             (index) => GestureDetector(
  //               onTap: () {
  //                 controller.bookEmployee(
  //                     employeeId:
  //                         data.value[index].id);
  //               },
  //               child: Container(
  //                   margin: getMargin(
  //                       left: 20, top: 19, right: 20),
  //                   padding: getPadding(
  //                       left: 16,
  //                       top: 19,
  //                       right: 16,
  //                       bottom: 19),
  //                   width: 400,
  //                   height: 175,
  //                   decoration: AppDecoration
  //                       .outlineBluegray100
  //                       .copyWith(
  //                           borderRadius:
  //                               BorderRadiusStyle
  //                                   .roundedBorder30),
  //                   child: Column(
  //                       mainAxisSize:
  //                           MainAxisSize.min,
  //                       mainAxisAlignment:
  //                           MainAxisAlignment.start,
  //                       children: [
  //                         Row(
  //                             mainAxisAlignment:
  //                                 MainAxisAlignment
  //                                     .center,
  //                             crossAxisAlignment:
  //                                 CrossAxisAlignment
  //                                     .start,
  //                             children: [
  //                               SizedBox(
  //                                   height:
  //                                       getSize(50),
  //                                   width:
  //                                       getSize(50),
  //                                   // margin: getMargin(
  //                                   //     top: 10,
  //                                   //     bottom: 12),
  //                                   child: Stack(
  //                                       alignment:
  //                                           Alignment
  //                                               .bottomRight,
  //                                       children: [
  //                                         CustomImageView(
  //                                             onTap:
  //                                                 () {
  //                                               Get.toNamed(
  //                                                   AppRoutes.nurseProfileDetails,
  //                                                   arguments: {
  //                                                     'employeeId': data.value[index].id,
  //                                                     'data': data.value[index].data()
  //                                                   });
  //                                             },
  //                                             url: data.value[index]
  //                                                 [
  //                                                 'photoUrl'],
  //                                             imagePath:
  //                                                 ImageConstant
  //                                                     .imageNotFound,
  //                                             // height: getSize(
  //                                             //     44),
  //                                             // width: getSize(
  //                                             //     44),
  //                                             radius: BorderRadius.circular(getHorizontalSize(
  //                                                 100)),
  //                                             alignment:
  //                                                 Alignment.center),
  //                                         Align(
  //                                             alignment:
  //                                                 Alignment
  //                                                     .bottomRight,
  //                                             child: Container(
  //                                                 height: getSize(
  //                                                     9),
  //                                                 width: getSize(
  //                                                     9),
  //                                                 decoration: BoxDecoration(
  //                                                     color: ColorConstant.greenA700,
  //                                                     borderRadius: BorderRadius.circular(getHorizontalSize(4)),
  //                                                     border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(1), strokeAlign: strokeAlignCenter))))
  //                                       ])),
  //                               Padding(
  //                                   padding:
  //                                       getPadding(
  //                                           left: 21),
  //                                   child: Column(
  //                                       crossAxisAlignment:
  //                                           CrossAxisAlignment
  //                                               .start,
  //                                       mainAxisAlignment:
  //                                           MainAxisAlignment
  //                                               .start,
  //                                       children: [
  //                                         Text(
  //                                             "${data.value[index].data()['name']}"
  //                                                 .capitalize!,
  //                                             overflow:
  //                                                 TextOverflow
  //                                                     .ellipsis,
  //                                             textAlign:
  //                                                 TextAlign
  //                                                     .left,
  //                                             style: AppStyle
  //                                                 .txtOpenSansRomanSemiBold16Gray800),
  //                                         const SizedBox(
  //                                           height: 4,
  //                                         ),
  //                                         Row(
  //                                           children: [
  //                                             const Icon(
  //                                               Icons
  //                                                   .assured_workload_outlined,
  //                                               size:
  //                                                   15,
  //                                               color:
  //                                                   Colors.black45,
  //                                             ),
  //                                             const SizedBox(
  //                                               width:
  //                                                   4,
  //                                             ),
  //                                             Text(
  //                                                 "${data.value[index].data()['profession'] ?? '___ ___ ___'}"
  //                                                     .tr
  //                                                     .capitalize!,
  //                                                 overflow:
  //                                                     TextOverflow.ellipsis,
  //                                                 textAlign: TextAlign.left,
  //                                                 style: AppStyle.txtOpenSansRomanSemiBold16Gray800.copyWith(fontSize: 12, color: Colors.black45)),
  //                                           ],
  //                                         ),
  //                                         const SizedBox(
  //                                           height: 4,
  //                                         ),
  //                                         Row(
  //                                           children: [
  //                                             Container(
  //                                                 margin:
  //                                                     getMargin(right: 5, bottom: 2),
  //                                                 child: CustomImageView(
  //                                                   svgPath: ImageConstant.imgLocation,
  //                                                   width: 15,
  //                                                   height: 15,
  //                                                 )),
  //                                             Text("${data.value[index].data()['address'] ?? '___ ___ ___'}".tr.capitalize!,
  //                                                 overflow: TextOverflow
  //                                                     .ellipsis,
  //                                                 softWrap:
  //                                                     true,
  //                                                 textAlign:
  //                                                     TextAlign.left,
  //                                                 style: AppStyle.txtOpenSansRomanSemiBold16Gray800.copyWith(fontSize: 12, color: Colors.black45)),
  //                                           ],
  //                                         ),
  //                                       ])),
  //                               const Spacer(),
  //                               Padding(
  //                                   padding:
  //                                       getPadding(
  //                                           bottom:
  //                                               27),
  //                                   child: Column(
  //                                       crossAxisAlignment:
  //                                           CrossAxisAlignment
  //                                               .end,
  //                                       mainAxisAlignment:
  //                                           MainAxisAlignment
  //                                               .start,
  //                                       children: [
  //                                         Row(
  //                                             mainAxisAlignment:
  //                                                 MainAxisAlignment
  //                                                     .end,
  //                                             crossAxisAlignment:
  //                                                 CrossAxisAlignment.start,
  //                                             children: [
  //                                               CustomImageView(
  //                                                   svgPath: ImageConstant.imgStar,
  //                                                   height: getSize(14),
  //                                                   width: getSize(14),
  //                                                   margin: getMargin(top: 2, bottom: 3)),
  //                                               Padding(
  //                                                   padding: getPadding(left: 5),
  //                                                   child: Text("lbl_4_0".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOpenSansRomanSemiBold14PinkA100))
  //                                             ]),
  //                                         Padding(
  //                                             padding: getPadding(
  //                                                 top:
  //                                                     5),
  //                                             child: Text(
  //                                                 "lbl_12"
  //                                                     .tr,
  //                                                 overflow:
  //                                                     TextOverflow.ellipsis,
  //                                                 textAlign: TextAlign.left,
  //                                                 style: AppStyle.txtOpenSansRomanSemiBold10Gray600))
  //                                       ]))
  //                             ]),
  //                         Padding(
  //                             padding:
  //                                 getPadding(top: 4),
  //                             child: Divider(
  //                                 height:
  //                                     getVerticalSize(
  //                                         1),
  //                                 thickness:
  //                                     getVerticalSize(
  //                                         1),
  //                                 color: ColorConstant
  //                                     .pinkA100)),
  //                         Padding(
  //                             padding:
  //                                 getPadding(top: 19),
  //                             child: Row(
  //                                 mainAxisAlignment:
  //                                     MainAxisAlignment
  //                                         .center,
  //                                 children: [
  //                                   Container(
  //                                     height: 40,
  //                                     width: 100,
  //                                     alignment:
  //                                         Alignment
  //                                             .center,
  //                                     decoration: BoxDecoration(
  //                                         borderRadius:
  //                                             BorderRadius.circular(
  //                                                 20),
  //                                         color: ColorConstant
  //                                             .whiteA70001),
  //                                     child: Row(
  //                                       mainAxisAlignment:
  //                                           MainAxisAlignment
  //                                               .center,
  //                                       children: [
  //                                         CustomImageView(
  //                                           svgPath:
  //                                               ImageConstant
  //                                                   .imgCall,
  //                                           height:
  //                                               getSize(
  //                                                   18),
  //                                           width:
  //                                               getSize(
  //                                                   18),
  //                                         ),
  //                                         Padding(
  //                                             padding:
  //                                                 getPadding(
  //                                               left:
  //                                                   5,
  //                                             ),
  //                                             child: Text(
  //                                                 "lbl_book_now"
  //                                                     .tr,
  //                                                 overflow:
  //                                                     TextOverflow.ellipsis,
  //                                                 textAlign: TextAlign.left,
  //                                                 style: AppStyle.txtOpenSansRomanSemiBold12PinkA100)),
  //                                       ],
  //                                     ),
  //                                   ),
  //                                   const Spacer(),
  //                                   CustomIconButton(
  //                                       height: 48,
  //                                       width: 48,
  //                                       shape: IconButtonShape
  //                                           .CircleBorder24,
  //                                       child: CustomImageView(
  //                                           svgPath:
  //                                               ImageConstant
  //                                                   .imgSortGray800)),
  //                                   CustomIconButton(
  //                                       onTap: () {
  //                                         Get.toNamed(
  //                                             AppRoutes
  //                                                 .chatOneScreen,
  //                                             arguments: {
  //                                               'partnerId': data
  //                                                   .value[index]
  //                                                   .id,
  //                                               'chatId':
  //                                                   '${data.value[index].id}-${Authentication.getCurrentUserId()}',
  //                                               'account':
  //                                                   'parent',
  //                                               'partnerDetails': ChatItemModel(
  //                                                   chatId: '${data.value[index].id}-${Authentication.getCurrentUserId()}',
  //                                                   chatActive: true,
  //                                                   employeeId: data.value[index].id,
  //                                                   lastMessage: '',
  //                                                   parentId: Authentication.getCurrentUserId(),
  //                                                   accountType: 'parent',
  //                                                   field: 'parent',
  //                                                   unread: 0,
  //                                                   time: ''),
  //                                             });
  //                                       },
  //                                       height: 48,
  //                                       width: 48,
  //                                       margin:
  //                                           getMargin(
  //                                               left:
  //                                                   10),
  //                                       variant:
  //                                           IconButtonVariant
  //                                               .FillWhiteA700,
  //                                       shape: IconButtonShape
  //                                           .CircleBorder24,
  //                                       child: CustomImageView(
  //                                           svgPath:
  //                                               ImageConstant
  //                                                   .imgCarGray80048x48))
  //                                 ]))
  //                       ])),
  //             ),
  //           ),
  onTapRownurselist() {
    Get.toNamed(
      AppRoutes.mapScreen,
    );
  }
}
