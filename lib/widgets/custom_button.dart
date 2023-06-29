import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonChildWidget(),
      ),
    );
  }

  _buildButtonChildWidget() {
    if (checkGradient()) {
      return Container(
        width: width ?? double.maxFinite,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: _buildButtonWithOrWithoutIcon(),
      );
    } else {
      return _buildButtonWithOrWithoutIcon();
    }
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildDecoration() {
    return BoxDecoration(
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _buildTextButtonStyle() {
    if (checkGradient()) {
      return TextButton.styleFrom(
        padding: EdgeInsets.zero,
      );
    } else {
      return TextButton.styleFrom(
        fixedSize: Size(
          width ?? double.maxFinite,
          height ?? getVerticalSize(40),
        ),
        padding: _setPadding(),
        backgroundColor: _setColor(),
        side: _setTextButtonBorder(),
        shadowColor: _setTextButtonShadowColor(),
        shape: RoundedRectangleBorder(
          borderRadius: _setBorderRadius(),
        ),
      );
    }
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT14_1:
        return getPadding(
          left: 2,
          top: 14,
          right: 2,
          bottom: 14,
        );
      case ButtonPadding.PaddingT14:
        return getPadding(
          left: 10,
          top: 14,
          right: 10,
          bottom: 14,
        );
      case ButtonPadding.PaddingT2:
        return getPadding(
          left: 2,
          top: 2,
          bottom: 2,
        );
      case ButtonPadding.PaddingT7:
        return getPadding(
          top: 7,
          right: 7,
          bottom: 7,
        );
      case ButtonPadding.PaddingT97:
        return getPadding(
          top: 97,
          right: 97,
          bottom: 97,
        );
      case ButtonPadding.PaddingT122:
        return getPadding(
          top: 122,
          right: 122,
          bottom: 122,
        );
      case ButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      case ButtonPadding.PaddingT6:
        return getPadding(
          left: 6,
          top: 6,
          bottom: 6,
        );
      case ButtonPadding.PaddingAll19:
        return getPadding(
          all: 19,
        );
      case ButtonPadding.PaddingAll27:
        return getPadding(
          all: 27,
        );
      case ButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      case ButtonPadding.PaddingT9:
        return getPadding(
          left: 9,
          top: 9,
          bottom: 9,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90019:
        return ColorConstant.pinkA100;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillPink400:
        return ColorConstant.pink400;
      case ButtonVariant.FillBluegray90001:
        return ColorConstant.blueGray90001;
      case ButtonVariant.FillOrangeA200:
        return ColorConstant.orangeA200;
      case ButtonVariant.White:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBluegray100_1:
        return ColorConstant.pinkA10019;
      case ButtonVariant.OutlineBluegray100:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillPinkA10019:
        return ColorConstant.pinkA10019;
      case ButtonVariant.OutlineGray80001:
        return ColorConstant.whiteA700;
      case ButtonVariant.GradientPinkA700Lightblue4002d:
      case ButtonVariant.OutlinePinkA100:
      case ButtonVariant.OutlinePinkA100_2:
      case ButtonVariant.OutlinePinkA100_1:
        return null;
      default:
        return ColorConstant.pinkA100;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.White:
        return BorderSide(
          color: ColorConstant.pinkA10019,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlinePinkA100:
        return BorderSide(
          color: ColorConstant.pinkA100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray100_1:
        return BorderSide(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray100:
        return BorderSide(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlinePinkA100_2:
        return BorderSide(
          color: ColorConstant.pinkA100,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineGray80001:
        return BorderSide(
          color: ColorConstant.gray80001,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlinePinkA100_1:
        return BorderSide(
          color: ColorConstant.pinkA100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillPinkA100:
      case ButtonVariant.OutlineBlack90019:
      case ButtonVariant.GradientPinkA700Lightblue4002d:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillPink400:
      case ButtonVariant.FillBluegray90001:
      case ButtonVariant.FillOrangeA200:
      case ButtonVariant.FillPinkA10019:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90019:
        return ColorConstant.black90019;
      case ButtonVariant.FillPinkA100:
      case ButtonVariant.GradientPinkA700Lightblue4002d:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillPink400:
      case ButtonVariant.FillBluegray90001:
      case ButtonVariant.FillOrangeA200:
      case ButtonVariant.White:
      case ButtonVariant.OutlinePinkA100:
      case ButtonVariant.OutlineBluegray100_1:
      case ButtonVariant.OutlineBluegray100:
      case ButtonVariant.OutlinePinkA100_2:
      case ButtonVariant.FillPinkA10019:
      case ButtonVariant.OutlineGray80001:
      case ButtonVariant.OutlinePinkA100_1:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case ButtonShape.RoundedBorder29:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
      case ButtonShape.CircleBorder32:
        return BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        );
      case ButtonShape.CircleBorder19:
        return BorderRadius.circular(
          getHorizontalSize(
            19.00,
          ),
        );
      case ButtonShape.CustomBorderBL30:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              30.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              30.00,
            ),
          ),
        );
      case ButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.CircleBorder13:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
      case ButtonShape.RoundedBorder4:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
      case ButtonShape.RoundedBorder22:
        return BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            26.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.RalewayBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NunitoExtraBold18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
        );
      case ButtonFontStyle.PoppinsRegular24:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.OpenSansLight24Black90001:
        return TextStyle(
          color: ColorConstant.black90001,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w300,
        );
      case ButtonFontStyle.OpenSans24:
        return TextStyle(
          color: ColorConstant.black90059,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.OpenSansItalicLight17:
        return TextStyle(
          color: ColorConstant.whiteA70001,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w300,
        );
      case ButtonFontStyle.OpenSansItalicLight17WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w300,
        );
      case ButtonFontStyle.OpenSansItalicLight17OrangeA200:
        return TextStyle(
          color: ColorConstant.orangeA200,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w300,
        );
      case ButtonFontStyle.OpenSansRomanBold18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.OpenSansRomanSemiBold14Gray600:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.OpenSansRomanSemiBold14Gray800:
        return TextStyle(
          color: ColorConstant.gray800,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.OpenSansRomanSemiBold14Gray90002:
        return TextStyle(
          color: ColorConstant.gray90002,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.OpenSans16:
        return TextStyle(
          color: ColorConstant.gray800,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.OpenSansRomanBold12:
        return TextStyle(
          color: ColorConstant.pinkA100,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.OpenSansRomanBold18Gray800:
        return TextStyle(
          color: ColorConstant.gray800,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.OpenSansRomanSemiBold14PinkA100:
        return TextStyle(
          color: ColorConstant.pinkA100,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.OpenSansRomanSemiBold18:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.OpenSansRomanBold16:
        return TextStyle(
          color: ColorConstant.gray800,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.OpenSansRomanSemiBold12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.ManropeBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterMedium18:
        return TextStyle(
          color: ColorConstant.gray80001,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterMedium18WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.NunitoBold18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RalewayMedium11:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            11,
          ),
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.NunitoBold15:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NunitoBold15PinkA100:
        return TextStyle(
          color: ColorConstant.pinkA100,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        );
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.White:
        return Border.all(
          color: ColorConstant.pinkA10019,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlinePinkA100:
        return Border.all(
          color: ColorConstant.pinkA100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray100_1:
        return Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray100:
        return Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlinePinkA100_2:
        return Border.all(
          color: ColorConstant.pinkA100,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineGray80001:
        return Border.all(
          color: ColorConstant.gray80001,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlinePinkA100_1:
        return Border.all(
          color: ColorConstant.pinkA100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillPinkA100:
      case ButtonVariant.OutlineBlack90019:
      case ButtonVariant.GradientPinkA700Lightblue4002d:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillPink400:
      case ButtonVariant.FillBluegray90001:
      case ButtonVariant.FillOrangeA200:
      case ButtonVariant.FillPinkA10019:
        return null;
      default:
        return null;
    }
  }

  checkGradient() {
    switch (variant) {
      case ButtonVariant.GradientPinkA700Lightblue4002d:
        return true;
      default:
        return false;
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.GradientPinkA700Lightblue4002d:
        return LinearGradient(
          begin: Alignment(
            0.14,
            0,
          ),
          end: Alignment(
            1.03,
            2.13,
          ),
          colors: [
            ColorConstant.pinkA700,
            ColorConstant.lightBlue4002d,
          ],
        );
      case ButtonVariant.FillPinkA100:
      case ButtonVariant.OutlineBlack90019:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillPink400:
      case ButtonVariant.FillBluegray90001:
      case ButtonVariant.FillOrangeA200:
      case ButtonVariant.White:
      case ButtonVariant.OutlinePinkA100:
      case ButtonVariant.OutlineBluegray100_1:
      case ButtonVariant.OutlineBluegray100:
      case ButtonVariant.OutlinePinkA100_2:
      case ButtonVariant.FillPinkA10019:
      case ButtonVariant.OutlineGray80001:
      case ButtonVariant.OutlinePinkA100_1:
        return null;
      default:
        return null;
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90019:
        return [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ];
      case ButtonVariant.FillPinkA100:
      case ButtonVariant.GradientPinkA700Lightblue4002d:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillPink400:
      case ButtonVariant.FillBluegray90001:
      case ButtonVariant.FillOrangeA200:
      case ButtonVariant.White:
      case ButtonVariant.OutlinePinkA100:
      case ButtonVariant.OutlineBluegray100_1:
      case ButtonVariant.OutlineBluegray100:
      case ButtonVariant.OutlinePinkA100_2:
      case ButtonVariant.FillPinkA10019:
      case ButtonVariant.OutlineGray80001:
      case ButtonVariant.OutlinePinkA100_1:
        return null;
      default:
        return null;
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder26,
  RoundedBorder8,
  RoundedBorder29,
  CircleBorder32,
  CircleBorder19,
  CustomBorderBL30,
  RoundedBorder16,
  CircleBorder13,
  RoundedBorder4,
  RoundedBorder22,
}
enum ButtonPadding {
  PaddingAll16,
  PaddingT14_1,
  PaddingT14,
  PaddingT2,
  PaddingT7,
  PaddingT97,
  PaddingT122,
  PaddingAll9,
  PaddingT6,
  PaddingAll19,
  PaddingAll27,
  PaddingAll4,
  PaddingT9,
}
enum ButtonVariant {
  FillPinkA100,
  OutlineBlack90019,
  GradientPinkA700Lightblue4002d,
  FillWhiteA700,
  FillPink400,
  FillBluegray90001,
  FillOrangeA200,
  White,
  OutlinePinkA100,
  OutlineBluegray100_1,
  OutlineBluegray100,
  OutlinePinkA100_2,
  FillPinkA10019,
  OutlineGray80001,
  OutlinePinkA100_1,
}
enum ButtonFontStyle {
  OpenSansRomanSemiBold14,
  RalewayBold16,
  NunitoExtraBold18,
  PoppinsRegular24,
  OpenSansLight24Black90001,
  OpenSans24,
  OpenSansItalicLight17,
  OpenSansItalicLight17WhiteA700,
  OpenSansItalicLight17OrangeA200,
  OpenSansRomanBold18,
  OpenSansRomanSemiBold14Gray600,
  OpenSansRomanSemiBold14Gray800,
  OpenSansRomanSemiBold14Gray90002,
  OpenSans16,
  OpenSansRomanBold12,
  OpenSansRomanBold18Gray800,
  OpenSansRomanSemiBold14PinkA100,
  OpenSansRomanSemiBold18,
  OpenSansRomanBold16,
  OpenSansRomanSemiBold12,
  ManropeBold16,
  InterMedium18,
  InterMedium18WhiteA700,
  NunitoBold18,
  RalewayMedium11,
  NunitoBold15,
  NunitoBold15PinkA100,
}
