import 'dart:async';
import 'dart:developer';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';
import 'package:pbm_app/presentation/tasktimerpage_screen/models/tasktimerpage_model.dart';

/// A controller class for the TasktimerpageScreen.
///
/// This class manages the state of the TasktimerpageScreen, including the
/// current tasktimerpageModelObj
class TasktimerpageController extends GetxController {
  Rx<TasktimerpageModel> tasktimerpageModelObj = TasktimerpageModel().obs;

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
        parentTable: 'sleep', childTable: 'sleepLogs', id: babyId);
    var sleepData =
        (await sleepCollection.where('counting', isEqualTo: true).get()).docs;
    log('loadTimer');
    sleepData.forEach((element) {
      startTime.value = element.data()['startTime'];
      endTime.value = element.data()['endTime'] ?? '';
      DateTime parsedDate = DateTime.parse(startTime.value);
      DateTime now = DateTime.now();
      hours = now.hour - parsedDate.hour;
      minutes = (now.hour * 60 + now.minute) -
          (parsedDate.hour * 60 + parsedDate.minute);
      var diff = now.difference(parsedDate).inSeconds;
      seconds = diff % 60;
      playing.value = true;
      id = element.id;
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
        parentTable: 'sleep',
        childTable: 'sleepLogs');
    play();
  }

  save() async {
    endTime.value = '${DateTime.now()}';
    await Database.updateCollection(
        id: babyId,
        docId: id,
        data: {
          'endTime': endTime.value,
          'counting': false,
          'endDate': '${DateTime.now()}',
          'totalTime': counter.value,
        },
        parentTable: 'sleep',
        childTable: 'sleepLogs');
    pause();
  }
}
