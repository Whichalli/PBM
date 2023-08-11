import 'dart:developer';

import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/presentation/upcoming_booking1_screen/models/upcoming_booking1_model.dart';
import 'package:flutter/material.dart';

import '../models/model.dart';

/// A controller class for the BookedNurseScreen.
///
/// This class manages the state of the BookedNurseScreen, including the
/// current BookedNurseModelObj
class BookedNurseController extends GetxController {
  TextEditingController distanceController = TextEditingController();

  TextEditingController distanceoneController = TextEditingController();

  TextEditingController distancetwoController = TextEditingController();
  RxBool upcoming = true.obs;

  Rx<BookedNurseModel> BookedNurseModelObj = BookedNurseModel().obs;

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

  switchTab({required bool upcoming}) {
    this.upcoming.value = upcoming;
    log('this.upcoming.value = ${this.upcoming.value}');
    update();
  }

  bookEmployee({required String employeeId}) {
    log('employeeId = $employeeId');
    Get.toNamed(AppRoutes.bookingStepOneScreen,
        arguments: {'employeeId': employeeId});
  }
}
