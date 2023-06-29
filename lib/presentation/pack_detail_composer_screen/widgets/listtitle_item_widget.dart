import '../controller/pack_detail_composer_controller.dart';
import '../models/listtitle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';

// ignore: must_be_immutable
class ListtitleItemWidget extends StatelessWidget {
  ListtitleItemWidget(
    this.listtitleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListtitleItemModel listtitleItemModelObj;

  var controller = Get.find<PackDetailComposerController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
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
                  Obx(
                    () => Text(
                      listtitleItemModelObj.titleTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOpenSansRomanRegular17WhiteA700,
                    ),
                  ),
                  Obx(
                    () => Text(
                      listtitleItemModelObj.subtitleTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOpenSansRomanRegular12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 11,
                right: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: AppDecoration.fillBluegray90001.copyWith(
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
                                    color: ColorConstant.blueGray90001,
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
                        Container(
                          margin: getMargin(
                            top: 29,
                          ),
                          padding: getPadding(
                            left: 26,
                            top: 7,
                            right: 26,
                            bottom: 7,
                          ),
                          decoration: AppDecoration.fillBluegray90002,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 2,
                                ),
                                child: Obx(
                                  () => Text(
                                    listtitleItemModelObj.genderTxt.value,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSacramentoRegular10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: ColorConstant.blueGray90001,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Container(
                      height: getVerticalSize(
                        125,
                      ),
                      width: getHorizontalSize(
                        100,
                      ),
                      decoration: AppDecoration.fillBluegray90001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                125,
                              ),
                              width: getHorizontalSize(
                                100,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.indigoA200,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    62,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgIcons8ultrasound,
                                  height: getSize(
                                    28,
                                  ),
                                  width: getSize(
                                    28,
                                  ),
                                ),
                                Container(
                                  margin: getMargin(
                                    top: 29,
                                  ),
                                  padding: getPadding(
                                    left: 27,
                                    top: 8,
                                    right: 27,
                                    bottom: 8,
                                  ),
                                  decoration: AppDecoration.fillBluegray90002,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Obx(
                                        () => Text(
                                          listtitleItemModelObj
                                              .titleoneTxt.value,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtSacramentoRegular10,
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
                  ),
                  Container(
                    decoration: AppDecoration.fillBluegray90001.copyWith(
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
                                    color: ColorConstant.blueGray90001,
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
                        Container(
                          margin: getMargin(
                            top: 29,
                          ),
                          padding: getPadding(
                            left: 32,
                            top: 7,
                            right: 32,
                            bottom: 7,
                          ),
                          decoration: AppDecoration.fillBluegray90002,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                ),
                                child: Obx(
                                  () => Text(
                                    listtitleItemModelObj.titletwoTxt.value,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtSacramentoRegular10,
                                  ),
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
          ],
        ),
      ),
    );
  }
}
