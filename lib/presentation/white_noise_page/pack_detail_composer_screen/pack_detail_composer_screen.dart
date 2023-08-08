import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pbm_app/domain/firebase/firebase.dart';

import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/app_bar/bottom_bar/bottom_bar_buttom_model.dart';
import '../../../widgets/app_bar/bottom_bar/bottom_navbar.dart';
import '../../../widgets/app_bar/custom_bottom_bar_2.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../controller/controller.dart';
import 'controller/pack_detail_composer_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';

import 'models/pack_detail_composer_model.dart';
import 'models/row_item_model.dart';
import 'widgets/row_item_widget.dart';

class PackDetailComposerScreen extends GetWidget<WhiteNoiseController> {
  const PackDetailComposerScreen({Key? key})
      : super(
          key: key,
        );

  // PackDetailComposerContainerController controller = Get.put(
  //     PackDetailComposerContainerController(
  //         PackDetailComposerContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorConstant.whiteA700,
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstant.pinkA100,
        titleTextStyle: TextStyle(fontSize: 20),
        title: Text(
          "Lullaby & Stories".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          // style: CustomTextStyles.titleLargeOpenSans,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
                controller.packDetailComposerModelObj.value.headings.length,
                (index) {
              PackDetailComposerModel model =
                  controller.packDetailComposerModelObj.value;
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "${model.headings[index]['headings']}".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: theme.textTheme.bodyLarge!.copyWith(
                                color: Colors.black54,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "${model.headings[index]['subHeading']}".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallOpenSansIndigo5099!
                                .copyWith(
                                    color: Colors.black54, fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: .5,
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: List.generate(
                          model.headings[index]['body'].length, (i) {
                        var e = model.headings[index]['body'][i];
                        return Container(
                          height: getVerticalSize(300),
                          padding: getPadding(all: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // width: 120,
                                color: Colors.white,
                                padding: getPadding(
                                    left: 8, right: 8, bottom: 4, top: 4),
                                // decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(20),
                                //     color: e['color']),
                                child: Row(
                                  children: [
                                    Text(
                                      '${e['title']}',
                                      style: const TextStyle(
                                          color: Colors.black54, fontSize: 20),
                                    ),
                                    const Spacer(),
                                    CustomImageView(
                                      svgPath: '${e['icon']}',
                                      color: Colors.black54,
                                      height: getSize(
                                        36,
                                      ),
                                      width: getSize(
                                        36,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                height: .5,
                              ),
                              Expanded(child: GetBuilder<WhiteNoiseController>(
                                builder: (_) {
                                  log("e['table'] = ${e['table']}");
                                  var data = controller.musicModelList.value
                                      .where((element) =>
                                          element.category.value == e['table'])
                                      .toList();
                                  return ListView.builder(
                                    itemCount: data.length,
                                    physics: const BouncingScrollPhysics(),
                                    addAutomaticKeepAlives: true,
                                    itemBuilder: (context, index) {
                                      MusicModel musicModel = data[index];
                                      return Obx(() => ListTile(
                                            onTap: () async {
                                              musicModel.loading.value = true;
                                              await controller
                                                  .onMusicTap(musicModel);
                                              musicModel.loading.value = false;
                                            },
                                            style: ListTileStyle.list,
                                            isThreeLine: false,
                                            title: Text(musicModel.title.value),
                                            subtitle:
                                                Text(musicModel.artist.value),
                                            trailing: musicModel
                                                        .isPlaying.value &&
                                                    !musicModel.loading.value
                                                ? Icon(
                                                    Icons
                                                        .play_circle_outline_rounded,
                                                    color:
                                                        ColorConstant.pinkA100,
                                                    size: 20,
                                                  )
                                                : musicModel.loading.value
                                                    ? SizedBox(
                                                        height: 10,
                                                        width: 10,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: ColorConstant
                                                              .pinkA100,
                                                          strokeWidth: 2,
                                                        ),
                                                      )
                                                    : const SizedBox(),
                                            leading: Container(
                                              width: 50,
                                              height: 50,
                                              clipBehavior: Clip.hardEdge,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color:
                                                      ColorConstant.pinkA100),
                                              child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgBabyMusic,
                                              ),
                                            ),
                                          ));
                                    },
                                  );
                                },
                              )),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              );
            }),
          )),
    );
  }
}
