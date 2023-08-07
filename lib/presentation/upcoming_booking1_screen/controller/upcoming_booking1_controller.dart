import 'dart:developer';

import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/presentation/upcoming_booking1_screen/models/upcoming_booking1_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the UpcomingBooking1Screen.
///
/// This class manages the state of the UpcomingBooking1Screen, including the
/// current upcomingBooking1ModelObj
class UpcomingBooking1Controller extends GetxController {
  TextEditingController distanceController = TextEditingController();

  TextEditingController distanceoneController = TextEditingController();

  TextEditingController distancetwoController = TextEditingController();



  Rx<UpcomingBooking1Model> upcomingBooking1ModelObj =
      UpcomingBooking1Model().obs;

  RxString userId = ''.obs;
TextEditingController searchController = TextEditingController();
  @override
  void onInit() async {
    userId.value = Authentication.getCurrentUserId();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    distanceController.dispose();
    distanceoneController.dispose();
    distancetwoController.dispose();
  }

  bookEmployee({required String employeeId}) {
    log('employeeId = $employeeId');
    Get.toNamed(AppRoutes.bookingStepOneScreen,
        arguments: {'employeeId': employeeId});
  }
}
