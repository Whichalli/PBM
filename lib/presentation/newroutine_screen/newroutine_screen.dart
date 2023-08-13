import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/widgets.dart';
import 'controller/newroutine_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';

class NewroutineScreen extends GetWidget<NewroutineController> {
  const NewroutineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(50),
          leadingWidth: 80,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black87,
              )),
          centerTitle: true,
          title: Text(
            "lbl_diaper_f".tr,
            style: AppStyle.txtInterRegular16
                .copyWith(color: Colors.black87, fontSize: 20),
          ),
        ),
        body: SizedBox(
            // height: getVerticalSize(731),
            // width: getHorizontalSize(411),
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: getPadding(left: 16, right: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            CustomButton2(
              text: 'Date of Changing',
              height: 60,
              fontSize: 16,
              radius: BorderRadius.circular(12),
              icon: Obx(() => Text(
                    controller.date.value == DateTime(2017)
                        ? '-- -- --'.obs.value
                        : controller.date.value.getDate().obs.value,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  )),
              onTap: () async {
                var date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(DateTime.now().year - 10),
                    lastDate: DateTime.now());
                if (date != null) {
                  controller.date.value = date;
                }
              },
            ),
            CustomButton2(
              text: 'Time of Changing',
              height: 60,
              fontSize: 16,
              radius: BorderRadius.circular(12),
              icon: Obx(() => Text(
                    '${controller.time.value == TimeOfDay.fromDateTime(DateTime(2017)) ? '--:-- --' : controller.time.value.getTime()}'
                        .obs
                        .value,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  )),
              onTap: () async {
                var time = await showTimePicker(
                    context: context, initialTime: TimeOfDay.now());
                if (time != null) {
                  controller.time.value = time;
                }
              },
            ),
            Padding(
              padding: getPadding(top: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("msg_what_s_in_the_diaper".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:
                        AppStyle.txtAlegreyaSansBold14.copyWith(fontSize: 18)),
              ),
            ),
            CustomButton2(
              text: 'Poo',
              height: 60,
              fontSize: 16,
              radius: BorderRadius.circular(12),
              icon: Obx(() => CupertinoSwitch(
                  value: controller.isPoo.value,
                  activeColor: Colors.black,
                  onChanged: (value) {
                    controller.isPoo.value = value;
                  })),
            ),
            CustomButton2(
              text: 'Pee',
              height: 60,
              fontSize: 16,
              radius: BorderRadius.circular(12),
              icon: Obx(() => CupertinoSwitch(
                  value: controller.isPee.value,
                  activeColor: Colors.black,
                  onChanged: (value) {
                    controller.isPee.value = value;
                  })),
            ),
            Padding(
              padding: getPadding(top: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Poo Color',
                    style:
                        AppStyle.txtAlegreyaSansBold14.copyWith(fontSize: 20),
                  )),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 60,
              child: RotatedBox(
                quarterTurns: -1,
                // angle: 1,
                child: Obx(() => ListWheelScrollView(
                    magnification: 1.2,
                    useMagnifier: true,
                    physics: const BouncingScrollPhysics(),
                    itemExtent: 60,
                    onSelectedItemChanged: (value) {
                      controller.selectedIndex?.value = value;
                      log('value ${controller.selectedIndex?.value} value = ');
                    },
                    children: List.generate(controller.data.length, (index) {
                      return RotatedBox(
                          quarterTurns: -3,
                          child: Container(
                            width: 20,
                            height: 30,
                            margin: getMargin(right: 8),
                            alignment: Alignment.center,
                            decoration: index.obs == controller.selectedIndex
                                ? BoxDecoration(
                                    color: controller.data[index]['color'],
                                    border: Border.all(
                                        color: ColorConstant.pinkA100,
                                        width: 3),
                                    borderRadius: BorderRadius.circular(1000))
                                : BoxDecoration(
                                    color: controller.data[index]['color'],
                                    borderRadius: BorderRadius.circular(1000)),
                          ));
                    }))),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: CustomDropDown(
                // width: 150,
                margin: getMargin(all: 8),
                hintText: 'Consistency',
                onChanged: (value) {
                  controller.consistencyController.text = value.title;
                },
                validator: (value) {
                  if (value == null) {
                    return "Select a language";
                  }
                  return null;
                },
                variant: DropDownVariant.None,
                items: [
                  SelectionPopupModel(title: 'Running'),
                  SelectionPopupModel(title: 'Thick'),
                  SelectionPopupModel(title: 'Hard'),
                ],
              ),
            ),
            Container(
              margin: getMargin(top: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: CustomDropDown(
                // width: 150,
                margin: getMargin(all: 8),
                hintText: 'Cleared with ?',
                onChanged: (value) {
                  controller.clearedWithController.text = value.title;
                },
                validator: (value) {
                  if (value == null) {
                    return "Select a language";
                  }
                  return null;
                },
                variant: DropDownVariant.None,
                items: [
                  SelectionPopupModel(title: 'Water'),
                  SelectionPopupModel(title: 'Wipes'),
                  SelectionPopupModel(title: 'Cotton'),
                  SelectionPopupModel(title: 'Runny Water'),
                ],
              ),
            ),
            CustomTextFormField(
                // focusNode: FocusNode(),
                autofocus: false,
                controller: controller.describeactivitController,
                hintText: "Take note".tr,
                maxLines: 5,
                shape: TextFormFieldShape.RoundedBorder12,
                margin: getMargin(top: 16),
                textInputAction: TextInputAction.done,
                alignment: Alignment.center),
            Obx(() => CustomButton(
                  text: controller.loading.value ? null : 'Save',
                  icon: !controller.loading.value
                      ? null
                      : const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                            color: Colors.white,
                          ),
                        ),
                  onTap: () async {
                    controller.loading.value = true;
                    await controller.save();
                    controller.loading.value = false;
                  },
                  fontStyle: ButtonFontStyle.InterMedium18WhiteA700,
                  height: 60,
                  margin: getMargin(top: 36, bottom: 16),
                )),
          ]),
        )));
  }

  /// Navigates to the homeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeScreen.
  onTapMdiarrowleft3() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
