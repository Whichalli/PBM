import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/widgets/widgets.dart';

class BreastController extends GetxController {
  TextEditingController breatTaskdescriptionController =
      TextEditingController();
  String babyId = '';
  int totalHours = 0;
  int totalMinutes = 0;
  int totalSeconds = 0;

  int rightMinutes = 0;
  int rightSeconds = 0;

  int leftMinutes = 0;
  int leftSeconds = 0;

  bool right = false;
  bool left = false;

  RxString leftCount = '00:00'.obs;
  RxString rightCount = '00:00'.obs;
  RxString totalCount = '00:00:00'.obs;

  RxString leftStartDate = ''.obs;
  RxString rightStartDate = ''.obs;
  RxString startDate = ''.obs;

  bool counting = false;

  bool loading = false;
  String id = '';

  bool leftPLaying = false;
  bool rightPlaying = false;

  @override
  void onInit() async {
    babyId = Get.arguments['babyId'];
    await loadTimer();
    super.onInit();
  }

  @override
  void onClose() {
    pause();
    super.onClose();
    breatTaskdescriptionController.dispose();
  }

  Timer? _timer;
  play({required bool isLeft, required bool isRight}) async {
    left = isLeft;
    right = isRight;
    // counting = true;
    pause();
    update();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      leftPlay();
      rightPlay();

      log('isLeft $isLeft isRight $isRight');

      totalPlay();
      log('counter = ${totalCount.value}');
    });
  }

  loadTimer() async {
    var sleepCollection = Database.readCollection(
        parentTable: 'feeding', childTable: 'breastLogs', id: babyId);
    var sleepData =
        (await sleepCollection.where('counting', isEqualTo: true).get()).docs;
    log('loadTimer');
    sleepData.forEach((element) {
      log('emelemt = ${element.data()}');
      leftStartDate.value = element.data()['leftStartDate'] ?? '';
      rightStartDate.value = element.data()['rightStartDate'] ?? '';
      startDate.value = element.data()['startDate'] ?? '';

      leftSeconds = leftStartDate.value.isEmpty
          ? 0
          : leftStartDate.value.getDateDiffSec()['seconds'];
      rightSeconds = rightStartDate.value.isEmpty
          ? 0
          : rightStartDate.value.getDateDiffSec()['seconds'];
      totalSeconds = startDate.value.isEmpty
          ? 0
          : startDate.value.getDateDiffSec()['seconds'];

      leftMinutes = leftStartDate.value.isEmpty
          ? 0
          : leftStartDate.value.getDateDiffSec()['minutes'];
      rightMinutes = rightStartDate.value.isEmpty
          ? 0
          : rightStartDate.value.getDateDiffSec()['minutes'];
      totalMinutes = startDate.value.isEmpty
          ? 0
          : startDate.value.getDateDiffSec()['minutes'];

      left = element.data()['isLeft'] ?? false;
      right = element.data()['isRight'] ?? false;
      log('rightSeconds = $rightSeconds rightMinutes = $rightMinutes isRignt ${element.data()['isRight']}');
      id = element.id;
      play(isLeft: left, isRight: right);

      breatTaskdescriptionController.text = element.data()['note'] ?? '';
    });
  }

  pause() {
    _timer?.cancel();
    _timer = null;
  }

  leftPlay() {
    if (left) {
      leftSeconds++;
      if (leftSeconds >= 60) {
        leftMinutes++;
        leftSeconds = 0;
      }
    }
    leftCount.value =
        '${leftMinutes < 10 ? '0$leftMinutes' : leftMinutes}:${leftSeconds < 10 ? '0$leftSeconds' : leftSeconds}';
  }

  rightPlay() {
    if (right) {
      rightSeconds++;
      if (rightSeconds >= 60) {
        rightMinutes++;
        rightSeconds = 0;
      }
    }
    rightCount.value =
        '${leftMinutes < 10 ? '0$rightMinutes' : rightMinutes}:${rightSeconds < 10 ? '0$rightSeconds' : rightSeconds}';
  }

  totalPlay() {
    totalSeconds++;
    if (totalSeconds >= 60) {
      totalMinutes++;
      totalSeconds = 0;
    }
    if (totalMinutes >= 60) {
      totalMinutes = 0;
      totalSeconds = 0;
      totalHours++;
    }
    totalCount.value =
        '${totalHours < 10 ? '0$totalHours' : totalHours}:${totalMinutes < 10 ? '0$totalMinutes' : totalMinutes}:${totalSeconds < 10 ? '0$totalSeconds' : totalSeconds}';
  }

  feed() async {
    if (counting) {
      log('babyId = $babyId id = $id');
      await Database.updateCollection(
          id: babyId,
          docId: id,
          data: {
            'endDate': null,
            'leftStartDate': leftStartDate.value,
            'rightStartDate': rightStartDate.value,
            'leftEndDate': leftStartDate.value,
            'rightEndDate': rightStartDate.value,
            'counting': true,
            'isLeft': left,
            'isRight': right,
            'note': breatTaskdescriptionController.text
          },
          parentTable: 'feeding',
          childTable: 'breastLogs');
    } else {
      await Database.writeCollection(
          id: babyId,
          data: {
            'startDate': '${DateTime.now()}',
            'endDate': null,
            'leftStartDate': leftStartDate.value,
            'rightStartDate': rightStartDate.value,
            'counting': true,
            'isLeft': left,
            'isRight': right,
            'note': breatTaskdescriptionController.text
          },
          parentTable: 'feeding',
          childTable: 'breastLogs');
    }
  }

  save() async {
    pause();
    await Database.updateCollection(
        id: babyId,
        docId: id,
        data: {
          'endDate': '${DateTime.now()}',
          'counting': false,
          'isLeft': false,
          'isRight': false,
          'leftCount': leftCount.value,
          'rightCount': rightCount.value,
          'note': breatTaskdescriptionController.text
        },
        parentTable: 'feeding',
        childTable: 'breastLogs');
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
