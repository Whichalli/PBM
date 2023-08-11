import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';

import 'controller/controller.dart';

class NurseProfileDetails extends GetWidget<NurseProfileDetailsController> {
  const NurseProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Nurse Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: ColorConstant.pinkA100,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 100,
            width: size.width,
            decoration: BoxDecoration(
                color: ColorConstant.pinkA100,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          Container(
            // margin: getMargin(left: 20, right: 20),
            // height: size.height - 120,
            width: size.width - 40,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
                padding: getMargin(all: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        CustomImageView(
                          url: controller.employeeData['photoUrl'],
                          // imagePath: ImageConstant.imageNotFound,
                          imagePath: ImageConstant.imgAvatar,
                          radius: BorderRadius.circular(1000),
                          margin: getMargin(left: 12),
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${controller.employeeData['name']}".capitalize!,
                              style: AppStyle.txtAlegreyaSansBold24.copyWith(
                                  color: Colors.black87, fontSize: 18),
                            ),
                            // const SizedBox(
                            //   height: 4,
                            // ),
                            Text(
                              "${controller.employeeData['profession'] ?? ''}"
                                  .tr
                                  .capitalize!,
                              style: AppStyle.txtAlegreyaSansBold24.copyWith(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "${controller.employeeData['regNum'] ?? ''}"
                                  .capitalize!,
                              style: AppStyle.txtAlegreyaSansBold24.copyWith(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          alignment: Alignment.center,
                          margin: getMargin(right: 16),
                          padding:
                              getPadding(top: 8, left: 8, right: 0, bottom: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: ColorConstant.pinkA100),
                          child: CustomImageView(
                            onTap: () {
                              // log
                            },
                            color: Colors.white,
                            width: 20,
                            height: 20,
                            margin: getMargin(right: 8),
                            svgPath: ImageConstant.imgCarGray80048x48,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Padding(
                      padding: getPadding(left: 12, top: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            padding: getPadding(all: 12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorConstant.pinkA10019),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Appointments',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        AppStyle.txtAlegreyaSansBold14.copyWith(
                                      fontFamily: 'poppins',
                                      color: ColorConstant.pinkA100,
                                    )),
                                StreamBuilder<
                                        QuerySnapshot<Map<String, dynamic>>>(
                                    stream: FirebaseFirestore.instance
                                        .collection('bookings')
                                        .where('employeeId',
                                            isEqualTo: controller.employeeId)
                                        .snapshots(),
                                    builder: (context, snapshot) {
                                      String count = '...';
                                      if (snapshot.hasData) {
                                        count = '${snapshot.data!.docs.length}';
                                      }
                                      return Text(count,
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppStyle.txtAlegreyaSansBold14
                                              .copyWith(
                                                  fontFamily: 'poppins',
                                                  color: ColorConstant.pinkA700,
                                                  fontSize: 14));
                                    }),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            padding: getPadding(all: 12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: ColorConstant.pinkA10019),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Experience',
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        AppStyle.txtAlegreyaSansBold14.copyWith(
                                      fontFamily: 'poppins',
                                      // fontSize: 12,
                                      color: ColorConstant.pinkA100,
                                    )),
                                Text(
                                    "${controller.employeeData['experience'] ?? '0'} years",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppStyle.txtAlegreyaSansBold14
                                        .copyWith(
                                            fontFamily: 'poppins',
                                            color: ColorConstant.pinkA700,
                                            fontSize: 14)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(left: 16, top: 16),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('About',
                            style: AppStyle.txtAlegreyaSansBold24.copyWith(
                                color: const Color.fromARGB(192, 0, 0, 0),
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                    Padding(
                      padding: getPadding(left: 16, top: 8),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                            "${controller.employeeData['bio'] ?? 'Registered and Verified by PBM'}",
                            style: AppStyle.txtAlegreyaSansBold14.copyWith(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    Padding(
                      padding: getPadding(left: 16, top: 16),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Address Details',
                            style: AppStyle.txtAlegreyaSansBold24.copyWith(
                                color: const Color.fromARGB(192, 0, 0, 0),
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                    Padding(
                      padding: getPadding(left: 16, top: 8),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                            "${controller.employeeData['address'] ?? ''}",
                            style: AppStyle.txtAlegreyaSansBold14.copyWith(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    Padding(
                      padding: getPadding(left: 16, top: 16),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Contact Details',
                            style: AppStyle.txtAlegreyaSansBold24.copyWith(
                                color: const Color.fromARGB(192, 0, 0, 0),
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                    Padding(
                      padding: getPadding(left: 16, top: 8),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.email_outlined,
                                  size: 20,
                                  color: Colors.black54,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                    "${controller.employeeData['email'] ?? ''}",
                                    style: AppStyle.txtAlegreyaSansBold14
                                        .copyWith(
                                            color: Colors.black54,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600))
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone_outlined,
                                  size: 20,
                                  color: Colors.black54,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                    "${controller.employeeData['phone'] ?? ''}",
                                    style: AppStyle.txtAlegreyaSansBold14
                                        .copyWith(
                                            color: Colors.black54,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    CustomButton(
                      onTap: () {
                        // Get.back();
                        controller.bookEmployee(
                            employeeId: controller.employeeId);
                      },
                      height: 50,
                      margin: getMargin(left: 16, right: 16, top: 16),
                      text: 'Book Now',
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
