import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pbm_app/domain/firebase/authentication.dart';
import 'package:pbm_app/presentation/nurse_dashboard_page/pages/dashboard_screen/dashboard_screen.dart';
import 'package:pbm_app/presentation/parent_page/pages/booked_nurse/booked_nurse.dart';
import 'package:pbm_app/presentation/parent_page/pages/note_taking/note_taking_screen.dart';
import 'package:pbm_app/widgets/app_bar/bottom_bar/bottom_navbar.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/bottom_bar/bottom_bar_buttom_model.dart';
import 'pages/chat_screen/chat_screen.dart';
import 'controller/controller.dart';

// ignore: must_be_immutable
class NurseDashboardScreenPage
    extends GetWidget<NurseDashboardScreenController> {
  NurseDashboardScreenPage({Key? key}) : super(key: key);

//   @override
//   State<NurseDashboardScreenPage> createState() => _NurseDashboardScreenPageState();
// }

// class _NurseDashboardScreenPageState extends State<NurseDashboardScreenPage> {
  final List<Widget> _pages = [
    // const DashboardScreen(),
    // const BookedNurseScreen(field: 'employeeId'),
    // const ChatScreen(field: 'employeeId'),
    // const NoteTakingScreen(),
    Container(),
    // const PackDetailComposerScreen(),
    // const NowPlayingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => await Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: .3,
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "PBM Care",
              style: TextStyle(
                fontSize: 24,
                color: Color.fromARGB(200, 0, 0, 0),
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          actions: [
            Obx(() => StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                stream: FirebaseFirestore.instance
                    .collection('employee')
                    .doc('/${controller.userId.value}')
                    .snapshots(),
                builder: (context, snapshot) {
                  var data = snapshot.data?.data()!;
                  log('data = $data');
                  return !snapshot.hasData
                      ? CircularProgressIndicator(
                          color: ColorConstant.pinkA100,
                          strokeWidth: 2,
                        )
                      : GestureDetector(
                          onTap: () {
                            Authentication.logout();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: 50,
                              height: 40,
                              margin: getMargin(
                                right: 18,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1000),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          data!['photoUrl'] ?? ''))),
                            ),
                          ),
                        );
                }))
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller.pageController,
              children: _pages,
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
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.ease);
                    controller.currentPageIndex.value = index;
                  },
                  items: [
                    BottomBarButtonModel(
                        icon: const Icon(
                          Icons.house_outlined,
                          // weight: 6,
                        ),
                        text: 'Home',
                        activeIcon: const Icon(Icons.house)),
                    BottomBarButtonModel(
                        activeIcon: const Icon(Icons.handshake),
                        icon: const Icon(Icons.handshake_outlined),
                        text: 'Appointments'),
                    BottomBarButtonModel(
                        activeIcon: const Icon(Icons.chat),
                        icon: const Icon(Icons.chat_outlined),
                        text: 'Chat'),
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
