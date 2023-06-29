import '../controller/home1_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeItemModel homeItemModelObj;

  var controller = Get.find<Home1Controller>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 8,
        ),
        padding: getPadding(
          left: 12,
          top: 10,
          right: 12,
          bottom: 10,
        ),
        decoration: AppDecoration.brand.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Obx(
                () => Text(
                  homeItemModelObj.dayTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtAlegreyaSansRegular12,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Obx(
                () => Text(
                  homeItemModelObj.dateTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtAlegreyaSansBold24,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 2,
              ),
              child: Text(
                "lbl_apr".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtAlegreyaSansRegular12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
