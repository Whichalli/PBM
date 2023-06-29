import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/booking_step_two_screen/models/booking_step_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the BookingStepTwoScreen.
///
/// This class manages the state of the BookingStepTwoScreen, including the
/// current bookingStepTwoModelObj
class BookingStepTwoController extends GetxController {TextEditingController bitesController = TextEditingController();

Rx<BookingStepTwoModel> bookingStepTwoModelObj = BookingStepTwoModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

Rx<String> radioGroup2 = "".obs;

Rx<String> radioGroup3 = "".obs;

Rx<String> radioGroup4 = "".obs;

Rx<String> radioGroup5 = "".obs;

Rx<String> radioGroup6 = "".obs;

Rx<String> radioGroup7 = "".obs;

Rx<String> radioGroup8 = "".obs;

@override void onClose() { super.onClose(); bitesController.dispose(); } 
 }
