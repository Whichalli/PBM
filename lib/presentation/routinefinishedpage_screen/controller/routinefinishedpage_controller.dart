import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as Math;

import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/presentation/routinefinishedpage_screen/models/routinefinishedpage_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/widgets/widgets.dart';

/// A controller class for the RoutinefinishedpageScreen.
///
/// This class manages the state of the RoutinefinishedpageScreen, including the
/// current routinefinishedpageModelObj
class RoutinefinishedpageController extends GetxController {
  TextEditingController describeactivitController = TextEditingController();

  Rx<RoutinefinishedpageModel> routinefinishedpageActivityModelObj =
      RoutinefinishedpageModel().obs;

  RxBool playing = false.obs;
  RxString counter = '00:00:00'.obs;
  RxString startTime = ''.obs;
  RxString endTime = ''.obs;
  RxString endDate = ''.obs;
  RxString startDate = ''.obs;
  RxString totalTime = '00:00:00'.obs;
  String babyId = '';
  String id = '';

  // double timerWidth = 170;
  bool showTimer = false;
  RxBool loading = false.obs;

  Timer? _timer;
  int hours = 0;
  int minutes = 0;
  int seconds = 1;

  RxBool isEditable = true.obs;
  @override
  void onInit() {
    babyId = Get.arguments['babyId'];
    loadTimer();
    super.onInit();
  }

  @override
  void onClose() {
    pause();
    describeactivitController.dispose();
    super.onClose();
  }

  File? selectedFile;

  getDateRanget() {
    if (endDate.isNotEmpty &&
        startDate.isNotEmpty &&
        endTime.isNotEmpty &&
        startTime.isNotEmpty) {
      log('${endTime.value}');
      var stTime = startTime.value.split(':');
      var stTimePeriod = stTime[1].split(' ');
      var edTime = endTime.value.split(':');
      var edTimePeriod = edTime[1].split(' ');
      DateTime startDt = startDate.value.toValidDate(
          patter: '/',
          hours: int.parse(stTime[0]),
          minutes: int.parse(stTimePeriod[0]));
      DateTime endDt = endDate.value.toValidDate(
          patter: '/',
          hours: int.parse(edTime[0]),
          minutes: int.parse(edTimePeriod[0]));
      var dayDiffHours = endDt.difference(startDt);

      totalTime.value =
          '${dayDiffHours.inHours}H  ${dayDiffHours.inMinutes % 60}M';
    }
  }

  ///Checks firebase if there's a previos activity going on
  ///and update the UI
  loadTimer() async {
    // log('time ${TimeOfDay.now()}');
    var sleepCollection = Database.readCollection(
        parentTable: 'activity', childTable: 'activityLogs', id: babyId);
    var sleepData =
        (await sleepCollection.where('counting', isEqualTo: true).get()).docs;
    log('loadTimer');
    sleepData.forEach((element) {
      log('emelemt = ${element.data()}');
      isEditable.value = false;
      showTimer = true;
      startTime.value = element.data()['startTime'];
      endTime.value = element.data()['endTime'] ?? '';

      List<String> startTimeArr =
          element.data()['startTime'].toString().split(':');

      startDate.value =
          (element.data()['startDate']).toString().toDate().getDate();
      endDate.value = (element.data()['endDate'] ?? '');
      log('date = ${element.data()['startDate']} arr = ${startTimeArr[2].split(' ')[0]}');
      DateTime parsedDate = element
          .data()['startDate']
          .toString()
          .format()
          .toValidDate(
              patter: '/',
              hours: int.parse(startTimeArr[0]),
              minutes: int.parse(startTimeArr[1]),
              seconds: int.parse(startTimeArr[2].split(' ')[0]));
      DateTime now = DateTime.now();

      hours = now.hour - parsedDate.hour;
      minutes = (now.hour * 60 + now.minute) -
          (parsedDate.hour * 60 + parsedDate.minute);
      var diff = now.difference(parsedDate).inSeconds;
      seconds = diff % 60;
      playing.value = true;
      id = element.id;
      update();
      play();
    });
  }

  play() async {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds >= 60) {
        minutes++;
        seconds = 0;
      }
      if (minutes >= 60) {
        hours++;
        minutes = 0;
      }
      counter.value =
          '${hours < 10 ? '0$hours' : hours}:${minutes < 10 ? '0$minutes' : minutes}:${seconds < 10 ? '0$seconds' : seconds}';
      seconds++;
      log('counter = ${counter.value}');
    });
  }

  pause() {
    _timer?.cancel();
    _timer = null;
    playing.value = true;
  }

  startActivity() async {
    playing.value = !playing.value;
    startTime.value = '${DateTime.now()}'.getTime();
    startDate.value = '${DateTime.now().format()}';
    isEditable = false.obs;

    await Database.writeCollection(
        id: babyId,
        data: {
          'startDate': '${DateTime.now()}',
          'startTime': startTime.value,
          'endTime': null,
          'totalTime': null,
          'endDate': null,
          'note': describeactivitController.text,
          'img': null,
          'counting': true,
        },
        parentTable: 'activity',
        childTable: 'activityLogs');
    play();
  }

  save() async {
    pause();
    endTime.value = '${DateTime.now()}'.getTime();
    endDate.value = '${DateTime.now().format()}';
    dynamic downloadUrl;
    if (selectedFile != null) {
      downloadUrl =
          await Database.uploadFile(file: selectedFile!, path: 'activity');
    }
    log('download url = $downloadUrl');
    await Database.updateCollection(
        id: babyId,
        docId: id,
        data: {
          'startTime': startTime.value,
          'endTime': endTime.value,
          'endDate': '${DateTime.now()}',
          'note': describeactivitController.text,
          'img': downloadUrl,
          'counting': false,
          'totalTime': counter.value
        },
        parentTable: 'activity',
        childTable: 'activityLogs');
    pause();
    snackbar(
        context: Get.context,
        message: 'Data Saved',
        icon: Icon(
          Icons.check_circle_outline_outlined,
          color: ColorConstant.pink400,
        ),
        color: ColorConstant.pinkA100);
    Get.back();
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleft2() {
    Get.back();
  }
}
