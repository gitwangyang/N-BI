
// debug
import 'dart:ui';

import 'package:n_bi/utils/theme/basic_theme.dart';

import '../utils/intl/basic_intl.dart';

const flavorTest = 'test';
// release
const flavorUAT = 'uat';
// product
const flavorProduct = 'product';
// theme ,default: default_dark
const themeDark = 'default_dark';
const themeLight = 'default_light';
//本地全局设置主题属性
ThemeType themeType = ThemeType.themeDark;

// intl, default: zh
const languageCodeZh = Locale('zh','CN');
const languageCodeEn = Locale('en', 'US');
//本地全局设置语言属性
IntlType intlType = IntlType.en;

/// 配置项
class Configs {
  static var packageName = '';
  static var version = '';
  Configs._();
}




