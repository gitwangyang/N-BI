import 'package:flutter/material.dart';

import 'base_standard_resource.dart';

/// 主题接口定义
abstract class ITheme {
  ///获取标准规范的资源
  IStandardResource ofStandard();
}

///
extension IThemeEx on ITheme {
  ///
  ThemeData get themeData {
    var resThemeData = ofStandard().themeData;
    resThemeData ??= ThemeData();

    return resThemeData;
  }
}

/// 三方平台的依赖信息，使用该模块的需要自己实现
UIBasicPlatformInfoDeps uiBasicPlatformInfoDeps = _DefaultImpl();

/// 三方依赖的内容
abstract class UIBasicPlatformInfoDeps {
  /// 主题
  ITheme? get theme;
}

// 默认实现，需要override
class _DefaultImpl implements UIBasicPlatformInfoDeps {
  @override
  ITheme? get theme => null;
}

/// 主题接口
ITheme get theme => uiBasicPlatformInfoDeps.theme!;