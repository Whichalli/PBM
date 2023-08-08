import 'dart:async';
import 'dart:developer';
import 'dart:math' as Math;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';

import '../../../widgets/widgets.dart';
import '../models/pumping_model.dart';

/// A controller class for the PumpingScreen.
///
/// This class manages the state of the PumpingScreen, including the
/// current PumpingModelObj
class PumpingController extends GetxController {
  Rx<PumpingModel> PumpingModelObj = PumpingModel().obs;

  RxBool playing = false.obs;
  RxString counter = '00:00:00'.obs;
  RxString startTime = ''.obs;
  RxString endTime = ''.obs;
  RxString endDate = ''.obs;
  RxString startDate = ''.obs;
  RxString totalTime = ''.obs;
  String babyId = '';
  String id = '';

  RxBool loading = false.obs;

  Timer? _timer;
  int minutes = 0;
  int seconds = 1;
  int hours = 0;

  @override
  void onInit() {
    babyId = Get.arguments['babyId'];
    loadTimer();
    log('playing = ${playing.value}');
    // startTime.value = '00:00';
    super.onInit();
  }

  @override
  dispose() {
    pause();
    super.dispose();
  }

  @override
  void onClose() {
    pause();
    super.onClose();
  }

  loadTimer() async {
    var sleepCollection = Database.readCollection(
        parentTable: 'pumping', childTable: 'pumpingLogs', id: babyId);
    var sleepData =
        (await sleepCollection.where('counting', isEqualTo: true).get()).docs;
    log('loadTimer');
    sleepData.forEach((element) {
      log('emelemt = ${element.data()}');
      startTime.value = element.data()['startTime'];
      endTime.value = element.data()['endTime'] ?? '';
      DateTime parsedDate = DateTime.parse(startTime.value);
      DateTime now = DateTime.now();
      hours = now.hour - parsedDate.hour;
      minutes = (now.hour * 60 + now.minute) -
          (parsedDate.hour * 60 + parsedDate.minute);
      var diff = now.difference(parsedDate).inSeconds;
      seconds = diff % 60;
      log('seconds = $seconds');
      playing.value = true;
      id = element.id;
      play();
    });

    log('id = $id babyId = $babyId');
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
        seconds = 0;
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
  }

  sleep() async {
    playing.value = !playing.value;
    startTime.value = '${DateTime.now()}';
    await Database.writeCollection(
        id: babyId,
        data: {
          'startTime': startTime.value,
          'endTime': null,
          'totalTime': counter.value,
          'startDate': '${DateTime.now()}',
          'endDate': null,
          'counting': true,
        },
        parentTable: 'pumping',
        childTable: 'pumpingLogs');
    play();
  }

  save() async {
    pause();
    endTime.value = '${DateTime.now()}';
    if (playing.value) {
      await Database.updateCollection(
          id: babyId,
          docId: id,
          data: {
            'startTime': startTime.value,
            'endTime': endTime.value,
            'counting': false,
            'endDate': '${DateTime.now()}',
            'totalTime': counter.value,
          },
          parentTable: 'pumping',
          childTable: 'pumpingLogs');

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
  }
}
