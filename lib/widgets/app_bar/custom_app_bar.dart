import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';
=======
import 'package:pbm_app/core/app_export.dart';
>>>>>>> dev

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    required this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
<<<<<<< HEAD
=======
    this.elevation,
    this.backgroundColor,
>>>>>>> dev
  }) : super(
          key: key,
        );

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;
<<<<<<< HEAD
=======
  double? elevation;
  Color? backgroundColor;
>>>>>>> dev

  @override
  Widget build(BuildContext context) {
    return AppBar(
<<<<<<< HEAD
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
=======
      elevation: elevation ?? 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor ?? Colors.transparent,
>>>>>>> dev
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFillPinkA100:
        return Container(
          height: getVerticalSize(
            102,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.pinkA100,
          ),
        );
      case Style.bgFillWhiteA700:
        return Container(
          height: getVerticalSize(
            55,
          ),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFillPinkA100,
  bgFillWhiteA700,
}
