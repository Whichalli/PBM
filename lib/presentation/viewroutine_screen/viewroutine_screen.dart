import 'package:pbm_app/widgets/widgets.dart';

import 'controller/viewroutine_controller.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/app_bar/appbar_image.dart';
import 'package:pbm_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:pbm_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_text_form_field.dart';

class ViewroutineScreen extends GetWidget<ViewroutineController> {
  const ViewroutineScreen({Key? key}) : super(key: key);

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
            "lbl_feeding_f".tr,
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
        body: GetBuilder<ViewroutineController>(
          init: ViewroutineController(),
          initState: (controlle) {},
          builder: (controller) {
            return Container(
                width: getHorizontalSize(411),
                padding: getPadding(left: 29, right: 29, bottom: 8),
                margin: getMargin(top: 8, bottom: 5),
                child: Column(
                    // alignment: Alignment.bottomRight,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: controller.tabs
                                        .map(
                                          (e) => Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: CustomButton(
                                                      onTap: () {
                                                        controller.swapPage(
                                                            controller.tabs
                                                                .indexOf(e));
                                                      },
                                                      margin:
                                                          getMargin(all: 1.5),
                                                      padding: ButtonPadding
                                                          .PaddingAll4,
                                                      text: e['value'],
                                                      shape: ButtonShape
                                                          .RoundedBorder8,
                                                      variant: e['active']
                                                          ? null
                                                          : ButtonVariant
                                                              .FillWhiteA700,
                                                      fontStyle: !e['active']
                                                          ? ButtonFontStyle
                                                              .OpenSansRomanSemiBold14Gray600
                                                          : null),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                        .toList()),
                              ])),
                      // const Spacer(),
                      const SizedBox(
                        height: 24,
                      ),
                      Expanded(
                        child: PageView(
                          controller: controller.pageController,
                          physics: const NeverScrollableScrollPhysics(),
                          children: controller.pages,
                        ),
                      ),
                    ]));
          },
        ));
  }

  /// Navigates to the homeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeScreen.
  onTapMdiarrowleft() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
