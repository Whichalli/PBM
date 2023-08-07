import 'package:get/get.dart';

import '../../../../core/app_export.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';

import 'package:flutter/material.dart';

import '../../../../theme/custom_button_style.dart';
import '../../../../theme/theme_helper.dart';
import '../../../../widgets/custom_elevated_button.dart';
import '../models/row_item_model.dart';

// import '../controller/pack_detail_composer_container_controller.dart';

// ignore: must_be_immutable
class RowItemWidget extends StatelessWidget {
  RowItemWidget(
    this.rowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RowItemModel rowItemModelObj;

  // var controller = Get.find<PackDetailComposerContainerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: (rowItemModelObj.titleTxt.value == 'Rain'
              ? AppDecoration.fillBlue5002
              : rowItemModelObj.titleTxt.value == 'Forest'
                  ? AppDecoration.fillGreenA400
                  : AppDecoration.fillBluegray90002)
          .copyWith(
        color: rowItemModelObj.titleTxt.value == 'Rain' ? Colors.blue : null,
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: getHorizontalSize(
        100,
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
                  svgPath: (rowItemModelObj.titleTxt.value == 'Rain')
                      ? ImageConstant.imgIcons8rainwatercatchment
                      : (rowItemModelObj.titleTxt.value == 'Forest')
                          ? ImageConstant.imgIcons8forest
                          : ImageConstant.imgIcons8wavelines,
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
            text: rowItemModelObj.titleTxt.value,
            margin: getMargin(
              top: 29,
            ),
            buttonStyle: CustomButtonStyles.fillBluegray900,
            buttonTextStyle: theme.textTheme.bodySmall!,
          ),
        ],
      ),
    );
  }
}
