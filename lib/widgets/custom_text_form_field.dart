import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:pbm_care/core/app_export.dart';
=======
import 'package:pbm_app/core/app_export.dart';
>>>>>>> dev

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.autofocus = false,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
<<<<<<< HEAD
      this.validator});

  TextFormFieldShape? shape;
=======
      this.readOnly,
      this.onTap,
      this.validator});

  TextFormFieldShape? shape;
  Function()? onTap;

  bool? readOnly;
>>>>>>> dev

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
<<<<<<< HEAD
        controller: controller,
=======
        onTap: onTap,
        controller: controller,
        readOnly: readOnly ?? false,
>>>>>>> dev
        focusNode: focusNode,
        autofocus: autofocus!,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.OpenSansRomanSemiBold15:
        return TextStyle(
          color: ColorConstant.blueGray90003,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.OpenSansRomanRegular15:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.OpenSans14:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.OpenSansRomanRegular15Bluegray90003:
        return TextStyle(
          color: ColorConstant.blueGray90003,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.OpenSansRomanSemiBold12:
        return TextStyle(
          color: ColorConstant.gray800,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.ManropeBold14:
        return TextStyle(
          color: ColorConstant.gray90003,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        );
      case TextFormFieldFontStyle.ManropeMedium15:
        return TextStyle(
          color: ColorConstant.gray50001,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.NunitoSemiBold10:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.NunitoBold12:
        return TextStyle(
          color: ColorConstant.whiteA7004c,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder4:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
      case TextFormFieldShape.RoundedBorder21:
        return BorderRadius.circular(
          getHorizontalSize(
            21.00,
          ),
        );
      case TextFormFieldShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case TextFormFieldShape.RoundedBorder25:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.FillGray5001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
<<<<<<< HEAD
=======
        case TextFormFieldVariant.OutlinePinkA100:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(color: ColorConstant.pinkA100),
        );
>>>>>>> dev
      case TextFormFieldVariant.OutlineGray30002:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray30002,
            width: 2,
          ),
        );
      case TextFormFieldVariant.OutlineGray10001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray10001,
            width: 2,
          ),
        );
      case TextFormFieldVariant.Brand:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillGray5001:
        return ColorConstant.gray5001;
      case TextFormFieldVariant.OutlineGray30002:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.OutlineGray10001:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.Brand:
        return ColorConstant.pinkA100;
      default:
        return ColorConstant.pinkA10019;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.FillGray5001:
        return true;
      case TextFormFieldVariant.OutlineGray30002:
        return true;
      case TextFormFieldVariant.OutlineGray10001:
        return true;
      case TextFormFieldVariant.Brand:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      case TextFormFieldPadding.PaddingT18:
        return getPadding(
          left: 12,
          top: 18,
          bottom: 18,
        );
      case TextFormFieldPadding.PaddingT17:
        return getPadding(
          left: 12,
          top: 17,
          right: 12,
          bottom: 17,
        );
      case TextFormFieldPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      case TextFormFieldPadding.PaddingT10:
        return getPadding(
          left: 10,
          top: 10,
          bottom: 10,
        );
      default:
        return getPadding(
          all: 19,
        );
    }
  }
}

enum TextFormFieldShape {
  CircleBorder28,
  RoundedBorder4,
  RoundedBorder21,
  RoundedBorder12,
  RoundedBorder25,
}
<<<<<<< HEAD
enum TextFormFieldPadding {
  PaddingAll19,
=======

enum TextFormFieldPadding {
  PaddingAll19,
  PaddingAll14,
>>>>>>> dev
  PaddingAll9,
  PaddingT18,
  PaddingT17,
  PaddingAll4,
  PaddingT10,
}
<<<<<<< HEAD
=======

>>>>>>> dev
enum TextFormFieldVariant {
  None,
  FillPinkA10019,
  FillGray5001,
  OutlineGray30002,
  OutlineGray10001,
  Brand,
<<<<<<< HEAD
}
=======
  OutlinePinkA100,
}

>>>>>>> dev
enum TextFormFieldFontStyle {
  OpenSans12,
  OpenSansRomanSemiBold15,
  OpenSansRomanRegular15,
  OpenSans14,
  OpenSansRomanRegular15Bluegray90003,
  OpenSansRomanSemiBold12,
  ManropeBold14,
  ManropeMedium15,
  NunitoSemiBold10,
  NunitoBold12,
}
