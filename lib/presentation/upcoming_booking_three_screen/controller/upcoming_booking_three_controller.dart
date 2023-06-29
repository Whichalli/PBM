import 'package:pbm_care/core/app_export.dart';import 'package:pbm_care/presentation/upcoming_booking_three_screen/models/upcoming_booking_three_model.dart';import 'package:flutter/material.dart';/// A controller class for the UpcomingBookingThreeScreen.
///
/// This class manages the state of the UpcomingBookingThreeScreen, including the
/// current upcomingBookingThreeModelObj
class UpcomingBookingThreeController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController nameoneController = TextEditingController();

TextEditingController nametwoController = TextEditingController();

TextEditingController childsdateofbirController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController namethreeController = TextEditingController();

TextEditingController activitieschildController = TextEditingController();

TextEditingController genderController = TextEditingController();

TextEditingController timezoneController = TextEditingController();

TextEditingController pleasestatethreController = TextEditingController();

TextEditingController pleasestatethreController1 = TextEditingController();

TextEditingController pleasestatethreController2 = TextEditingController();

Rx<UpcomingBookingThreeModel> upcomingBookingThreeModelObj = UpcomingBookingThreeModel().obs;

@override void onClose() { super.onClose(); nameController.dispose(); nameoneController.dispose(); nametwoController.dispose(); childsdateofbirController.dispose(); addressController.dispose(); namethreeController.dispose(); activitieschildController.dispose(); genderController.dispose(); timezoneController.dispose(); pleasestatethreController.dispose(); pleasestatethreController1.dispose(); pleasestatethreController2.dispose(); } 
 }
