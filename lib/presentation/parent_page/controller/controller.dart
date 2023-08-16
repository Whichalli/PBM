import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/firebase/authentication.dart';
import '../../nurse_dashboard_page/pages/chat_screen/chat_screen.dart';
import '../../nurse_dashboard_page/pages/chat_screen/controller/chat_controller.dart';
import '../pages/booked_nurse/booked_nurse.dart';
import '../pages/home_onboarding_container_screen/home_onboarding_container_screen.dart';
import '../pages/note_taking/note_taking_screen.dart';

class ParentDashboardScreenController extends GetxController {
  PageController? pageController;
  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
  }

  final List<Widget> pages = [
    const HomeOnboardingContainerScreen(),
    // const BookedNurseScreen(),
    const ChatScreen(field: 'parentId'),
    const NoteTakingScreen(),
    Container(),
  ];

  Rx<int> currentPageIndex = Rx(0);
  Rx<String> userId = Rx(Authentication.getCurrentUserId() ?? '');
  final chatController = Get.put<ChatController>(ChatController());
}
