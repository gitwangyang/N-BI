
import 'package:flutter/material.dart';

import 'base_standard_resource.dart';


class ConstantColors {
  // ---------------------- light ----------------------
  static const Color primaryLight = Color(0xFFEED484);
  static const Color errorLight = Color(0xFFE4002C);
  static const Color warningLight = Color(0xFFFFD100);
  static const Color successLight = Color(0xFF029640);
  static const Color tcLight = Color(0xFF0D171A);
  static const Color bgcLight = Color(0xFFFFFFFF);

// ---------------------- dark ----------------------
  static const Color primaryDark = Color(0xFFEED484);
  static const Color errorDark = Color(0xFFFF453A);
  static const Color warningDark = Color(0xFFFFD60A);
  static const Color successDark = Color(0xFF30D148);
  static const Color tcDark = Color(0xFFFFFFFF);
  static const Color bgcDark = Color(0xFF101112);

  AppColorsExtension lightAppColors() => AppColorsExtension(
    primary: primaryLight,
    backgroundColors: AppBackgroundColors(
      bgc: bgcLight,
    ),
    fontColors: AppFontColors(
      tc: tcLight,
    ),
    tipsColors: AppTipsColors(
      error: errorLight,
      success: successLight,
      warning: warningLight,
    ),
    otherColors: AppOtherColors(
      divider: tcLight.withOpacity(0.1),
    ),
  );

  AppColorsExtension darkAppColors() => AppColorsExtension(
    primary: primaryDark,
    backgroundColors: AppBackgroundColors(
      bgc: bgcDark,
    ),
    fontColors: AppFontColors(
      tc: tcDark,
    ),
    tipsColors: AppTipsColors(
      error: errorDark,
      success: successDark,
      warning: warningDark,
    ),
    otherColors: AppOtherColors(
      divider: tcDark.withOpacity(0.08),
    ),
  );
}
