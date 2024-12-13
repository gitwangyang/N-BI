
import 'package:flutter/material.dart';

/// 主题资源基类
abstract class IResource {}

abstract class IStandardResource implements IResource {
  ///获取flutter material 定义的ThemeData
  ThemeData? get themeData;

  /// 主题色
  Color get primary;

  /// 背景色
  Color get bgc;

  /// 字体色
  Color get tc;

  /// 错误色
  Color get error;

  /// 警告色
  Color get warning;

  /// 成功色
  Color get success;

  /// 分割线
  Color get divider;
}

/// 基础实现
class BaseStandardResource implements IStandardResource {
  /// 默认构造器
  BaseStandardResource(this.themeData);

  @override
  final ThemeData? themeData;

  @override
  Color get primary => themeData?.appColors?.primary ?? const Color(0xFFEED484);

  @override
  Color get bgc =>
      themeData?.appColors?.backgroundColors.bgc ?? const Color(0xFF0D171A);

  @override
  Color get divider =>
      themeData?.appColors?.otherColors.divider ?? const Color(0xFFFFFFFF);

  @override
  Color get error =>
      themeData?.appColors?.tipsColors.error ?? const Color(0xFFE4002C);

  @override
  Color get success =>
      themeData?.appColors?.tipsColors.success ?? const Color(0xFF029640);

  @override
  Color get tc =>
      themeData?.appColors?.fontColors.tc ?? const Color(0xFFFFFFFF);

  @override
  Color get warning => themeData?.appColors?.primary ?? const Color(0xFFFFD100);

}

///
extension AppThemeExtension on ThemeData {
  ///
  AppColorsExtension? get appColors => extension<AppColorsExtension>();
}

///
class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  ///
  AppColorsExtension({
    required this.primary,
    required this.backgroundColors,
    required this.fontColors,
    required this.tipsColors,
    required this.otherColors,
  });

  /// 主题色
  final Color primary;

  /// 背景色
  final AppBackgroundColors backgroundColors;

  /// 背景色
  final AppFontColors fontColors;

  /// 背景色
  final AppTipsColors tipsColors;

  /// 背景色
  final AppOtherColors otherColors;

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? primary,
    AppBackgroundColors? backgroundColors,
    AppFontColors? fontColors,
    AppTipsColors? tipsColors,
    AppOtherColors? otherColors,
  }) =>
      AppColorsExtension(
        primary: primary ?? this.primary,
        backgroundColors: backgroundColors ?? this.backgroundColors,
        fontColors: fontColors ?? this.fontColors,
        tipsColors: tipsColors ?? this.tipsColors,
        otherColors: otherColors ?? this.otherColors,
      );

  @override
  ThemeExtension<AppColorsExtension> lerp(
      covariant ThemeExtension<AppColorsExtension>? other,
      double t,
      ) {
    if (other is! AppColorsExtension) {
      return this;
    }

    return AppColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      backgroundColors: backgroundColors.lerp(other.backgroundColors, t),
      fontColors: fontColors.lerp(other.fontColors, t),
      otherColors: otherColors.lerp(other.otherColors, t),
      tipsColors: tipsColors.lerp(other.tipsColors, t),
    );
  }
}

/// 背景颜色
class AppBackgroundColors {
  ///
  AppBackgroundColors({
    required this.bgc,
  });

  /// 背景色
  final Color bgc;

  /// lerp
  AppBackgroundColors lerp(
      AppBackgroundColors other,
      double t,
      ) =>
      AppBackgroundColors(
        bgc: Color.lerp(bgc, other.bgc, t)!,
      );
}

/// 字体颜色
class AppFontColors {
  ///
  AppFontColors({
    required this.tc,
  });

  /// 字体色
  final Color tc;

  /// lerp
  AppFontColors lerp(
      AppFontColors other,
      double t,
      ) =>
      AppFontColors(
        tc: Color.lerp(tc, other.tc, t)!,
      );
}

/// 提示颜色
class AppTipsColors {
  ///
  AppTipsColors({
    required this.error,
    required this.warning,
    required this.success,
  });

  /// 错误色
  final Color error;

  /// 警告色
  final Color warning;

  /// 成功色
  final Color success;

  /// lerp
  AppTipsColors lerp(
      AppTipsColors other,
      double t,
      ) =>
      AppTipsColors(
        error: Color.lerp(error, other.error, t)!,
        warning: Color.lerp(warning, other.warning, t)!,
        success: Color.lerp(success, other.success, t)!,
      );
}


/// 提示颜色
class AppOtherColors {
  ///
  AppOtherColors({
    required this.divider,
  });

  /// 分割线
  final Color divider;

  /// lerp
  AppOtherColors lerp(
      AppOtherColors other,
      double t,
      ) =>
      AppOtherColors(
        divider: Color.lerp(divider, other.divider, t)!,
      );
}
