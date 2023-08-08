import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/theme/custom_text_style.dart';
import '../controller/controller.dart';
import 'controller/now_playing_controller.dart';
import 'package:flutter/material.dart';

class NowPlayingScreen extends GetWidget<WhiteNoiseController> {
  const NowPlayingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstant.pinkA100,
        titleTextStyle: const TextStyle(fontSize: 20),
        title: const Text(
          "Now Playing",
          // maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          // style: CustomTextStyles.titleLargeOpenSans,
        ),
        centerTitle: true,
      ),
      body: SizedBox(
          width: double.maxFinite,
          // padding: getPadding(top: 53, bottom: 53),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              width: 350,
              height: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: ColorConstant.pinkA100),
              child: CustomImageView(
                imagePath: ImageConstant.imgBabyMusic,
              ),
            ),
            Obx(() => Text(
                "${controller.currentSong.value?.title ?? 'Song Title'}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOpenSansRomanRegular15Bluegray300.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54))),
            Obx(() => Text(
                "${controller.currentSong.value?.artist ?? 'Artist Name'}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOpenSans14Gray600)),
            Obx(() => Slider(
                value: controller.position.value.inSeconds.toDouble(),
                min: 0,
                thumbColor: Colors.transparent,
                activeColor: ColorConstant.pinkA100,
                max: controller.duration.value.inSeconds.toDouble(),
                onChanged: (value) {})),
            Padding(
                padding: getPadding(left: 33, top: 0, right: 33),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 23, bottom: 24),
                          child: Obx(() => Text(
                              controller.formatTime(controller.position.value),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelLargeGray400
                                  .copyWith(
                                      fontSize: 14.0,
                                      color: const Color.fromARGB(
                                          255, 207, 98, 226),
                                      letterSpacing:
                                          getHorizontalSize(0.48))))),
                      CustomImageView(
                          onTap: () {
                            controller.loading.value = true;
                            controller.onTapPrev(controller.musicModelList.value
                                .where((element) =>
                                    element.category.value ==
                                    controller
                                        .currentSong.value!.category.value)
                                .toList());
                            controller.loading.value = false;
                          },
                          svgPath: ImageConstant.imgSkipprevious,
                          height: getSize(35),
                          width: getSize(35),
                          margin: getMargin(top: 17, bottom: 17)),
                      // CustomImageView(
                      //     svgPath: ImageConstant.imgComponent3,
                      //     height: getSize(100),
                      //     width: getSize(100)),
                      Ink(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1000),
                            color: ColorConstant.pinkA100),
                        child: IconButton(
                            iconSize: 40,
                            color: Colors.white,
                            onPressed: () async {
                              controller.loading.value = true;
                              await controller.playSong(
                                  index: controller.playIndex);
                              controller.loading.value = false;
                            },
                            icon: Obx(() => (controller.loading.value)
                                ? const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 3,
                                    ),
                                  )
                                : Icon(
                                    controller.play.value
                                        ? Icons.pause
                                        : Icons.play_arrow_rounded,
                                  ))),
                      ),
                      CustomImageView(
                          onTap: () async {
                            controller.loading.value = true;
                            controller.onTapNext(controller.musicModelList.value
                                .where((element) =>
                                    element.category.value ==
                                    controller
                                        .currentSong.value!.category.value)
                                .toList());
                            controller.loading.value = false;
                          },
                          svgPath: ImageConstant.imgSkipnext,
                          height: getSize(35),
                          width: getSize(35),
                          margin: getMargin(top: 17, bottom: 17)),
                      Padding(
                          padding: getPadding(top: 23, bottom: 24),
                          child: Obx(() => Text(
                              controller.formatTime(controller.duration.value -
                                  controller.position.value),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.labelLargeGray400
                                  .copyWith(
                                      fontSize: 14.0,
                                      letterSpacing: getHorizontalSize(0.48)))))
                    ])),
          ])),
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapBtnArrowleft() {
    Get.back();
  }
}
