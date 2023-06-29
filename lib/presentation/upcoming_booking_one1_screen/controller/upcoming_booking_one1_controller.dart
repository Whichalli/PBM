import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/upcoming_booking_one1_screen/models/upcoming_booking_one1_model.dart';import 'package:flutter/material.dart';/// A controller class for the UpcomingBookingOne1Screen.
///
/// This class manages the state of the UpcomingBookingOne1Screen, including the
/// current upcomingBookingOne1ModelObj
class UpcomingBookingOne1Controller extends GetxController {TextEditingController cardnumberController = TextEditingController();

TextEditingController nameoneController = TextEditingController();

TextEditingController timeoneController = TextEditingController();

TextEditingController cvvController = TextEditingController();

Rx<UpcomingBookingOne1Model> upcomingBookingOne1ModelObj = UpcomingBookingOne1Model().obs;

@override void onClose() { super.onClose(); cardnumberController.dispose(); nameoneController.dispose(); timeoneController.dispose(); cvvController.dispose(); } 
 }
