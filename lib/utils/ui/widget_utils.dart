// ignore_for_file: public_member_api_docs, prefer_expression_function_bodies, avoid_positional_boolean_parameters, lines_longer_than_80_chars
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_slidable/flutter_slidable.dart' as newslidable;
import 'package:n_bi/utils/ui/slidable_itme/slidable_itme.dart';

import '../../generated/l10n.dart';
import '../global/global_callback.dart';
import '../global/nav_key.dart';
import '../theme/one_colors.dart';

extension WidgetExtension on Widget {
  /// 设置外边距
  Widget withMargin(EdgeInsets margin) {
    return Container(margin: margin, child: this);
  }

  /// 设置外边距
  Widget withMarginOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return Container(
      margin:
          EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }

  /// 设置外边距
  Widget withMarginSymmetric({double vertical = 0, double horizontal = 0}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  /// 设置外边距
  Widget withMarginAll(double value) {
    return Container(margin: EdgeInsets.all(value), child: this);
  }

  /// 设置内边距
  Widget withPadding(EdgeInsets padding) {
    return Padding(padding: padding, child: this);
  }

  /// 设置内边距
  Widget withPaddingOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return Padding(
      padding:
          EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }

  /// 设置内边距
  Widget withPaddingAll(double value) {
    return Container(padding: EdgeInsets.all(value), child: this);
  }

  /// 设置内边距
  Widget withPaddingSymmetric({double vertical = 0, double horizontal = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  /// 设置背景色
  Widget withBackgroundColor(Color color) {
    return Container(color: color, child: this);
  }

  /// 设置随机背景色
  Widget withRandomColor() {
    return Container(color: OneColors.randomColor, child: this);
  }

  /// 设置宽高
  Widget withWidthHeight(double width, double height) {
    return SizedBox(width: width, height: height, child: this);
  }

  /// 设置高度
  Widget withHeight(double height) {
    return SizedBox(height: height, child: this);
  }

  /// 设置宽度
  Widget withWidth(double width) {
    return SizedBox(width: width, child: this);
  }

  /// 设置圆角
  Widget withCircularRadius(double radius) {
    return ClipRRect(borderRadius: BorderRadius.circular(radius), child: this);
  }

  /// 设置顶部圆角
  Widget withCircularTopRadius(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius),
        topRight: Radius.circular(radius),
      ),
      child: this,
    );
  }

  /// 高斯模糊 模糊度，取值范围是0-10
  Widget withBackdropFilter(double sigmaX, double sigmaY, double radius) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
      child: this,
    ).withCircularRadius(radius);
  }

  /// 设置侧滑删除
  /// [deleteSlidableTap] 删除按钮点击事件
  /// [backgroundColor] 背景色
  /// [foregroundColor]
  Widget withSlidableWidget({
    required VoidCallback deleteSlidableTap,
    Color? backgroundColor,
    Color? foregroundColor,
  }) {
    return newslidable.Slidable(
      // Specify a key if the Slidable is dismissible.
      key: const ValueKey(0),

      // The end action pane is the one at the right or the bottom side.
      endActionPane: newslidable.ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.2,
        children: [
          newslidable.SlidableAction(
            flex: 2,
            onPressed: (context) {},
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            // icon: Icons.save,
            label: '',
          ),
          newslidable.SlidableAction(
            flex: 20,
            onPressed: (context) {
              deleteSlidableTap();
            },
            backgroundColor: backgroundColor ?? Colors.black26,
            foregroundColor: foregroundColor ?? Colors.white,
            padding: EdgeInsets.zero,
            borderRadius: BorderRadius.circular(6.r),
            // icon: Icons.delete,
            label: S.current?.Common_btn_delete,
          ),
          newslidable.SlidableAction(
            flex: 2,
            onPressed: (context) {},
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            // icon: Icons.save,
            label: '',
          ),
        ],
      ),

      // The child of the Slidable is what the user sees when the
      // component is not dragged.
      child: this,
    );
  }

  /// 设置滚动条
  /// [thickness] 滚动条宽度 默认2
  /// [radius] 滚动条圆角 默认1
  /// [allwaysShow] 是否始终显示滚动条,默认false
  /// [thumbColor] 滚动条颜色 默认 0xFFD8D8D8
  /// [controller] 滚动控制器,同一页面多个滚动条时，需要传入各个可滚动页面的controller
  Widget withScrollbar({
    double? thickness,
    double? radius,
    bool? allwaysShow,
    Color? thumbColor,
    ScrollController? controller,
  }) {
    return ScrollbarTheme(
      data: ScrollbarThemeData(
        thickness: MaterialStateProperty.all(thickness ?? 2.r),
        radius: Radius.circular(radius ?? 1.r),
        thumbVisibility: MaterialStateProperty.all(allwaysShow ?? false),
        thumbColor:
            MaterialStateProperty.all(thumbColor ?? const Color(0xFFD8D8D8)),
      ),
      child: Scrollbar(
        controller: controller ?? ScrollController(),
        child: this,
      ),
    );
  }

  // /// 高斯模糊 模糊度，取值范围是0-10
  // Widget withBackdropFilter(double sigmaX, double sigmaY, double radius) {
  //   return ClipRRect(
  //     borderRadius: BorderRadius.circular(radius),
  //     child: BackdropFilter(
  //       filter: ImageFilter.blur(
  //         sigmaX: sigmaX,
  //         sigmaY: sigmaY,
  //       ),
  //       // child: Container(
  //       //   alignment: Alignment.center,
  //       //   width: 200.0,
  //       //   height: 120.0,
  //       //   color: Colors.purple.withOpacity(0.1),
  //       //   child: const Text(
  //       //     'Hello World',
  //       //     style: TextStyle(fontSize: 24),
  //       //   ),
  //       // ),
  //       child: this,
  //     ),
  //   );
  // }

  /// 设置是否显示
  Widget withVisible(bool visible, {bool? maintainState}) {
    return Visibility(
      visible: visible,
      maintainState: maintainState ?? false,
      child: this,
    );
  }

  /// 设置点击事件
  Widget withOnTap(
    VoidCallback onTap, {
    HitTestBehavior? behavior = HitTestBehavior.opaque,
  }) {
    // 如果非空，添加全局回调，类似hook
    final tapWidget = widgetEventCallback != null
        ? GestureDetector(
            onTap: () {
              widgetEventCallback?.call(
                WidgetEventType.onTap,
                WidgetInfo(toStringShort()),
              );

              onTap.call();
            },
            behavior: behavior,
            child: this,
          )
        : GestureDetector(onTap: onTap, behavior: behavior, child: this);

    // 显示热区
    if (showHotArea) {
      return tapWidget.withBackgroundColor(Colors.redAccent.shade100);
    } else {
      return tapWidget;
    }
  }

  /// 设为弹性
  Widget withFlexible({int flex = 1}) {
    return Flexible(flex: flex, child: this);
  }

  /// 设为扩展
  Widget withExpanded({int flex = 1}) {
    return Expanded(flex: flex, child: this);
  }

  /// 设置点击时收起键盘
  Widget unfocusWhenTap() {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: this,
    );
  }

  /// 设置安全距离
  Widget withSafeArea() => SafeArea(child: this);

  /// 增加渐变色
  Widget withGradient(List<Color> colors, {
    Alignment? begin,
    Alignment? end,
  }) => ShaderMask(
    shaderCallback: (rect) {
      return LinearGradient(
        begin: begin ?? Alignment.centerLeft,
        end: end ?? Alignment.centerRight,
        colors: colors,
      ).createShader(rect);
    },
    child: this,
  );
}
