import 'package:flutter/material.dart';

/// 全局key
class NavKey{
  static final navigatorKey = GlobalKey<NavigatorState>();

  /// Navigator跳转
  void navigatorPush() {
    navigatorKey.currentState?.pushNamed('/');
  }

  /// 可用于获取上下文context
  BuildContext? getContext() {
    return navigatorKey.currentState?.overlay?.context;
  }
}
