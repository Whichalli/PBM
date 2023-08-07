import '../controller/favourites_with_selection_controller.dart';
import '../models/gridframe811_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';

// ignore: must_be_immutable
class Gridframe811ItemWidget extends StatelessWidget {
  Gridframe811ItemWidget(
    this.gridframe811ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Gridframe811ItemModel gridframe811ItemModelObj;

  var controller = Get.find<FavouritesWithSelectionController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          // padding: getPadding(
          //   left: 41,
          //   top: 10,
          //   right: 41,
          //   bottom: 10,
          // ),
          alignment: Alignment.center,
          decoration: AppDecoration.outlineGray30002.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder12,
              border: gridframe811ItemModelObj.active.value
                  ? Border.all(color: ColorConstant.pinkA100)
                  : null),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getVerticalSize(
                  38,
                ),
                width: getHorizontalSize(
                  27,
                ),
                margin: getMargin(
                  top: 1,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.yellow50,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      13,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Obx(
                  () => Text(
                    gridframe811ItemModelObj.typeTxt.value,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtManropeBold14,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
