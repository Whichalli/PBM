import '../controller/past_booking_details_controller.dart';
import '../models/listsearch1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';

// ignore: must_be_immutable
class Listsearch1ItemWidget extends StatelessWidget {
  Listsearch1ItemWidget(
    this.listsearch1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Listsearch1ItemModel listsearch1ItemModelObj;

  var controller = Get.find<PastBookingDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgSearchGray80018x18,
          height: getSize(
            18,
          ),
          width: getSize(
            18,
          ),
          margin: getMargin(
            bottom: 1,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 5,
            top: 1,
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              listsearch1ItemModelObj.waittimeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOpenSansRomanSemiBold12Gray600,
            ),
          ),
        ),
        Spacer(),
        Text(
          "lbl_4_0".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtOpenSansRomanSemiBold14PinkA100,
        ),
        CustomImageView(
          svgPath: ImageConstant.imgStar,
          height: getSize(
            14,
          ),
          width: getSize(
            14,
          ),
          margin: getMargin(
            left: 10,
            top: 2,
            bottom: 3,
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgStar,
          height: getSize(
            14,
          ),
          width: getSize(
            14,
          ),
          margin: getMargin(
            left: 5,
            top: 2,
            bottom: 3,
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgStar,
          height: getSize(
            14,
          ),
          width: getSize(
            14,
          ),
          margin: getMargin(
            left: 5,
            top: 2,
            bottom: 3,
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgStar,
          height: getSize(
            14,
          ),
          width: getSize(
            14,
          ),
          margin: getMargin(
            left: 5,
            top: 2,
            bottom: 3,
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgStarGray600,
          height: getSize(
            14,
          ),
          width: getSize(
            14,
          ),
          margin: getMargin(
            left: 5,
            top: 2,
            bottom: 3,
          ),
        ),
      ],
    );
  }
}
