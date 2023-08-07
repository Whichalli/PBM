import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/presentation/nurse_dashboard_page/pages/dashboard_screen/models/dashboard_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DashboardScreen.
///
/// This class manages the state of the DashboardScreen, including the
/// current dashboardModelObj
class DashboardController extends GetxController {
  TextEditingController group3836Controller = TextEditingController();

  Rx<DashboardModel> dashboardModelObj = DashboardModel().obs;

  RxString userId = ''.obs;

  @override
  void onInit() {
    getUserDetails();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    group3836Controller.dispose();
  }

  getUserDetails() async {
    userId.value = Authentication.getCurrentUserId();
  }
}
