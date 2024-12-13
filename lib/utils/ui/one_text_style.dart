
import 'package:flutter/material.dart' as ui;
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/one_colors.dart';

enum OneTextFont {
  ///
  Label,

  ///
  BoldLabel,

  ///
  Content,

  ///
  BoldContent,
}

/// 字体包类型
enum TextFont {
  /// 英文字体
  VWHead_Regular,

  /// 英文字体粗
  VWHead_Bold,

  /// 中文字体
  HYQiHei_Regular,

  /// 中文字体粗
  HYQiHei_Bold,
}

/// 文字样式
class OneTextStyle {
  /// Label
  static TextStyle label({Color? color}) =>
      _TextStyleEx.font(OneTextFont.Label, color: color);

  /// BoldLabel
  static TextStyle boldLabel({Color? color}) =>
      _TextStyleEx.font(OneTextFont.BoldLabel, color: color);

  /// Content
  static TextStyle content({Color? color}) =>
      _TextStyleEx.font(OneTextFont.Content, color: color);

  /// BoldContent
  static TextStyle boldContent({Color? color}) =>
      _TextStyleEx.font(OneTextFont.BoldContent, color: color);
}

/// 字体样式扩展
class _TextStyleEx {
  /// 获取字体样式
  static TextStyle font(OneTextFont type, {Color? color}) =>
      _OneTextStyle().getTextStyle(type, color: color);
}

/// 获取字体的实体类
class _OneTextStyle {
  /// 默认字体颜色
  static final Color _defaultColor = OneColors.primary;

  /// 获取字体样式
  TextStyle getTextStyle(OneTextFont type, {Color? color}) {
    /// 字体
    String fontFamily = '';

    /// 大小
    double fontSize = 0;

    /// 行高
    double lineHight = 1;

    /// 备选字体
    List<String> fontFamilyFallback = [];

    switch (type) {
      case OneTextFont.Label:
        fontFamily = TextFont.VWHead_Regular.name;
        fontFamilyFallback = [TextFont.HYQiHei_Regular.name];
        fontSize = 10.r;
        lineHight = 1.5;
        break;
      case OneTextFont.BoldLabel:
        fontFamily = TextFont.VWHead_Bold.name;
        fontFamilyFallback = [TextFont.HYQiHei_Bold.name];
        fontSize = 10.r;
        lineHight = 1.5;
        break;
      case OneTextFont.Content:
        fontFamily = TextFont.VWHead_Regular.name;
        fontFamilyFallback = [TextFont.HYQiHei_Regular.name];
        fontSize = 14.r;
        lineHight = 22.r / fontSize;
        break;
      case OneTextFont.BoldContent:
        fontFamily = TextFont.VWHead_Bold.name;
        fontFamilyFallback = [TextFont.HYQiHei_Bold.name];
        fontSize = 14.r;
        lineHight = 22.r / fontSize;
        break;
    }

    return fontFamily == TextFont.VWHead_Bold.name ||
        fontFamily == TextFont.VWHead_Regular.name
        ? fontFamily == TextFont.VWHead_Regular.name
        ? fontPlatformInfoDeps.defRegularTextStyle?.copyWith(
      fontSize: fontSize,
      color: color ?? _defaultColor,
      height: lineHight,
    ) ??
        const TextStyle()
        : fontPlatformInfoDeps.defBoldTextStyle?.copyWith(
      fontSize: fontSize,
      color: color ?? _defaultColor,
      height: lineHight,
    ) ?? const TextStyle()
        : TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      color: color ?? _defaultColor,
      height: lineHight,
      fontFamilyFallback: fontFamilyFallback,
    );
  }
}

/// 三方平台的依赖信息，使用该模块的需要自己实现
FontPlatformInfoDeps fontPlatformInfoDeps = _DefaultImpl();

/// 字体注入依赖
abstract class FontPlatformInfoDeps {
  /// 标准字体样式
  ui.TextStyle? get defRegularTextStyle;

  /// 加粗字体样式
  ui.TextStyle? get defBoldTextStyle;
}

// 默认实现，需要override
class _DefaultImpl implements FontPlatformInfoDeps {
  @override
  ui.TextStyle? get defRegularTextStyle => null;

  @override
  ui.TextStyle? get defBoldTextStyle => null;
}
