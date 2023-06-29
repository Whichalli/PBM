import '../controller/pack_detail_swipe_up_unlock_controller.dart';
import '../models/listtype_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';
import 'package:pbm_care/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListtypeItemWidget extends StatelessWidget {
  ListtypeItemWidget(
    this.listtypeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListtypeItemModel listtypeItemModelObj;

  var controller = Get.find<PackDetailSwipeUpUnlockController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: getPadding(
                  top: 7,
                  bottom: 6,
                ),
                child: Obx(
                  () => Text(
                    listtypeItemModelObj.typeTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtOpenSansRomanRegular13Indigo5099,
                  ),
                ),
              ),
              CustomIconButton(
                height: 32,
                width: 32,
                margin: getMargin(
                  left: 11,
                ),
                variant: IconButtonVariant.FillGray9009b,
                padding: IconButtonPadding.PaddingAll6,
                child: CustomImageView(
                  svgPath: ImageConstant.imgIcons8lock,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 4,
                  bottom: 3,
                ),
                child: Obx(
                  () => Text(
                    listtypeItemModelObj.nameTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtOpenSansRomanRegular17WhiteA700,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              top: 11,
            ),
            child: Divider(
              height: getVerticalSize(
                1,
              ),
              thickness: getVerticalSize(
                1,
              ),
              color: ColorConstant.blueGray90002,
            ),
          ),
        ],
      ),
    );
  }
}
