import 'dart:math';
import 'package:flutter/material.dart';
import 'theme_interface.dart';
import 'base_standard_resource.dart';

class OneColors {
  /// 主题色 Primary Color
  static Color get primary =>
      theme
          .ofStandard()
          .themeData
          ?.appColors
          ?.primary ??
          const Color(0xFFEED484);

  /// 背景色 Bgc
  static Color get bgc =>
      theme
          .ofStandard()
          .themeData
          ?.appColors
          ?.backgroundColors
          .bgc ??
          const Color(0xFFFFFFFF);

  /// 字体色  tc
  static Color get tc =>
      theme.ofStandard().themeData?.appColors?.fontColors.tc ??
          const Color(0xFFFFFFFF);

  /// 获取一个随机颜色
  static Color get randomColor {
    final Random random = Random();
    final int r = random.nextInt(256); // 0-255 的随机红色值
    final int g = random.nextInt(256); // 0-255 的随机绿色值
    final int b = random.nextInt(256); // 0-255 的随机蓝色值

    return Color.fromRGBO(r, g, b, 0.5); // 创建颜色对象并返回
  }
}