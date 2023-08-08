<<<<<<< HEAD
import '../controller/booking_step_one_controller.dart';
import '../models/booking_step_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';

// ignore: must_be_immutable
class BookingStepItemWidget extends StatelessWidget {
  BookingStepItemWidget(
    this.bookingStepItemModelObj, {
=======
import 'dart:developer';

import '../controller/booking_step_one_controller.dart';
import '../models/booking_step_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';

// ignore: must_be_immutable
class BookingStepItemWidget extends StatelessWidget {
  RxString value;
  DateTime date;
  RxBool isThisMonthDay;
  List<String> bookedDate;
  BookingStepItemWidget({
    required this.value,
    required this.bookedDate,
    required this.isThisMonthDay,
    required this.date,
>>>>>>> dev
    Key? key,
  }) : super(
          key: key,
        );
<<<<<<< HEAD

  BookingStepItemModel bookingStepItemModelObj;

  var controller = Get.find<BookingStepOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        44,
      ),
      width: getHorizontalSize(
        46,
      ),
=======
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var d = DateTime(now.year, now.month, now.day);
    return SizedBox(
      // height: getVerticalSize(
      //   100,
      // ),
      // width: getHorizontalSize(
      //   100,
      // ),
>>>>>>> dev
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgVuesaxlinearadd,
<<<<<<< HEAD
            height: getVerticalSize(
              44,
            ),
            width: getHorizontalSize(
              46,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: getPadding(
                left: 13,
              ),
              child: Obx(
                () => Text(
                  bookingStepItemModelObj.optionTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOpenSansRomanSemiBold15Gray600,
                ),
              ),
            ),
=======
            // height: getVerticalSize(100),
            // width: getHorizontalSize(
            //   100,
            // ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Obx(() => Text(
                  value.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOpenSansRomanSemiBold15Gray600.copyWith(
                      color: (isThisMonthDay.value && now.compareTo(date) < 0 ||
                                  (d.day == date.day &&
                                      d.month == date.month)) &&
                              !bookedDate.contains('$date')
                          ? Colors.black87
                          : Colors.grey),
                )),
>>>>>>> dev
          ),
        ],
      ),
    );
  }
}
