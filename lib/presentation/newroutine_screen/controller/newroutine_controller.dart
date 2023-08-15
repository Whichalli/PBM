import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/presentation/newroutine_screen/models/newroutine_model.dart';
import 'package:pbm_app/widgets/widgets.dart';

import '../../../domain/firebase/firebase.dart';

/// A controller class for the NewroutineScreen.
///
/// This class manages the state of the NewroutineScreen, including the
/// current newroutineModelObj
class NewroutineController extends GetxController {
  Rx<NewroutineModel> newroutineModelObj = NewroutineModel().obs;
  RxBool upcoming = true.obs;
  RxBool isPoo = false.obs;
  RxBool isPee = false.obs;
  RxBool loading = false.obs;
  Rx<DateTime> date = Rx(DateTime(2017));
  Rx<TimeOfDay> time = Rx(TimeOfDay.fromDateTime(DateTime(2017)));

  RxBool isPoloading = false.obs;
  RxInt? selectedIndex = 0.obs;

  TextEditingController describeactivitController = TextEditingController();
  TextEditingController consistencyController = TextEditingController();
  TextEditingController clearedWithController = TextEditingController();
  String babyId = Get.arguments['babyId'];

  // Map<String, Color>? data = {
  //   'red': Colors.red,
  //   'green': Colors.green,
  //   'deepGreen': const Color.fromARGB(255, 29, 65, 30),
  //   'link': Colors.lime,
  //   'gray': Colors.grey,
  //   'black': Colors.black,
  //   'brown': Colors.brown,
  // };

  List<Map<String, dynamic>> data = [
    {
      'color': Colors.red,
      'value': 'red',
    },
    {
      'color': Colors.green,
      'value': 'green',
    },
    {
      'color': Colors.lime,
      'value': 'lime',
    },
    {
      'color': const Color.fromARGB(255, 29, 65, 30),
      'value': 'deepGreen',
    },
    {
      'color': Colors.grey,
      'value': 'grey',
    },
    {
      'color': Colors.black,
      'value': 'black',
    },
    {
      'color': Colors.brown,
      'value': 'brown',
    }
  ];

  save() async {
    log('time = $time data = $date consistency = ${consistencyController.text} clearedWith = ${clearedWithController.text}');
    if (time.value == TimeOfDay.fromDateTime(DateTime(2017)) ||
        date.value == DateTime(2017) ||
        consistencyController.text.isEmpty ||
        clearedWithController.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Fill in necessary data');
      return;
    }

    await Database.writeCollection(
        id: babyId,
        data: {
          'time': time.value.getTime(),
          'date': date.value,
          'note': describeactivitController.text,
          'isPoo': isPoo.value,
          'isPee': isPee.value,
          'consistency': consistencyController.text,
          'clearedWith': clearedWithController.text,
          'createdAt': DateTime.now(),
          'counting': false
        },
        parentTable: 'diaper',
        childTable: 'diaperLogs');
    snackbar(
        context: Get.context!,
        message: 'Data saved',
        icon: Icon(Icons.baby_changing_station_rounded,
            color: ColorConstant.pinkA100),
        color: ColorConstant.pinkA100);
    Get.back();
  }
}
