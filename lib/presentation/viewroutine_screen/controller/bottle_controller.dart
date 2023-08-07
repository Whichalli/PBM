import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/widgets/widgets.dart';

class BottleController extends GetxController {
  TextEditingController bootleTaskdescriptionController =
      TextEditingController();
  int waterLevel = 2;
  String? date;
  String? time;
  bool isFormula = true;
  String babyId = '';

  bool loading = false;
  @override
  void onInit() {
    babyId = Get.arguments['babyId'];
    super.onInit();
  }

  onTapFeedingDate() async {
    DateTime? t = await showDatePicker(
        context: Get.context!,
        initialDate: DateTime.now(),
        lastDate: DateTime.now(),
        firstDate: DateTime(DateTime.now().year - 5));
    if (t != null) {
      date = t.toString();
    }
  }

  onTapFeedingTime() async {
    TimeOfDay? d = await showTimePicker(
        context: Get.context!, initialTime: TimeOfDay.now());
    if (d != null) time = '${d.getTime()}';
  }

  save() async {
    if (date != null && time != null && babyId.isNotEmpty) {
      await Database.writeCollection(
          id: babyId,
          data: {
            'feedingDate': date,
            'feedingTime': time,
            'waterLevel': waterLevel * 10,
            'isFormula': isFormula,
            'note': bootleTaskdescriptionController.text
          },
          parentTable: 'feeding',
          childTable: 'bottleLogs');
      snackbar(
          context: Get.context,
          message: 'Data Saved',
          icon: Icon(
            Icons.check_circle_outline_outlined,
            color: ColorConstant.pink400,
          ),
          color: ColorConstant.pinkA100);
      Get.back();
      return;
    }
    snackbar(
        context: Get.context,
        message: 'Pick a feeding date and time',
        icon: Icon(Icons.warning_amber_rounded),
        color: Colors.orange);
  }
}
