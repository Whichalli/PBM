
import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBluegray900 => ElevatedButton.styleFrom(
        backgroundColor: ColorConstant.blueGray900,
      );
  static ButtonStyle get fillBluegray90002 => ElevatedButton.styleFrom(
        backgroundColor: ColorConstant.blueGray90002,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            26,
          ),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}