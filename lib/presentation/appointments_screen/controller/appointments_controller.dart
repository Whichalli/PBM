<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';
import 'package:pbm_care/presentation/appointments_screen/models/appointments_model.dart';
=======
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/appointments_screen/models/appointments_model.dart';
>>>>>>> dev

/// A controller class for the AppointmentsScreen.
///
/// This class manages the state of the AppointmentsScreen, including the
/// current appointmentsModelObj
class AppointmentsController extends GetxController {
  Rx<AppointmentsModel> appointmentsModelObj = AppointmentsModel().obs;
<<<<<<< HEAD
=======

  RxBool upcoming = true.obs;
  RxInt? selectedIndex = 0.obs;
  RxInt? activeBookingIndex;
  RxBool isNextDate = false.obs;
  Rx<DateTime> nextDate = Rx(DateTime.now());
  Rx<DateTime> date = Rx(DateTime.now());
  Map<String, dynamic>? data;
  Map<String, dynamic>? activeBookingTime = {};
  Rx<List<Map<String, dynamic>>> bookingTime = Rx([]);
  RxInt bookingTimeCount = 0.obs;

  @override
  void onInit() {
    data = Get.arguments['bookings'];
    log('data = ${data!['booking']}');

    super.onInit();
  }

  switchTab({required bool upcoming}) {
    this.upcoming.value = upcoming;
    log('this.upcoming.value = ${this.upcoming.value}');
    update();
  }

  getBookingTime(int index) {
    TimeOfDay startTime =
        data!['booking'][index]['startTime'].toString().timeOfDayFromString();
    TimeOfDay endTime =
        data!['booking'][index]['endTime'].toString().timeOfDayFromString();
    bookingTimeCount.value =
        getTimeDifferent(start: startTime, end: endTime).toInt();

    log('${bookingTimeCount.value}');
    for (var i = 0; i < bookingTimeCount.value + 1; i++) {
      TimeOfDay now = TimeOfDay.now();
      endTime = TimeOfDay(hour: startTime.hour + 1, minute: startTime.minute);
      bookingTime.value.add({
        'start': '${startTime.getTime()}',
        'end': '${endTime.getTime()}',
        'active': (now.hour == startTime.hour && now.hour <= endTime.minute)
      });
      startTime = TimeOfDay(hour: startTime.hour + 1, minute: startTime.minute);
    }
    // }
  }
>>>>>>> dev
}
