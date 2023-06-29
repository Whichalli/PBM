import '../controller/chat_controller.dart';
import '../models/chat_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';
import 'package:pbm_care/widgets/custom_button.dart';

// ignore: must_be_immutable
class ChatItemWidget extends StatelessWidget {
  ChatItemWidget(
    this.chatItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChatItemModel chatItemModelObj;

  var controller = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: getSize(
            44,
          ),
          width: getSize(
            44,
          ),
          margin: getMargin(
            top: 2,
            bottom: 1,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAvatar,
                height: getSize(
                  44,
                ),
                width: getSize(
                  44,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    22,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: getSize(
                    9,
                  ),
                  width: getSize(
                    9,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.greenA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        4,
                      ),
                    ),
                    border: Border.all(
                      color: ColorConstant.whiteA700,
                      width: getHorizontalSize(
                        1,
                      ),
                      strokeAlign: strokeAlignCenter,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 21,
            top: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_thanawan_chadee".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOpenSansRomanSemiBold16Gray800,
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Text(
                  "msg_this_was_how_i_helped".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOpenSans12,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 34,
            bottom: 1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_7_40".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOpenSansRomanSemiBold12Gray600,
              ),
              CustomButton(
                height: getVerticalSize(
                  26,
                ),
                width: getHorizontalSize(
                  27,
                ),
                text: "lbl_5".tr,
                margin: getMargin(
                  top: 3,
                ),
                shape: ButtonShape.CircleBorder13,
                padding: ButtonPadding.PaddingAll4,
                fontStyle: ButtonFontStyle.OpenSansRomanSemiBold12,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
