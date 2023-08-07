import 'package:flutter/material.dart';
import 'package:pbm_app/core/app_export.dart';
import 'package:pbm_app/widgets/custom_button.dart';

// ignore: must_be_immutable
class AppbarButton1 extends StatelessWidget {
  AppbarButton1({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomButton(
          width: getHorizontalSize(
            237,
          ),
          text: "lbl_booking_details".tr,
          shape: ButtonShape.Square,
          fontStyle: ButtonFontStyle.OpenSansRomanBold18Gray800,
          prefixWidget: Container(
            margin: getMargin(
              right: 30,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray800,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgArrowleft,
            ),
          ),
        ),
      ),
    );
  }
}
