import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pbm_app/presentation/white_noise_page/now_playing/now_playing_screen.dart';
import 'package:pbm_app/widgets/app_bar/bottom_bar/bottom_navbar.dart';

import '../../widgets/app_bar/bottom_bar/bottom_bar_buttom_model.dart';
import 'controller/controller.dart';
import 'pack_detail_composer_screen/pack_detail_composer_screen.dart';

// ignore: must_be_immutable
class WhiteNoisePage extends GetWidget<WhiteNoiseController> {
  WhiteNoisePage({Key? key}) : super(key: key);

//   @override
//   State<WhiteNoisePage> createState() => _WhiteNoisePageState();
// }

// class _WhiteNoisePageState extends State<WhiteNoisePage> {
  final List<Widget> _pages = [
    const PackDetailComposerScreen(),
    const NowPlayingScreen()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
                child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller.pageController,
              children: _pages,
            ))
          ],
        ),
        bottomNavigationBar: Obx(() => AppBottomBar(
              index: controller.currentPageIndex.value,
              onTap: (index) {
                controller.pageController.jumpToPage(index);
                controller.currentPageIndex.value = index;
              },
              items: [
                BottomBarButtonModel(
                    icon: const Icon(Icons.house_outlined),
                    text: 'Home',
                    activeIcon: const Icon(Icons.house)),

                BottomBarButtonModel(
                    activeIcon: Icon(Icons.music_note_rounded),
                    icon: Icon(Icons.music_note_outlined),
                    text: 'Listen'),

                // BottomBarButtonModel(
                //   icon: Icon(Icons.home),
                //   text: 'Home'
                // ),
              ],
            )));
  }
}
