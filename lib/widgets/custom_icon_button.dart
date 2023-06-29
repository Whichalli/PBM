import 'package:flutter/material.dart';
import 'package:pbm_care/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      case IconButtonPadding.PaddingAll20:
        return getPadding(
          all: 20,
        );
      case IconButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      default:
        return getPadding(
          all: 15,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.Brand:
        return ColorConstant.pinkA10019;
      case IconButtonVariant.OutlinePinkA100:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillGray9009b:
        return ColorConstant.gray9009b;
      case IconButtonVariant.FillPinkA100:
        return ColorConstant.pinkA100;
      case IconButtonVariant.OutlineBluegray100:
      case IconButtonVariant.GradientPinkA100LightblueA70089:
        return null;
      default:
        return ColorConstant.pinkA10019;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineBluegray100:
        return Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.Brand:
        return Border.all(
          color: ColorConstant.pinkA100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlinePinkA100:
        return Border.all(
          color: ColorConstant.pinkA100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillPinkA10019:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillGray9009b:
      case IconButtonVariant.GradientPinkA100LightblueA70089:
      case IconButtonVariant.FillPinkA100:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder27:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
      case IconButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case IconButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case IconButtonShape.CircleBorder32:
        return BorderRadius.circular(
          getHorizontalSize(
            32.00,
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

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.GradientPinkA100LightblueA70089:
        return LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.pinkA100,
            ColorConstant.lightBlueA70089,
          ],
        );
      case IconButtonVariant.FillPinkA10019:
      case IconButtonVariant.OutlineBluegray100:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.Brand:
      case IconButtonVariant.OutlinePinkA100:
      case IconButtonVariant.FillGray9009b:
      case IconButtonVariant.FillPinkA100:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder16,
  CircleBorder27,
  RoundedBorder10,
  CircleBorder24,
  CircleBorder32,
}
enum IconButtonPadding {
  PaddingAll15,
  PaddingAll6,
  PaddingAll20,
  PaddingAll10,
}
enum IconButtonVariant {
  FillPinkA10019,
  OutlineBluegray100,
  FillWhiteA700,
  Brand,
  OutlinePinkA100,
  FillGray9009b,
  GradientPinkA100LightblueA70089,
  FillPinkA100,
}
