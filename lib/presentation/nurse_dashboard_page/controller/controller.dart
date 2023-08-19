import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pbm_app/presentation/nurse_dashboard_page/pages/chat_screen/controller/chat_controller.dart';
import 'package:pbm_app/service/background.service.dart';

import '../../../domain/firebase/authentication.dart';

class NurseDashboardScreenController extends GetxController {
  final pageController = PageController(initialPage: 0);
  Rx<int> currentPageIndex = Rx(0);
  Rx<String> userId = Rx(Authentication.getCurrentUserId() ?? '');
  final chatController = Get.put<ChatController>(ChatController());
  // late Timer _timer;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    BookingProcess.updateBookingStatus(field: 'employeeId');
    Stream.periodic(const Duration(minutes: 1), (timer) {
      BookingProcess.updateBookingStatus(field: 'employeeId');
    });
  }
}
