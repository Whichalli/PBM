import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {this.padding,
      this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onChange,
      this.isRightCheck = false,
      this.iconSize,
      this.value,
      this.groupValue,
      this.text,
      this.width,
      this.margin});

  RadioPadding? padding;

  RadioShape? shape;

  RadioVariant? variant;

  RadioFontStyle? fontStyle;

  Alignment? alignment;

  Function(String)? onChange;

  bool? isRightCheck;

  double? iconSize;

  String? value;

  String? groupValue;

  String? text;

  double? width;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildRadioButtonWidget(),
          )
        : _buildRadioButtonWidget();
  }

  _buildRadioButtonWidget() {
    return InkWell(
      onTap: () {
        onChange!(value!);
      },
      child: Container(
        width: width,
        margin: margin ?? EdgeInsets.zero,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: isRightCheck! ? getRightSideRadio() : getLeftSideRadio(),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  Widget getRightSideRadio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 8,
          ),
          child: getTextWidget(),
        ),
        getRadioWidget(),
      ],
    );
  }

  Widget getLeftSideRadio() {
    return Row(
      children: [
        getRadioWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 8,
          ),
          child: getTextWidget(),
        ),
      ],
    );
  }

  Widget getTextWidget() {
    return Text(
      text ?? "",
      textAlign: TextAlign.center,
      style: _setFontStyle(),
    );
  }

  Widget getRadioWidget() {
    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Radio<String>(
        value: value ?? "",
        groupValue: groupValue,
        activeColor: ColorConstant.pinkA100,
        onChanged: (value) {
          onChange!(value!);
        },
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case RadioFontStyle.ManropeBold14:
        return TextStyle(
          color: ColorConstant.gray90003,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        );
      case RadioFontStyle.NunitoRegular10:
        return TextStyle(
          color: ColorConstant.black90001,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.blueGray90003,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setPadding() {
    switch (padding) {
      case RadioPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      default:
        return null;
    }
  }

  _setColor() {
    switch (variant) {
      case RadioVariant.OutlinePinkA100:
        return ColorConstant.whiteA700;
      default:
        return null;
    }
  }

  _setBorder() {
    switch (variant) {
      case RadioVariant.OutlinePinkA100:
        return Border.all(
          color: ColorConstant.pinkA100,
          width: getHorizontalSize(
            2.00,
          ),
        );
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case RadioShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      default:
        return null;
    }
  }
}

enum RadioPadding {
  PaddingAll5,
}
enum RadioShape {
  RoundedBorder12,
}
enum RadioVariant {
  OutlinePinkA100,
}
enum RadioFontStyle {
  OpenSansRomanRegular15,
  ManropeBold14,
  NunitoRegular10,
}
