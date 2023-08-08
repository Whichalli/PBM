import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pbm_app/core/utils/color_constant.dart';
import 'package:pbm_app/core/utils/date_time_utils.dart';
import 'package:pbm_app/core/utils/size_utils.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';
import 'package:pbm_app/widgets/widgets.dart';
import 'package:water_bottle/water_bottle.dart';

import '../controller/bottle_controller.dart';
import '../controller/viewroutine_controller.dart';

class BottlePage extends GetWidget<ViewroutineController> {
  final sphereBottleRef = GlobalKey<SphericalBottleState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottleController>(
      builder: (_) {
        final waterSlider = Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.opacity),
              // SizedBox(width: 10),
              Expanded(
                child: Slider(
                  value: double.parse('${_.waterLevel}'),
                  max: 30.0,
                  min: 0.0,
                  onChanged: (value) {
                    sphereBottleRef.currentState?.waterLevel =
                        ((value ~/ 1) / 30);
                    _.waterLevel = (value ~/ 1);
                    _.update();
                  },
                ),
              ),
              Text('${_.waterLevel * 10} ml'),
            ],
          ),
        );
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
                        onTap: () => _.onTapFeedingDate(),
                        text: _.date != null
                            ? DateTime.parse(_.date!).getDate()
                            : 'Feeding Date',
                        icon: Icon(Icons.calendar_month),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: CustomButton2(
                        onTap: () => _.onTapFeedingTime(),
                        text: _.time ?? 'Feeding Time',
                        icon: Icon(Icons.watch_later_outlined),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                SizedBox(
                  width: 200,
                  height: 400,
                  child: SphericalBottle(
                    key: sphereBottleRef,
                    waterColor: ColorConstant.pink5001,
                    bottleColor: ColorConstant.pink5001,
                    capColor: Colors.grey.shade700,
                  ),
                ),
                // const SizedBox(
                //   height: 12,
                // ),
                waterSlider,
                SizedBox(
                  width: 250,
                  child: Row(
                    children: [
                      Flexible(
                        child: CustomButton2(
                          onTap: () {
                            _.isFormula = true;
                            _.update();
                          },
                          radius: BorderRadius.circular(20),
                          backgroundColor: _.isFormula
                              ? ColorConstant.pinkA100
                              : Colors.white,
                          color: _.isFormula ? ColorConstant.whiteA700 : null,
                          text: 'Formula',
                          fontSize: 18,
                          height: 50,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: CustomButton2(
                          onTap: () {
                            _.isFormula = false;
                            _.update();
                          },
                          radius: BorderRadius.circular(20),
                          backgroundColor: !_.isFormula
                              ? ColorConstant.pinkA100
                              : Colors.white,
                          color: !_.isFormula ? ColorConstant.whiteA700 : null,
                          text: 'Breast Milk',
                          fontSize: 18,
                          height: 50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                  controller: _.bootleTaskdescriptionController,
                  hintText: 'Add Note',
                  maxLines: 5,
                  readOnly: _.loading,
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomButton(
                    height: getVerticalSize(50),
                    width: getHorizontalSize(500),
                    margin: getMargin(top: 14),
                    text: _.loading ? null : "lbl_save".tr,
                    icon: _.loading
                        ? SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : null,
                    onTap: _.loading
                        ? null
                        : () async {
                            _.loading = true;
                            _.update();
                            await _.save();
                            _.loading = false;
                            _.update();
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
