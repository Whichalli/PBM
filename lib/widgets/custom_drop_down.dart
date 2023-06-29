import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.focusNode,
      this.autofocus = false,
      this.icon,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.items,
      this.onChanged,
      this.validator});

  DropDownShape? shape;

  DropDownPadding? padding;

  DropDownVariant? variant;

  DropDownFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  FocusNode? focusNode;

  bool? autofocus;

  Widget? icon;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  List<SelectionPopupModel>? items;

  Function(SelectionPopupModel)? onChanged;

  FormFieldValidator<SelectionPopupModel>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildDropDownWidget(),
          )
        : _buildDropDownWidget();
  }

  _buildDropDownWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: DropdownButtonFormField<SelectionPopupModel>(
        focusNode: focusNode,
        autofocus: autofocus!,
        icon: icon,
        style: _setFontStyle(),
        decoration: _buildDecoration(),
        items: items?.map((SelectionPopupModel item) {
          return DropdownMenuItem<SelectionPopupModel>(
            value: item,
            child: Text(
              item.title,
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        onChanged: (value) {
          onChanged!(value!);
        },
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
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case DropDownFontStyle.OpenSansRomanSemiBold16:
        return TextStyle(
          color: ColorConstant.gray800,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
      case DropDownFontStyle.OpenSansRomanRegular15:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray800,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case DropDownShape.RoundedBorder4:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case DropDownVariant.White:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.blueGray100,
            width: 1,
          ),
        );
      case DropDownVariant.OutlinePinkA10019:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.pinkA10019,
            width: 1,
          ),
        );
      case DropDownVariant.FillGray5001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case DropDownVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.pinkA100,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case DropDownVariant.White:
        return ColorConstant.whiteA700;
      case DropDownVariant.FillGray5001:
        return ColorConstant.gray5001;
      default:
        return ColorConstant.pinkA10019;
    }
  }

  _setFilled() {
    switch (variant) {
      case DropDownVariant.White:
        return true;
      case DropDownVariant.OutlinePinkA10019:
        return false;
      case DropDownVariant.FillGray5001:
        return true;
      case DropDownVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case DropDownPadding.PaddingT10:
        return getPadding(
          left: 10,
          top: 10,
          bottom: 10,
        );
      default:
        return getPadding(
          left: 14,
          top: 14,
          bottom: 14,
        );
    }
  }
}

enum DropDownShape {
  RoundedBorder16,
  RoundedBorder4,
}
enum DropDownPadding {
  PaddingT14,
  PaddingT10,
}
enum DropDownVariant {
  None,
  Brand,
  White,
  OutlinePinkA10019,
  FillGray5001,
}
enum DropDownFontStyle {
  OpenSansRomanSemiBold14,
  OpenSansRomanSemiBold16,
  OpenSansRomanRegular15,
}
