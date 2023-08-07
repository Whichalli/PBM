import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/pack_detail_composer_container_controller.dart';
import 'model/pack_detail_composer_container_model.dart';
import 'model/row_item_model.dart';
import 'package:flutter/material.dart';

import 'widgets/row_item_widget.dart';

class PackDetailComposerContainerPage extends StatelessWidget {
  PackDetailComposerContainerPage({Key? key})
      : super(
          key: key,
        );

  PackDetailComposerContainerController controller = Get.put(
      PackDetailComposerContainerController(
          PackDetailComposerContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: ColorConstant.pinkA100,
      body: Container(
        width: double.maxFinite,
        decoration: AppDecoration.brand,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 4,
                top: 30,
                right: 4,
                bottom: 30,
              ),
              decoration: AppDecoration.brand,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      108,
                    ),
                    margin: getMargin(
                      bottom: 4,
                    ),
                    child: Text(
                      "msg_lullaby_stories".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAlegreyaSansBold14,
                    ),
                  ),
                  CustomElevatedButton(
                    width: getHorizontalSize(
                      148,
                    ),
                    height: getVerticalSize(
                      52,
                    ),
                    text: "lbl_go_to_profile".tr,
                    margin: getMargin(
                      left: 98,
                      top: 18,
                    ),
                    buttonStyle: CustomButtonStyles.fillBluegray90002,
                    buttonTextStyle: AppStyle.txtAlegreyaSansBold14
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: getMargin(
                top: 10,
              ),
              padding: getPadding(
                left: 16,
                right: 16,
              ),
              decoration: AppDecoration.brand,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 27,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_child".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAlegreyaSansBold24,
                        ),
                        Text(
                          "msg_quickly_stabilize".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAlegreyaSansBold14,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 42,
                      top: 11,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: getMargin(
                            top: 1,
                          ),
                          decoration: AppDecoration.fill.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: getSize(
                                  28,
                                ),
                                width: getSize(
                                  28,
                                ),
                                margin: getMargin(
                                  top: 36,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        height: getSize(
                                          1,
                                        ),
                                        width: getSize(
                                          1,
                                        ),
                                        margin: getMargin(
                                          left: 13,
                                          top: 13,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.blueGray90002,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgIcons8girl,
                                      height: getSize(
                                        28,
                                      ),
                                      width: getSize(
                                        28,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                              CustomElevatedButton(
                                width: getHorizontalSize(
                                  100,
                                ),
                                height: getVerticalSize(
                                  31,
                                ),
                                text: "lbl_audio_stories".tr,
                                margin: EdgeInsets.only(top: 29),
                                buttonStyle:
                                    CustomButtonStyles.fillBluegray900,
                                buttonTextStyle: AppStyle.txtAlegreyaSansBold14,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 45,
                          ),
                          decoration: AppDecoration.fill1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: getSize(
                                  28,
                                ),
                                width: getSize(
                                  28,
                                ),
                                margin: getMargin(
                                  top: 36,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        height: getSize(
                                          1,
                                        ),
                                        width: getSize(
                                          1,
                                        ),
                                        margin: getMargin(
                                          left: 13,
                                          top: 13,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.pinkA100,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgIcons8lullaby,
                                      height: getSize(
                                        28,
                                      ),
                                      width: getSize(
                                        28,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                              CustomElevatedButton(
                                width: getHorizontalSize(
                                  100,
                                ),
                                height: getVerticalSize(
                                  32,
                                ),
                                text: "lbl_lullaby".tr,
                                margin: getMargin(
                                  top: 29,
                                ),
                                buttonStyle:
                                    CustomButtonStyles.fillBluegray900,
                                buttonTextStyle: AppStyle.txtAlegreyaSansBold14,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                top: 17,
                right: 1,
                bottom: 5,
              ),
              padding: getPadding(
                left: 15,
                right: 15,
              ),
              decoration: AppDecoration.brand,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 28,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_nature".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAlegreyaSansBold24
                        ),
                        Text(
                          "msg_it_will_allow_you".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAlegreyaSansBold14,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(
                      136,
                    ),
                    child: Column(
                      children: [
                        Obx(
                          () => ListView.separated(
                            padding: getPadding(
                              top: 11,
                              right: 12,
                            ),
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                width: getHorizontalSize(
                                  16,
                                ),
                              );
                            },
                            itemCount: controller
                                .packDetailComposerContainerModelObj
                                .value
                                .rowItemList
                                .value
                                .length,
                            itemBuilder: (context, index) {
                              RowItemModel model = controller
                                  .packDetailComposerContainerModelObj
                                  .value
                                  .rowItemList
                                  .value[index];
                              return RowItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}