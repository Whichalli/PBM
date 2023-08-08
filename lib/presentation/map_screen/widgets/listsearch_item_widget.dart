import '../controller/map_controller.dart';
import '../models/listsearch_item_model.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';
import 'package:pbm_care/widgets/custom_button.dart';
import 'package:pbm_care/widgets/custom_icon_button.dart';
=======
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';
import 'package:pbm_app/widgets/custom_icon_button.dart';
>>>>>>> dev

// ignore: must_be_immutable
class ListsearchItemWidget extends StatelessWidget {
  ListsearchItemWidget(
    this.listsearchItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListsearchItemModel listsearchItemModelObj;

  var controller = Get.find<MapController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.outlinePinkA100191,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 48,
              width: 48,
              margin: getMargin(
                bottom: 20,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgSearchGray800,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 10,
                top: 15,
                bottom: 32,
              ),
              child: Obx(
                () => Text(
                  listsearchItemModelObj.descriptionTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOpenSansRomanSemiBold14Gray800,
                ),
              ),
            ),
            Spacer(),
            CustomButton(
              height: getVerticalSize(
                33,
              ),
              width: getHorizontalSize(
                73,
              ),
              text: "lbl_any".tr,
              margin: getMargin(
                top: 7,
                bottom: 27,
              ),
              variant: ButtonVariant.OutlinePinkA100,
              shape: ButtonShape.RoundedBorder16,
              padding: ButtonPadding.PaddingT6,
              fontStyle: ButtonFontStyle.OpenSansRomanSemiBold14Gray800,
              suffixWidget: Container(
                margin: getMargin(
                  left: 5,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgArrowdown,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
