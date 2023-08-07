import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pbm_app/presentation/nurse_dashboard_page/pages/dashboard_screen/dashboard_screen.dart';
import 'package:pbm_app/widgets/app_bar/bottom_bar/bottom_navbar.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/bottom_bar/bottom_bar_buttom_model.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../chat_screen/chat_screen.dart';
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
    const DashboardScreen(),
    const ChatScreen(),
    Container(),
    Container(),
    // const PackDetailComposerScreen(),
    // const NowPlayingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => await Future.value(false),
      child: Scaffold(
        appBar: CustomAppBar(
            height: getVerticalSize(47),
            title: Padding(
                padding: getPadding(left: 44),
                child: Obx(() => (controller.userId.value.isEmpty)
                    ? Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Hello ".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtNunitoBold15.copyWith(
                                letterSpacing: getHorizontalSize(0.6))))
                    : StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                        stream: FirebaseFirestore.instance
                            .collection('employee')
                            .doc('/${controller.userId.value}')
                            .snapshots(),
                        builder: (context, snapshot) {
                          return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        "Hello \n${snapshot.data?.data()?['name'] ?? ''}"
                                            .capitalize!,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoBold15
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.6)))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(right: 61),
                                        child: Text(
                                            "${snapshot.data?.data()?['profession']}"
                                                .capitalize!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtNunitoRegular10Black90099
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.4)))))
                              ]);
                        }))),
            actions: [
              Obx(() => (controller.userId.value.isEmpty)
                  ? CircularProgressIndicator(
                      color: ColorConstant.pinkA100,
                      strokeWidth: 2,
                    )
                  : StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                      stream: FirebaseFirestore.instance
                          .collection('employee')
                          .doc('/${controller.userId.value}')
                          .snapshots(),
                      builder: (context, snapshot) {
                        return CustomImageView(
                            url: snapshot.data?.data()?['photoUrl'],
                            fit: BoxFit.cover,
                            imagePath: ImageConstant.imageNotFound,
                            height: getSize(39),
                            width: getSize(39),
                            border: Border.all(color: Colors.black45),
                            radius:
                                BorderRadius.circular(getHorizontalSize(100)),
                            margin: getMargin(
                                left: 31, top: 4, right: 31, bottom: 4));
                      }))
            ]),
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
                        icon: const Icon(Icons.house_outlined),
                        text: 'Home',
                        activeIcon: const Icon(Icons.house)),
                    BottomBarButtonModel(
                        activeIcon: const Icon(Icons.chat),
                        icon: const Icon(Icons.chat_outlined),
                        text: 'Chat'),
                    BottomBarButtonModel(
                        activeIcon: const Icon(Icons.book_online),
                        icon: const Icon(Icons.book_online_outlined),
                        text: 'Bookings'),
                    BottomBarButtonModel(
                        activeIcon: const Icon(Icons.account_circle_rounded),
                        icon: const Icon(Icons.account_circle_outlined),
                        text: 'Profile'),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
