
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../generated/l10n.dart';

/// 语言类型
enum IntlType {
  zh,
  en,
}

// 支持的locale
const supportLocale = [
  Locale.fromSubtags(languageCode: 'zh'),
  Locale.fromSubtags(languageCode: 'en'),
];

// 应用内涉及国际化的需要这里填入对应的Delegate
const localizationsDelegates = <LocalizationsDelegate<dynamic>>[
  // material
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  // ios
  GlobalCupertinoLocalizations.delegate,

  S.delegate //自定义国际化
];