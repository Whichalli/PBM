import 'package:flutter/material.dart';
import 'package:pbm_app/theme/theme_helper.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Title text style
  static get titleSmallCenturyGothicGray500 =>
      theme.textTheme.titleSmall!.centuryGothic.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallNunitoGray50 =>
      theme.textTheme.titleSmall!.nunito.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppinsAmber600 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.amber600,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOpenSansWhiteA70001 =>
      theme.textTheme.titleSmall!.openSans.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOpenSans =>
      theme.textTheme.titleLarge!.openSans.copyWith(
        fontSize: getFontSize(
          23,
        ),
      );
  static get titleLargeMetropolisBluegray90001 =>
      theme.textTheme.titleLarge!.metropolis.copyWith(
        color: appTheme.blueGray90001,
        fontSize: getFontSize(
          23,
        ),
        fontWeight: FontWeight.w800,
      );
  // Body text style
  static get bodySmallOpenSans => theme.textTheme.bodySmall!.openSans.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallOpenSansWhiteA70001 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.6),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeMetropolisGray600 =>
      theme.textTheme.bodyLarge!.metropolis.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallOpenSansIndigo5099 =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: appTheme.indigo5099,
        fontSize: getFontSize(
          12,
        ),
      );
  // Label text style
  static get labelLargeGray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
      );
}

extension on TextStyle {
  TextStyle get centuryGothic {
    return copyWith(
      fontFamily: 'Century Gothic',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get russoOne {
    return copyWith(
      fontFamily: 'Russo One',
    );
  }

  TextStyle get nunito {
    return copyWith(
      fontFamily: 'Nunito',
    );
  }

  TextStyle get metropolis {
    return copyWith(
      fontFamily: 'Metropolis',
    );
  }
}
