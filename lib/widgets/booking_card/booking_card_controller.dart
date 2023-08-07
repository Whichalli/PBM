import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingCardController extends GetxController {
  String start = '__ __ __';
  String end = '__ __ __';

  Future<TimeOfDay> timePicker() async {
    return (await showTimePicker(
        context: Get.context!, initialTime: TimeOfDay.now()))!;
  }
}
