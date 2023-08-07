import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pbm_app/core/utils/color_constant.dart';
import 'package:pbm_app/core/utils/size_utils.dart';

import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';
import 'package:pbm_app/widgets/widgets.dart';

import '../controller/breast_page_controller.dart';
import '../controller/viewroutine_controller.dart';

class BreastPage extends GetWidget<ViewroutineController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BreastController>(
      initState: (_) {},
      builder: (_) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: ColorConstant.pinkA100,
                    borderRadius: BorderRadius.circular(1000)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (_.left || _.right)
                      const SizedBox(
                        height: 22,
                      ),
                    Text('Total Time',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                    Obx(() => Text(
                          _.totalCount.value,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        )),
                    if (_.left || _.right) ...[
                      IconButton(
                          iconSize: 30,
                          onPressed: () {
                            _.right = false;
                            _.left = false;
                            _.pause();
                            _.update();
                          },
                          icon: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 500),
                            child: _.left || _.right
                                ? Icon(
                                    Icons.stop_circle_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  )
                                : Icon(
                                    Icons.play_arrow_rounded,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                          ))
                    ]
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(children: [
                Flexible(
                    child: Obx(() => CustomButton(
                          height: getVerticalSize(48),
                          width: getHorizontalSize(150),
                          text: _.leftCount.value.tr,
                          variant: ButtonVariant.FillWhiteA700,
                          padding: ButtonPadding.PaddingT7,
                          fontStyle: ButtonFontStyle.OpenSans24,
                          prefixWidget: Container(
                              child: Icon(Icons.keyboard_arrow_left_rounded)),
                        ))),
                const SizedBox(
                  width: 12,
                ),
                Flexible(
                    child: Obx(() => CustomButton(
                          height: getVerticalSize(48),
                          width: getHorizontalSize(150),
                          text: _.rightCount.value.tr,
                          variant: ButtonVariant.FillWhiteA700,
                          padding: ButtonPadding.PaddingT7,
                          fontStyle: ButtonFontStyle.OpenSans24,
                          suffixWidget: Container(
                              margin: getMargin(right: 16),
                              child: Icon(Icons.keyboard_arrow_right_rounded)),
                        )))
              ]),
              const SizedBox(
                height: 8,
              ),
              // if (_.loading)
              //   SizedBox(
              //     width: 20,
              //     height: 20,
              //     child: CircularProgressIndicator(
              //       strokeWidth: 3,
              //       color: ColorConstant.pinkA100,
              //       // minHeight: 2,
              //       backgroundColor: ColorConstant.pink50,
              //     ),
              //   ),
              Row(
                children: [
                  Flexible(
                    child: CustomButton2(
                      backgroundColor: ColorConstant.pinkA100,
                      color: Colors.white,
                      text: 'Left',
                      fontSize: 18,
                      height: 50,
                      onTap: _.loading
                          ? null
                          : () async {
                              // _.loading = true;
                              _.update();
                              _.leftStartDate.value = '${DateTime.now()}';
                              _.play(isLeft: true, isRight: false);
                              await _.feed();
                              _.counting = true;
                              // _.loading = false;
                              _.update();
                            },
                      icon: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        child: _.left
                            ? Icon(
                                Icons.av_timer_rounded,
                                size: 30,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.play_arrow_rounded,
                                size: 30,
                                color: Colors.white,
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: CustomButton2(
                      backgroundColor: ColorConstant.pinkA100,
                      color: Colors.white,
                      text: 'Right',
                      fontSize: 18,
                      height: 50,
                      onTap: _.loading
                          ? null
                          : () async {
                              // _.loading = true;
                              _.update();
                              _.rightStartDate.value = '${DateTime.now()}';
                              _.play(isLeft: false, isRight: true);
                              await _.feed();
                              _.counting = true;
                              // _.loading = true;
                              _.update();
                            },
                      icon: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        child: _.right
                            ? Icon(
                                Icons.av_timer_rounded,
                                size: 30,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.play_arrow_rounded,
                                size: 30,
                                color: Colors.white,
                              ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                  focusNode: FocusNode(),
                  maxLines: 5,
                  controller: _.breatTaskdescriptionController,
                  hintText: "Description".tr,
                  textInputAction: TextInputAction.done),
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
                            strokeWidth: 3,
                            color: ColorConstant.whiteA700,
                            // minHeight: 2,
                            backgroundColor: ColorConstant.pink50,
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
        );
      },
    );
  }
}
