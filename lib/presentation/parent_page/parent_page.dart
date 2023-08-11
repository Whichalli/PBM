import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/presentation/parent_page/pages/booked_nurse/booked_nurse.dart';
import 'package:pbm_app/presentation/parent_page/pages/home_onboarding_container_screen/home_onboarding_container_screen.dart';
import 'package:pbm_app/presentation/parent_page/pages/note_taking/note_taking_screen.dart';
import 'package:pbm_app/widgets/app_bar/bottom_bar/bottom_navbar.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/bottom_bar/bottom_bar_buttom_model.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/app_drawer.dart';
import '../nurse_dashboard_page/pages/chat_screen/chat_screen.dart';
import 'controller/controller.dart';

// ignore: must_be_immutable
class ParentDashboardScreenPage
    extends GetWidget<ParentDashboardScreenController> {
  ParentDashboardScreenPage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => await Future.value(false),
      child: Scaffold(
        key: _key,
        drawer: const AppDrawer(
          profileRoutes: AppRoutes.upcomingBookingFourScreen,
        ),
        appBar: CustomAppBar(
          elevation: 1,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          height: getVerticalSize(60),
          leadingWidth: 50,
          leading: AppbarImage(
              onTap: () async {
                _key.currentState!.openDrawer();
              },
              height: getSize(24),
              width: getSize(24),
              svgPath: ImageConstant.imgGrid,
              margin: getMargin(left: 26, top: 9, bottom: 9)),
          actions: [
            (StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                stream: FirebaseFirestore.instance
                    .collection('parent')
                    .doc('/${controller.userId.value}')
                    .snapshots(),
                builder: (context, snapshot) {
                  var data = snapshot.data?.data()!;
                  log('data = $data');
                  return !snapshot.hasData
                      ? CircularProgressIndicator(
                          color: ColorConstant.pinkA100,
                          strokeWidth: .1,
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomImageView(
                            url: data!['photoUrl'],
                            radius: BorderRadius.circular(200),
                            width: 48,
                            height: 50,
                            margin: getMargin(right: 10),
                            imagePath: ImageConstant.imageNotFound,
                          ),
                        );
                  // GestureDetector(
                  //   onTap: () {
                  //     Authentication.logout();
                  //   },
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(4.0),
                  //     child: Container(
                  //       width: 45,
                  //       height: 45,
                  //       margin: getMargin(
                  //         right: 18,
                  //       ),
                  //       decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(1000),
                  //           image: DecorationImage(
                  //               fit: BoxFit.cover,
                  //               image: NetworkImage(data!['photoUrl'] ?? ''))),
                  //     ),
                  //   ),
                  // );
                }))
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller.pageController,
              children: controller.pages,
            )),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Obx(() => AppBottomBar(
                  index: controller.currentPageIndex.value,
                  color: ColorConstant.greenA100,
                  onTap: (index) {
                    controller.pageController.animateToPage(index,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.ease);
                    controller.currentPageIndex.value = index;
                  },
                  items: [
                    BottomBarButtonModel(
                        icon: const Icon(Icons.house_outlined),
                        text: 'Home',
                        activeIcon: const Icon(Icons.house)),
                    BottomBarButtonModel(
                        activeIcon: const Icon(Icons.handshake),
                        icon: const Icon(Icons.handshake_outlined),
                        text: 'Appointments'),
                    BottomBarButtonModel(
                        activeIcon: const Icon(Icons.chat),
                        icon: const Icon(Icons.chat_outlined),
                        text: 'Messages'),
                    BottomBarButtonModel(
                        activeIcon: const Icon(Icons.note_alt_rounded),
                        icon: const Icon(Icons.note_alt_outlined),
                        text: 'Notes'),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
