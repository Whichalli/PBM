import '../controller/upcoming_booking_two_controller.dart';
import '../models/listcreatefromf_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';

// ignore: must_be_immutable
class ListcreatefromfItemWidget extends StatelessWidget {
  ListcreatefromfItemWidget(
    this.listcreatefromfItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListcreatefromfItemModel listcreatefromfItemModelObj;

  var controller = Get.find<UpcomingBookingTwoController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        39,
      ),
      width: getHorizontalSize(
        335,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: getVerticalSize(
                39,
              ),
              width: getHorizontalSize(
                335,
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: ColorConstant.pinkA10019,
                    width: getHorizontalSize(
                      1,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: getPadding(
                left: 20,
                right: 20,
                bottom: 19,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                      bottom: 1,
                    ),
                    child: Obx(
                      () => Text(
                        listcreatefromfItemModelObj.typeTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOpenSansRomanSemiBold12Gray600,
                      ),
                    ),
                  ),
                  Text(
                    "lbl_50_aed2".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtOpenSansRomanSemiBold14Gray800,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
