import 'package:flutter/material.dart';
import 'package:pbm_app/core/utils/size_utils.dart';
import 'package:pbm_app/theme/app_decoration.dart';
import 'package:pbm_app/theme/app_style.dart';

snackbar({
  required context,
  required String message,
  required Icon icon,
  required Color color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(children: [
        Container(
            child: icon,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100))),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            message,
            style: TextStyle(
              color: Colors.white,
            ),
            softWrap: true,
            overflow: TextOverflow.clip,
          ),
        )
      ]),
      backgroundColor: color,
    ),
  );
}

class CustomButton2 extends StatelessWidget {
  String? text;
  Widget? icon;
  double? height;
  double? width;
  double? fontSize;
  Color? backgroundColor;
  Color? color;
  FontWeight? fontWeight;
  BorderRadius? radius;
  EdgeInsetsGeometry ? padding;
  Function()? onTap;
  CustomButton2(
      {this.fontSize,
      this.fontWeight,
      this.width,
      this.radius,
      this.color,
      this.height,
      this.onTap,
      this.backgroundColor,
      this.text,
      this.icon,
      this.padding,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height,
          width: width,
          margin: getMargin(top: 12),
          padding: padding ?? getPadding(left: 16, right: 16, bottom: 8, top: 8),
          decoration: AppDecoration.white.copyWith(
              borderRadius: radius ?? BorderRadiusStyle.roundedBorder20,
              color: backgroundColor),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: getPadding(top: 5, bottom: 5),
                child: Text(text ?? '',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular16.copyWith(
                        fontSize: fontSize,
                        fontWeight: fontWeight,
                        color: color))),
            icon ?? SizedBox(),
          ])),
    );
  }
}
