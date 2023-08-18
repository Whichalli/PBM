import 'dart:convert';
import 'dart:developer';
import 'dart:math' as Math;

import 'package:hive/hive.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/upcoming_booking_one1_screen/models/upcoming_booking_one1_model.dart';
import 'package:flutter/material.dart';

import '../../../domain/firebase/authentication.dart';
import '../../../domain/firebase/firebase.dart';

/// A controller class for the UpcomingBookingOne1Screen.
///
/// This class manages the state of the UpcomingBookingOne1Screen, including the
/// current upcomingBookingOne1ModelObj
class UpcomingBookingOne1Controller extends GetxController {
  TextEditingController cardnumberController = TextEditingController();

  TextEditingController nameoneController = TextEditingController();

  TextEditingController timeoneController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  Rx<UpcomingBookingOne1Model> upcomingBookingOne1ModelObj =
      UpcomingBookingOne1Model().obs;
  RxBool loading = false.obs;
  onTapPay() async {
    // log('booking ${json.encode(Hive.box('booking').get('data'))}');
    var employeeId = Hive.box('booking').get('data')['employeeId'];
    var chatId = '$employeeId-${Authentication.getCurrentUserId()}';
    await Database.write(
        userId:
            '${Math.Random.secure().nextInt(88888) + 111111}-${Math.Random.secure().nextInt(88888) + 111111}',
        data: Hive.box('booking').get('data'),
        table: 'bookings');

    var exist = (await Database.read(userId: 'chat', table: chatId)).exists;

    if (!exist) {
      await Database.write(
          userId: chatId,
          data: {
            'messages': [],
            'employeeId': employeeId,
            'parentId': Authentication.getCurrentUserId(),
            'senderId': Authentication.getCurrentUserId(),
            'isNewBooking': true,
            'unread': 1,
            'lastMessage': 'New Booking',
            'isDocument': false,
            'lastSentTime': DateTime.now(),
          },
          table: 'chat');
    }

    Get.offAndToNamed(
      AppRoutes.upcomingBookingScreen,
    );
  }
  

  @override
  void onClose() {
    super.onClose();
    cardnumberController.dispose();
    nameoneController.dispose();
    timeoneController.dispose();
    cvvController.dispose();
  }
}
