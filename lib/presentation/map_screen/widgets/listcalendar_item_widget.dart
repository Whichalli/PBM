import '../controller/map_controller.dart';
import '../models/listcalendar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';
import 'package:pbm_care/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListcalendarItemWidget extends StatelessWidget {
  ListcalendarItemWidget(
    this.listcalendarItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListcalendarItemModel listcalendarItemModelObj;

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
                svgPath: ImageConstant.imgCalendar,
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
                  listcalendarItemModelObj.availabletodayTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOpenSansRomanSemiBold14Gray800,
                ),
              ),
            ),
            Spacer(),
            Container(
              height: getSize(
                18,
              ),
              width: getSize(
                18,
              ),
              margin: getMargin(
                top: 15,
                bottom: 35,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.pinkA10019,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    3,
                  ),
                ),
                border: Border.all(
                  color: ColorConstant.pinkA100,
                  width: getHorizontalSize(
                    1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
