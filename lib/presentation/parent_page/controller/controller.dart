import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/firebase/authentication.dart';
import '../../nurse_dashboard_page/pages/chat_screen/controller/chat_controller.dart';

class ParentDashboardScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  final pageController = PageController(initialPage: 0);
  Rx<int> currentPageIndex = Rx(0);
  Rx<String> userId = Rx(Authentication.getCurrentUserId() ?? '');
  final chatController = Get.put<ChatController>(ChatController());
}
