
import 'package:flutter/material.dart';

import 'constant_colors.dart';
import 'base_standard_resource.dart';

class ThemeResource {

  /// 白天主题资源
  static BaseStandardResource standardLightResource() {
    final light = ThemeData.light(useMaterial3: false).copyWith(
      brightness: Brightness.light,
      primaryColor: ConstantColors.primaryLight,
      colorScheme: const ColorScheme.light().copyWith(
        primary: ConstantColors.primaryLight,
        error: ConstantColors.errorLight,
      ),
    );

    final ThemeData lightTheme = light.copyWith(
      extensions: [ConstantColors().lightAppColors()],
    );

    return BaseStandardResource(
      lightTheme,
    );
  }

  /// 黑夜主题资源
  static BaseStandardResource standardDarkResource() {
    final dark = ThemeData.dark(useMaterial3: false).copyWith(
      brightness: Brightness.dark,
      primaryColor: ConstantColors.primaryDark,
      colorScheme: const ColorScheme.dark().copyWith(
        primary: ConstantColors.primaryDark,
        error: ConstantColors.errorDark,
      ),
    );

    final ThemeData darkTheme = dark.copyWith(
      extensions: [ConstantColors().darkAppColors()],
    );

    return BaseStandardResource(
      darkTheme,
    );
  }
}

