import 'package:flutter/widgets.dart';

/// KeepAliveWrapper can keep the item(s) of scrollview alive, **Not dispose**.
class KeepAliveWrapper extends StatefulWidget {
  /// 默认
  ///
  /// [child] 子布局
  /// [keepAlive] 是否保持唤醒
  const KeepAliveWrapper({
    required this.child,
    Key? key,
    this.keepAlive = true,
  }) : super(key: key);

  /// 是否keepAlive
  final bool keepAlive;

  /// child
  final Widget child;

  @override
  State createState() => _KeepAliveWrapperState();
}

/// 状态
class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return widget.child;
  }

  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    if (oldWidget.keepAlive != widget.keepAlive) {
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    //print("KeepAliveWrapper dispose");
    super.dispose();
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;
}
