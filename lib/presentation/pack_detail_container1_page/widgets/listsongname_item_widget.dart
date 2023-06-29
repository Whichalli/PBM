import '../controller/pack_detail_container1_controller.dart';
import '../models/listsongname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';
import 'package:pbm_care/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListsongnameItemWidget extends StatelessWidget {
  ListsongnameItemWidget(
    this.listsongnameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListsongnameItemModel listsongnameItemModelObj;

  var controller = Get.find<PackDetailContainer1Controller>();

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
                    listsongnameItemModelObj.songnameTxt.value,
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
                  svgPath: ImageConstant.imgIcons8play,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 6,
                  bottom: 1,
                ),
                child: Text(
                  "lbl_name_of_song".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOpenSansRomanRegular17WhiteA700,
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
