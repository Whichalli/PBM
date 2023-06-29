import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/upcoming_booking1_screen/models/upcoming_booking1_model.dart';import 'package:flutter/material.dart';/// A controller class for the UpcomingBooking1Screen.
///
/// This class manages the state of the UpcomingBooking1Screen, including the
/// current upcomingBooking1ModelObj
class UpcomingBooking1Controller extends GetxController {TextEditingController distanceController = TextEditingController();

TextEditingController distanceoneController = TextEditingController();

TextEditingController distancetwoController = TextEditingController();

Rx<UpcomingBooking1Model> upcomingBooking1ModelObj = UpcomingBooking1Model().obs;

@override void onClose() { super.onClose(); distanceController.dispose(); distanceoneController.dispose(); distancetwoController.dispose(); } 
 }
