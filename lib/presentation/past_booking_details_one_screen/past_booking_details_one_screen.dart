import 'package:cloud_firestore/cloud_firestore.dart';

import 'controller/past_booking_details_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';

class PastBookingDetailsOneScreen
    extends GetWidget<PastBookingDetailsOneController> {
  const PastBookingDetailsOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),
        centerTitle: true,
        title: const Text(
          'Booking Details',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
              padding: getPadding(top: 16, left: 16, right: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                        stream: FirebaseFirestore.instance
                            .collection('employee')
                            .doc(Get.arguments['employeeId'])
                            .snapshots(),
                        builder: (context, snapshot) {
                          return Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    url: snapshot.hasData
                                        ? snapshot.data!.data()!['photoUrl']
                                        : '',
                                    border: Border.all(color: Colors.black),
                                    width: 50,
                                    height: 50,
                                    imagePath: ImageConstant.imageNotFound,
                                    radius: BorderRadius.circular(1000),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          snapshot.hasData
                                              ? '${snapshot.data!.data()!['name']}'
                                                  .capitalize!
                                              : '',
                                          style: AppStyle.txtManropeMedium16
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                        ),
                                        Text(
                                          snapshot.hasData
                                              ? (snapshot.data!
                                                          .data()!['profession']
                                                      as String)
                                                  .tr
                                              : '',
                                          style: AppStyle.txtManropeMedium16
                                              .copyWith(
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomIconButton(
                                      height: 48,
                                      width: 48,
                                      margin: getMargin(left: 10, bottom: 2),
                                      variant: IconButtonVariant.FillWhiteA700,
                                      shape: IconButtonShape.CircleBorder24,
                                      child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCarGray80048x48))
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              // Row(
                              //   crossAxisAlignment: CrossAxisAlignment.end,
                              //   mainAxisAlignment: MainAxisAlignment.end,
                              //   children: [
                              //     CustomIconButton(
                              //         height: 48,
                              //         width: 48,
                              //         margin: getMargin(left: 10, bottom: 2),
                              //         variant: IconButtonVariant.FillWhiteA700,
                              //         shape: IconButtonShape.CircleBorder24,
                              //         child: const Icon(
                              //           Icons.thumb_down_off_alt,
                              //           size: 20,
                              //           color: Colors.black54,
                              //         )),
                              //     const SizedBox(
                              //       width: 12,
                              //     ),
                              //     CustomIconButton(
                              //         height: 48,
                              //         width: 48,
                              //         margin: getMargin(left: 10, bottom: 2),
                              //         variant: IconButtonVariant.FillWhiteA700,
                              //         shape: IconButtonShape.CircleBorder24,
                              //         child: const Icon(
                              //           Icons.thumb_up_off_alt,
                              //           size: 20,
                              //           color: Colors.black54,
                              //         )),
                              //   ],
                              // ),
                              Divider(
                                  height: getVerticalSize(20),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.pinkA10019),
                            ],
                          );
                        }),
                    const SizedBox(
                      height: 8,
                    ),
                    StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                        stream: FirebaseFirestore.instance
                            .collection('bookings')
                            .doc(Get.arguments['bookingId'])
                            .snapshots(),
                        builder: (context, snapshot) {
                          // if (snapshot.hasData) {
                          //   log('bookingDetsila = ${snapshot.data}');
                          // }
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                snapshot.hasData
                                    ? snapshot.data!.data()!['title']
                                    : '',
                                style: const TextStyle(
                                    fontSize: 20, fontFamily: 'manrope'),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_month_outlined,
                                    color: Colors.black45,
                                    size: 16,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    snapshot.hasData
                                        ? (snapshot.data!.data()!['createdAt']
                                                as String)
                                            .toDate()
                                            .toActualDate()
                                        : '',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.black45,
                                        fontFamily: 'manrope'),
                                  ),
                                ],
                              ),
                              Divider(
                                  height: getVerticalSize(32),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.pinkA10019),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.description_outlined,
                                    color: Colors.black45,
                                    size: 20,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Appointment Description'.capitalize!,
                                    style: const TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'manrope'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(left: 29, top: 8),
                                child: Text(
                                  snapshot.hasData
                                      ? (snapshot.data!.data()!['description'])
                                      : '',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black45,
                                      fontFamily: 'manrope'),
                                ),
                              ),
                              // Divider(
                              //     height: getVerticalSize(32),
                              //     thickness: getVerticalSize(1),
                              //     color: ColorConstant.pinkA10019),
                              // Row(
                              //   children: [
                              //     const Icon(
                              //       Icons.health_and_safety_outlined,
                              //       color: Colors.black45,
                              //       size: 20,
                              //     ),
                              //     const SizedBox(
                              //       width: 8,
                              //     ),
                              //     Text(
                              //       'Assesment (Physical)'.capitalize!,
                              //       style: const TextStyle(
                              //           color: Colors.black54,
                              //           fontSize: 14,
                              //           fontWeight: FontWeight.bold,
                              //           fontFamily: 'manrope'),
                              //     ),
                              //   ],
                              // ),
                              // const SizedBox(
                              //   height: 12,
                              // ),
                              // Padding(
                              //   padding: getPadding(left: 29),
                              //   child: Column(
                              //     children: [
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Has any alergy ?',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!.data()![
                              //                                   'physicalAssesment']
                              //                               [
                              //                               'alergy'] as String)
                              //                           .isEmpty
                              //                       ? 'No'
                              //                       : 'Yes'
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       const SizedBox(
                              //         height: 8,
                              //       ),
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Bites ?',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!.data()![
                              //                                   'physicalAssesment']
                              //                               ['bites'] as String)
                              //                           .isEmpty
                              //                       ? 'No'
                              //                       : 'Yes'
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       const SizedBox(
                              //         height: 8,
                              //       ),
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Has bruises ?',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!.data()![
                              //                                   'physicalAssesment']
                              //                               [
                              //                               'bruises'] as String)
                              //                           .isEmpty
                              //                       ? 'No'
                              //                       : 'Yes'
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       const SizedBox(
                              //         height: 8,
                              //       ),
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Has Fever ?',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!.data()![
                              //                                   'physicalAssesment']
                              //                               ['fiver'] as String)
                              //                           .isEmpty
                              //                       ? 'No'
                              //                       : 'Yes'
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       const SizedBox(
                              //         height: 8,
                              //       ),
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Has rashes ?',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!.data()![
                              //                                   'physicalAssesment']
                              //                               [
                              //                               'rashes'] as String)
                              //                           .isEmpty
                              //                       ? 'No'
                              //                       : 'Yes'
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       const SizedBox(
                              //         height: 8,
                              //       ),
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Has redness ?',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!.data()![
                              //                                   'physicalAssesment']
                              //                               [
                              //                               'redness'] as String)
                              //                           .isEmpty
                              //                       ? 'No'
                              //                       : 'Yes'
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       const SizedBox(
                              //         height: 8,
                              //       ),
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Has any swell ?',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!.data()![
                              //                                   'physicalAssesment']
                              //                               ['swell'] as String)
                              //                           .isEmpty
                              //                       ? 'No'
                              //                       : 'Yes'
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       const SizedBox(
                              //         height: 8,
                              //       ),
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Others',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!.data()![
                              //                           'physicalAssesment']
                              //                       ['others'] as String)
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       const SizedBox(
                              //         height: 8,
                              //       ),
                              //     ],
                              //   ),
                              // ),

                              // Divider(
                              //     height: getVerticalSize(32),
                              //     thickness: getVerticalSize(1),
                              //     color: ColorConstant.pinkA10019),
                              // Row(
                              //   children: [
                              //     const Icon(
                              //       Icons.chrome_reader_mode_outlined,
                              //       color: Colors.black45,
                              //       size: 20,
                              //     ),
                              //     const SizedBox(
                              //       width: 8,
                              //     ),
                              //     Text(
                              //       'Other details'.capitalize!,
                              //       style: const TextStyle(
                              //           color: Colors.black54,
                              //           fontSize: 14,
                              //           fontWeight: FontWeight.bold,
                              //           fontFamily: 'manrope'),
                              //     ),
                              //   ],
                              // ),

                              // const SizedBox(
                              //   height: 12,
                              // ),
                              // Padding(
                              //   padding: getPadding(left: 29),
                              //   child: Column(
                              //     children: [
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Payment',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!
                              //                               .data()!['payment']
                              //                           as String)
                              //                       .tr
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       const SizedBox(
                              //         height: 8,
                              //       ),
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Has this nurse worked with you before?',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!.data()![
                              //                           'workedWith'] as String)
                              //                       .tr
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       const SizedBox(
                              //         height: 8,
                              //       ),
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Additional Information',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!.data()![
                              //                               'addionalInfo']
                              //                           as String)
                              //                       .tr
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       const SizedBox(
                              //         height: 8,
                              //       ),
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Hand over to who ?',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!.data()![
                              //                           'handOverTo'] as String)
                              //                       .tr
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           const Expanded(
                              //             flex: 4,
                              //             child: Text(
                              //               'Hand over to who ?',
                              //               overflow: TextOverflow.clip,
                              //               style: TextStyle(
                              //                   color: Colors.black87,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //           const SizedBox(
                              //             width: 8,
                              //           ),
                              //           Expanded(
                              //             child: Text(
                              //               snapshot.hasData
                              //                   ? (snapshot.data!.data()![
                              //                           'handOverTo'] as String)
                              //                       .tr
                              //                   : '',
                              //               style: const TextStyle(
                              //                   color: Colors.black54,
                              //                   fontSize: 14,
                              //                   fontFamily: 'manrope'),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              // Divider(
                              //     height: getVerticalSize(32),
                              //     thickness: getVerticalSize(1),
                              //     color: ColorConstant.pinkA10019),
                              // const Row(
                              //   children: [
                              //     Icon(
                              //       Icons.handshake_outlined,
                              //       color: Colors.black45,
                              //       size: 20,
                              //     ),
                              //     SizedBox(
                              //       width: 8,
                              //     ),
                              //     Text(
                              //       'Appointment date',
                              //       style: TextStyle(
                              //           color: Colors.black54,
                              //           fontSize: 14,
                              //           fontWeight: FontWeight.bold,
                              //           fontFamily: 'manrope'),
                              //     ),
                              //   ],
                              // ),
                              // Divider(
                              //     height: getVerticalSize(32),
                              //     thickness: getVerticalSize(1),
                              //     color: ColorConstant.pinkA10019),
                              const SizedBox(height: 16),
                              !snapshot.hasData
                                  ? const Center()
                                  : Wrap(
                                      spacing: 12,
                                      children: List.generate(
                                          snapshot.data!
                                              .data()!['booking']
                                              .length, (index) {
                                        DateTime date = (snapshot.data!
                                                    .data()!['booking'][index]
                                                ['date'] as Timestamp)
                                            .toDate();
                                        return Container(
                                            padding: getPadding(all: 4),
                                            margin: getMargin(bottom: 8),
                                            width: 155,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black12),
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(8)
                                                            .copyWith(
                                                      topRight:
                                                          Radius.circular(0),
                                                      bottomRight:
                                                          Radius.circular(0),
                                                    ),
                                                    color:
                                                        ColorConstant.pinkA100,
                                                  ),
                                                  padding: getPadding(
                                                      left: 8,
                                                      right: 8,
                                                      bottom: 8),
                                                  width: 60,
                                                  height: 60,
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Positioned(
                                                        top: 4,
                                                        child: Text(
                                                          '${date.day < 10 ? '0${date.day}' : date.day}',
                                                          style: AppStyle
                                                              .txtPoppinsRegular24
                                                              .copyWith(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 28,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 35,
                                                        child: Text(
                                                          months[date.month - 1]
                                                              .toUpperCase(),
                                                          style: AppStyle
                                                              .txtPoppinsRegular24
                                                              .copyWith(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 12,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      snapshot.data!.data()![
                                                              'booking'][index]
                                                          ['startTime'],
                                                      style: const TextStyle(
                                                          color: Colors.black54,
                                                          fontSize: 16,
                                                          fontFamily: 'manrope',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    const Divider(
                                                      height: 8,
                                                    ),
                                                    Text(
                                                      snapshot.data!.data()![
                                                              'booking'][index]
                                                          ['endTime'],
                                                      style: const TextStyle(
                                                          color: Colors.black54,
                                                          fontSize: 16,
                                                          fontFamily: 'manrope',
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ));
                                      })),
                            ],
                          );
                        })
                  ]))),
    );
  }
}
