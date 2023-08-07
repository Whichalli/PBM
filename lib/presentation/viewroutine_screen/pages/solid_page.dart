import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/core/utils/color_constant.dart';
import 'package:pbm_app/core/utils/size_utils.dart';
import 'package:pbm_app/presentation/viewroutine_screen/controller/viewroutine_controller.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';
import 'package:pbm_app/widgets/widgets.dart';
import 'package:water_bottle/water_bottle.dart';

import '../controller/solid_controller.dart';

class SolidPage extends GetWidget<ViewroutineController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SolidController>(
      init: SolidController(),
      initState: (_) {},
      builder: (controller) {
        return SizedBox(
          // height: getVerticalSize(700),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomButton2(
                        onTap: () => controller.onTapFeedingDate(),
                        text: controller.date ?? 'Feeding Date',
                        icon: Icon(Icons.calendar_month),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: CustomButton2(
                        onTap: () => controller.onTapFeedingTime(),
                        text: controller.time ?? 'Feeding Time',
                        icon: Icon(Icons.watch_later_outlined),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Solid Tracking & Food Journal',
                  style: AppStyle.txtInterSemiBold16,
                ),
                Text(
                    'Start tracking solids by picking one of the available features',
                    style: AppStyle.txtAlegreyaSansBold12
                        .copyWith(color: Colors.black54)),
                const SizedBox(
                  height: 18,
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: controller.food
                      .map((e) => Container(
                            decoration: BoxDecoration(
                                border: e['active']
                                    ? Border.all(
                                        color: ColorConstant.pinkA100, width: 2)
                                    : null,
                                borderRadius: BorderRadius.circular(8)),
                            padding:
                                e['active'] ? const EdgeInsets.all(4.0) : null,
                            child: CustomImageView(
                              onTap: () {
                                controller.onSelectFood(e: e);
                              },
                              width: 50,
                              height: 50,
                              svgPath: e['label'],
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 12,
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: controller.reaction
                      .map((e) => Container(
                            decoration: BoxDecoration(
                                border: e['active']
                                    ? Border.all(
                                        color: ColorConstant.yellow200,
                                        width: 2)
                                    : null,
                                borderRadius: BorderRadius.circular(1000)),
                            padding:
                                e['active'] ? const EdgeInsets.all(4.0) : null,
                            child: CustomImageView(
                              onTap: () => controller.onSelectReaction(
                                  index: controller.reaction.indexOf(e)),
                              width: 35,
                              height: 35,
                              imagePath: e['label'],
                            ),
                          ))
                      .toList(),
                ),
                Text(
                  controller.emojiDisplayText,
                  style: AppStyle.txtInterSemiBold16,
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      child: controller.selectedFile != null
                          ? CustomImageView(
                              file: controller.selectedFile,
                              radius: BorderRadius.circular(12),
                            )
                          : Icon(
                              Icons.image_outlined,
                              size: 30,
                              color: ColorConstant.pinkA100,
                            ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorConstant.pinkA100, width: 2),
                          borderRadius: BorderRadius.circular(12),
                          color: ColorConstant.pinkA10019),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CustomButton(
                        height: getVerticalSize(30),
                        width: getHorizontalSize(120),
                        onTap: () => controller.onTapSelectImage(),
                        text: "Upload Image".tr,
                        margin: getMargin(top: 4),
                        variant: ButtonVariant.FillPinkA100,
                        shape: ButtonShape.RoundedBorder26,
                        padding: ButtonPadding.PaddingAll9,
                        fontStyle: ButtonFontStyle.NunitoBold15),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                  controller: controller.solidTaskdescriptionController,
                  hintText: 'Add Note',
                  maxLines: 5,
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomButton(
                    height: getVerticalSize(50),
                    width: getHorizontalSize(500),
                    margin: getMargin(top: 14),
                    text: controller.loading ? null : "lbl_save".tr,
                    icon: controller.loading
                        ? SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : null,
                    onTap: controller.loading
                        ? null
                        : () async {
                            controller.loading = true;
                            controller.update();
                            await controller.onSave();
                            controller.loading = false;
                            controller.update();
                          },
                    variant: ButtonVariant.FillPinkA100,
                    shape: ButtonShape.CircleBorder32,
                    padding: ButtonPadding.PaddingAll4,
                    fontStyle: ButtonFontStyle.NunitoBold18,
                    alignment: Alignment.center),
              ],
            ),
          ),
        );
      },
    );
  }
}
