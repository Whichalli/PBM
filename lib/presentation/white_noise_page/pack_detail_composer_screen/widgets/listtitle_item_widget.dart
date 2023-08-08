import '../../controller/controller.dart';
import '../controller/pack_detail_composer_controller.dart';
import '../models/listtitle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';

// ignore: must_be_immutable
class ListtitleItemWidget extends StatelessWidget {
  ListtitleItemWidget(
    this.listtitleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListtitleItemModel listtitleItemModelObj;

  var controller = Get.find<WhiteNoiseController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 120,
      // margin: getMargin(all: 8),
      decoration: AppDecoration.fillBluegray90001.copyWith(
        // color: Colors.white,
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              // height: getSize(
              //   28,
              // ),
              // width: getSize(
              //   28,
              // ),
              margin: getMargin(
                top: 36,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgIcons8lullaby,
                height: getSize(
                  28,
                ),
                width: getSize(
                  28,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          Container(
            margin: getMargin(
              top: 28,
            ),
            padding: getPadding(
              left: 32,
              top: 7,
              right: 32,
              bottom: 7,
            ),
            decoration: AppDecoration.fillBluegray90002
                .copyWith(borderRadius: BorderRadius.circular(20)),
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
                      listtitleItemModelObj.title.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAlegreyaSansBold14
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
