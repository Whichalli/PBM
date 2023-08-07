import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as Math;

import 'package:file_picker/file_picker.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';
import 'package:pbm_app/widgets/widgets.dart';

import 'controller/routinefinishedpage_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

class RoutinefinishedpageScreen
    extends GetWidget<RoutinefinishedpageController> {
  const RoutinefinishedpageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray100,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorConstant.gray100,
          automaticallyImplyLeading: false,
          title: Text(
            "lbl_last_activity".tr,
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
              )),
        ),
        body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                // padding: getPadding(top: 0),
                child: Padding(
                    padding: getPadding(all: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: ColorConstant.pink400)),
                            padding: getPadding(all: 8),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                          onTap: (!controller.isEditable.value)
                                              ? null
                                              : () {
                                                  onTapDatetime();
                                                },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Start Date'),
                                              Container(
                                                  // margin: getMargin(left: 4, right: 27),
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 16,
                                                      right: 18,
                                                      bottom: 16),
                                                  decoration: AppDecoration
                                                      .outlineBlue400
                                                      .copyWith(
                                                          border: Border.all(
                                                              color:
                                                                  ColorConstant
                                                                      .pink400),
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2,
                                                                top: 4),
                                                            child: Obx(() => Text(
                                                                controller
                                                                    .startDate
                                                                    .value,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular16))),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCalendar,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                top: 1,
                                                                bottom: 1))
                                                      ])),
                                            ],
                                          )),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                          onTap: (!controller.isEditable.value)
                                              ? null
                                              : () {
                                                  onTapTime();
                                                },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Start Time'),
                                              Container(
                                                  // margin: getMargin(top: ),
                                                  padding: getPadding(all: 18),
                                                  decoration: AppDecoration
                                                      .outlineBlue400
                                                      .copyWith(
                                                          border: Border.all(
                                                              color:
                                                                  ColorConstant
                                                                      .pink400),
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2,
                                                                top: 1),
                                                            child: Obx(() => Text(
                                                                controller
                                                                    .startTime
                                                                    .value,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular16))),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgClock,
                                                            height: getSize(24),
                                                            width: getSize(24))
                                                      ])),
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapDatetime1();
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('End Date'),
                                              Container(
                                                  // margin: getMargin(left: 4, right: 27),
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 16,
                                                      right: 18,
                                                      bottom: 16),
                                                  decoration: AppDecoration
                                                      .outlineBlue400
                                                      .copyWith(
                                                          border: Border.all(
                                                              color:
                                                                  ColorConstant
                                                                      .pink400),
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2,
                                                                top: 4),
                                                            child: Obx(() => Text(
                                                                controller
                                                                    .endDate
                                                                    .value,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular16))),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCalendar,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            margin: getMargin(
                                                                top: 1,
                                                                bottom: 1))
                                                      ])),
                                            ],
                                          )),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapTime1();
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('End Time'),
                                              Container(
                                                  padding: getPadding(all: 18),
                                                  decoration: AppDecoration
                                                      .outlineBlue400
                                                      .copyWith(
                                                          border: Border.all(
                                                              color:
                                                                  ColorConstant
                                                                      .pink400),
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 2,
                                                                top: 1),
                                                            child: Obx(() => Text(
                                                                controller
                                                                    .endTime
                                                                    .value,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular16))),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgClock,
                                                            height: getSize(24),
                                                            width: getSize(24))
                                                      ])),
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 16),
                                  child: Column(
                                      // alignment: Alignment.bottomCenter,
                                      children: [
                                        GetBuilder<
                                            RoutinefinishedpageController>(
                                          builder: (_) {
                                            return Column(
                                              children: [
                                                if (!_.playing.value) ...[
                                                  CustomButton2(
                                                    text: 'Total time',
                                                    height: 60,
                                                    fontSize: 20,
                                                    icon: Obx(() => Text(
                                                          '${controller.totalTime.value.isEmpty ? '--:-- --' : controller.totalTime.value}',
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Text(
                                                          "OR Start Timer".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterSemiBold16)),
                                                  IconButton(
                                                    onPressed: () {
                                                      _.showTimer =
                                                          !_.showTimer;
                                                      _.update();
                                                    },
                                                    icon: _.showTimer
                                                        ? Transform.flip(
                                                            flipY: true,
                                                            child:
                                                                CustomImageView(
                                                              width: 30,
                                                              height: 30,
                                                              svgPath: ImageConstant
                                                                  .imgArrowdown,
                                                            ),
                                                          )
                                                        : CustomImageView(
                                                            width: 30,
                                                            height: 30,
                                                            svgPath: ImageConstant
                                                                .imgArrowdown,
                                                          ),
                                                  ),
                                                ],
                                                AnimatedSize(
                                                  duration: const Duration(
                                                      milliseconds: 500),
                                                  child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                height:
                                                                    _.showTimer
                                                                        ? 170
                                                                        : 0,
                                                                width: 170,
                                                                decoration: AppDecoration
                                                                    .brand
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder93),
                                                                child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      const SizedBox(
                                                                          height:
                                                                              22),
                                                                      Obx(() => Text(
                                                                          controller
                                                                              .counter
                                                                              .value,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle.txtOpenSansRomanSemiBold18.copyWith(
                                                                              color: Colors.white,
                                                                              fontSize: 32,
                                                                              letterSpacing: getHorizontalSize(1.0)))),
                                                                      Obx(() =>
                                                                          IconButton(
                                                                            onPressed: controller.playing.value
                                                                                ? null
                                                                                : () async {
                                                                                    controller.loading.value = true;
                                                                                    await controller.startActivity();
                                                                                    controller.loading.value = false;
                                                                                  },
                                                                            iconSize:
                                                                                50,
                                                                            icon: controller.playing.value
                                                                                ? Icon(
                                                                                    Icons.stop_circle_outlined,
                                                                                    color: Colors.white,
                                                                                  )
                                                                                : Icon(
                                                                                    Icons.play_arrow_rounded,
                                                                                    color: Colors.white,
                                                                                  ),
                                                                          ))
                                                                    ]))
                                                          ])),
                                                ),
                                                const SizedBox(
                                                  height: 12,
                                                ),
                                                Padding(
                                                    padding: getPadding(
                                                        // left: 23,
                                                        ),
                                                    child: Text(
                                                        "Description".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterSemiBold16)),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 70,
                                                      height: 70,
                                                      child: controller
                                                                  .selectedFile !=
                                                              null
                                                          ? CustomImageView(
                                                              file: controller
                                                                  .selectedFile,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                            )
                                                          : Icon(
                                                              Icons
                                                                  .image_outlined,
                                                              size: 30,
                                                              color:
                                                                  ColorConstant
                                                                      .pinkA100,
                                                            ),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color:
                                                                  ColorConstant
                                                                      .pinkA100,
                                                              width: 2),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          color: ColorConstant
                                                              .pinkA10019),
                                                    ),
                                                    const SizedBox(
                                                      width: 8,
                                                    ),
                                                    CustomButton(
                                                        height:
                                                            getVerticalSize(30),
                                                        width:
                                                            getHorizontalSize(
                                                                120),
                                                        onTap: () =>
                                                            onTapSelectImage(),
                                                        text: "Upload Image".tr,
                                                        margin:
                                                            getMargin(top: 4),
                                                        variant: ButtonVariant
                                                            .FillPinkA100,
                                                        shape: ButtonShape
                                                            .RoundedBorder26,
                                                        padding: ButtonPadding
                                                            .PaddingAll9,
                                                        fontStyle:
                                                            ButtonFontStyle
                                                                .NunitoBold15),
                                                  ],
                                                ),
                                                CustomTextFormField(
                                                    // focusNode: FocusNode(),
                                                    autofocus: false,
                                                    controller: controller
                                                        .describeactivitController,
                                                    hintText:
                                                        "msg_describe_activities"
                                                            .tr,
                                                    maxLines: 5,
                                                    margin: getMargin(top: 12),
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    alignment:
                                                        Alignment.center),
                                                CustomButton(
                                                  text: _.loading.value
                                                      ? null
                                                      : 'Save',
                                                  icon: !_.loading.value
                                                      ? null
                                                      : SizedBox(
                                                          width: 20,
                                                          height: 20,
                                                          child:
                                                              CircularProgressIndicator(
                                                            strokeWidth: 3,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                  onTap: () async {
                                                    _.loading.value = true;
                                                    _.update();
                                                    await _.save();
                                                    _.loading.value = false;
                                                    _.update();
                                                  },
                                                  fontStyle: ButtonFontStyle
                                                      .InterMedium18WhiteA700,
                                                  height: 60,
                                                  margin: getMargin(top: 36),
                                                ),
                                              ],
                                            );
                                          },
                                        )
                                      ]))),
                        ])))));
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapDatetime() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller
            .routinefinishedpageActivityModelObj.value.selectedInputTxt!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.startDate.value = dateTime.format(dateTimeFormatPattern);
      controller.getDateRanget();
    }
  }

  /// Displays a date picker dialog and updates the selected date in the
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapDatetime1() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller.routinefinishedpageActivityModelObj.value
            .selectedInputoneTxt!.value,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.routinefinishedpageActivityModelObj.value.selectedInputoneTxt!
          .value = dateTime;
      controller.endDate.value = dateTime.format(dateTimeFormatPattern);
      controller.getDateRanget();
    }
  }

  Future<void> onTapTime() async {
    TimeOfDay? startTime = await showTimePicker(
        context: Get.context!,
        initialTime: controller.startTime.value.isNotEmpty
            ? TimeOfDay(
                hour: controller.startTime.value.contains('AM')
                    ? int.parse(controller.startTime.value.split(':')[0])
                    : 12 + int.parse(controller.startTime.value.split(':')[0]),
                minute: int.parse(controller.startTime.value
                    .split(':')[1]
                    .replaceAll(' ', '')
                    .replaceAll('AM', '')
                    .replaceAll('PM', '')))
            : TimeOfDay.now());
    if (startTime != null) {
      controller.startTime.value = '${startTime.format(Get.context!)}';
      controller.getDateRanget();
    }
  }

  Future<void> onTapTime1() async {
    TimeOfDay? endTime = await showTimePicker(
        context: Get.context!,
        initialTime: controller.endTime.value.isNotEmpty
            ? TimeOfDay(
                hour: controller.endTime.value.contains('AM')
                    ? int.parse(controller.endTime.value.split(':')[0])
                    : 12 + int.parse(controller.endTime.value.split(':')[0]),
                minute: int.parse(controller.endTime.value
                    .split(':')[1]
                    .replaceAll(' ', '')
                    .replaceAll('AM', '')
                    .replaceAll('PM', '')))
            : TimeOfDay.now());
    if (endTime != null) {
      controller.endTime.value = '${endTime.format(Get.context!)}';
      controller.getDateRanget();
    }
  }

  onTapSelectImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (result != null) {
      controller.selectedFile = File(result.files.single.path!);
      controller.update();
    }
  }

  /// Navigates to the homeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeScreen.
  onTapMdiarrowleft2() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
