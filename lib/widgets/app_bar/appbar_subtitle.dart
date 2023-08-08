import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';
=======
import 'package:pbm_app/core/app_export.dart';
>>>>>>> dev

// ignore: must_be_immutable
class AppbarSubtitle extends StatelessWidget {
  AppbarSubtitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

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
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPoppinsRegular30.copyWith(
            color: ColorConstant.black90001,
          ),
        ),
      ),
    );
  }
}
