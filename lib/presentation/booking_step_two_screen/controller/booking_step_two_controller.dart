import 'dart:developer';
import 'dart:math' as Math;

import 'package:hive/hive.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/presentation/booking_step_two_screen/models/booking_step_two_model.dart';
import 'package:flutter/material.dart';

import '../../../domain/firebase/authentication.dart';
import '../../../widgets/booking_card.dart';

/// A controller class for the BookingStepTwoScreen.
///
/// This class manages the state of the BookingStepTwoScreen, including the
/// current bookingStepTwoModelObj
class BookingStepTwoController extends GetxController {
  TextEditingController othersController = TextEditingController();

  Rx<BookingStepTwoModel> bookingStepTwoModelObj = BookingStepTwoModel().obs;

  Rx<String> radioWorkedB4 = "".obs;

  Rx<String> radioPayment = "".obs;

  Rx<String> radioHanded2Who = "".obs;

  Rx<String> radioBites = "".obs;

  Rx<String> radioSwell = "".obs;

  Rx<String> radioAddInfo = "".obs;

  Rx<String> radioRedness = "".obs;

  Rx<String> radioRashes = "".obs;

  Rx<String> radioBruises = "".obs;

  Rx<String> radioAlergy = "".obs;

  Rx<String> radioFiver = "".obs;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  RxList<BookingCard> bookings = Get.arguments['bookings'];
  var employeeId = Get.arguments['employeeId'];
  List<Map<String, dynamic>> bookingData = [];
  double total = 0;
  @override
  void onInit() {
    for (var element in bookings) {
      bookingData.add({
        'date': element.date,
        'startTime': element.start.value,
        'endTime': element.end.value
      });
    }
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    othersController.dispose();
  }

  onTapNext() async {
    log('employeeId = ${Get.arguments}');
    if (
        // radioAddInfo.isNotEmpty &&
        // radioHanded2Who.isNotEmpty &&
        // radioWorkedB4.isNotEmpty &&
        // radioPayment.isNotEmpty
        descriptionController.text.isNotEmpty &&
            titleController.text.isNotEmpty) {
      Hive.box('booking').put('data', {
        'isActive': true,
        'parentId': Authentication.getCurrentUserId(),
        'employeeId': employeeId,
        'description': descriptionController.text,
        'title': titleController.text,
        'createdAt': '${DateTime.now()}',
        'booking': bookingData,
        // 'price': Hive.box('price').get('total'),
        // 'addionalInfo': radioAddInfo.value,
        // 'handOverTo': radioHanded2Who.value,
        // 'workedWith': radioWorkedB4.value,
        // 'payment': radioPayment.value,
        // 'physicalAssesment': {
        //   'redness': radioRedness.value,
        //   'bites': radioBites.value,
        //   'rashes': radioRashes.value,
        //   'bruises': radioBruises.value,
        //   'alergy': radioAlergy.value,
        //   'fiver': radioFiver.value,
        //   'swell': radioSwell.value,
        //   'others': othersController.text,
        // },
      });
      Get.toNamed(AppRoutes.pricingScreen, arguments: {'isBooking': true});
      // Get.toNamed(AppRoutes.upcomingBookingTwoScreen, arguments: {});
    }
  }
}
