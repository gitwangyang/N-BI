/// 全局的所有回调
typedef WidgetEventCallback = void Function(
  WidgetEventType type,
  WidgetInfo info,
);

/// widget 信息
class WidgetInfo {
  /// widget信息构造
  WidgetInfo(this.name, {this.extras});

  /// widget 名字
  final String name;

  /// extras 额外数据
  Map<String, dynamic>? extras;
}

/// 手势类型
enum WidgetEventType {
  /// 点击
  onTap,

  /// 开始build
  onBuild,

  /// dialog消失
  dismiss,
}

/// 全局的
WidgetEventCallback? widgetEventCallback;

/// 热区显示开关
bool showHotArea = false;
