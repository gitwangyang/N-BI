import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:n_bi/base/configs.dart';

import 'one_theme.dart';
import 'base_standard_resource.dart';

/// 初始化主题
Future<void> initTheme() async {
  await ScreenUtil.ensureScreenSize();
  // final directory = await getApplicationDocumentsDirectory();
  // 后续扩展可存储主题到本地文件中，'${directory.path}/themes/storage'
  presetThemeDataBuilder(themeDark);
}

enum ThemeType {
  /// 白天主题
  themeLight,
  /// 黑夜主题
  themeDark,
}

/// 预置的主题
BaseStandardResource presetThemeDataBuilder(String key) {
  BaseStandardResource? data;
  switch (key) {
    case themeDark:
      data = ThemeResource.standardDarkResource();
      themeType = ThemeType.themeDark;
      break;
    case themeLight:
      data = ThemeResource.standardLightResource();
      themeType = ThemeType.themeLight;
      break;
  }
  data ??= ThemeResource.standardDarkResource();

  return BaseStandardResource(data.themeData!);
}
