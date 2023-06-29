import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/dashboard_screen/models/dashboard_model.dart';import 'package:flutter/material.dart';/// A controller class for the DashboardScreen.
///
/// This class manages the state of the DashboardScreen, including the
/// current dashboardModelObj
class DashboardController extends GetxController {TextEditingController group3836Controller = TextEditingController();

Rx<DashboardModel> dashboardModelObj = DashboardModel().obs;

@override void onClose() { super.onClose(); group3836Controller.dispose(); } 
 }
