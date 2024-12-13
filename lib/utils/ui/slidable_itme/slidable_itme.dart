// ignore_for_file: must_be_immutable, lines_longer_than_80_chars

import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart' as slidable;


///
class SlidableAutoCloseBehavior extends slidable.SlidableAutoCloseBehavior {
  ///
  const SlidableAutoCloseBehavior({
    required bool closeWhenOpened,
    required bool closeWhenTapped,
    required Widget child,
    Key? key,
  }) : super(
          key: key,
          closeWhenOpened: closeWhenOpened,
          closeWhenTapped: closeWhenTapped,
          child: child,
        );
}

/// Slidable
class SlidableItmeWidget extends StatelessWidget {
  ///
  SlidableItmeWidget({
    required this.child,
    Key? key,
    this.groupTag,
    this.enabled = true,
    this.closeOnScroll = true,
    this.startActionPane,
    this.endActionPane,
    this.direction = Axis.horizontal,
    this.dragStartBehavior = DragStartBehavior.down,
    this.useTextDirection = true,
  }) : super(key: key);

  ///
  final bool enabled;

  ///
  final bool closeOnScroll;

  ///
  final Object? groupTag;

  ///
  final ActionPaneWidget? startActionPane;

  ///
  final ActionPaneWidget? endActionPane;

  ///
  final Axis direction;

  ///
  final bool useTextDirection;

  ///
  final Widget child;

  ///
  final DragStartBehavior dragStartBehavior;

  // ignore: unused_field, use_late_for_private_fields_and_variables
  BuildContext? _context;

  slidable.Slidable? _slidable;

  ///
  void close() {
    // if (_context != null) {
    //   // ignore: prefer_final_locals
    //   slidable.SlidableController? controller = slidable.Slidable.of(_context!);
    //   if (controller != null) {
    //     controller.close();
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    //
    _context = context;

    _slidable = null;

    final Random random = Random();
    final int randomInt = random.nextInt(1000);

    _slidable = slidable.Slidable(
      key: Key('Slidable_Key$randomInt'),
      enabled: enabled,
      closeOnScroll: closeOnScroll,
      groupTag: groupTag,
      startActionPane: startActionPane,
      endActionPane: endActionPane,
      direction: direction,
      useTextDirection: useTextDirection,
      dragStartBehavior: dragStartBehavior,
      child: child,
    );

    return _slidable!;
  }
}

/// Slidable
class ActionPaneWidget extends slidable.ActionPane {
  ///
  const ActionPaneWidget({
    required Widget motion,
    required List<Widget> children,
    double? extentRatio,
    Key? key,
  }) : super(
          key: key,
          motion: motion,
          children: children,
          extentRatio: extentRatio ?? 77.0 / 375.0,
        );
}

/// ScrollMotion
class ScrollMotion extends slidable.ScrollMotion {
  ///
  const ScrollMotion({Key? key}) : super(key: key);
}

///
class DismissiblePane extends slidable.DismissiblePane {
  ///
  const DismissiblePane({required VoidCallback onDismissed, Key? key})
      : super(key: key, onDismissed: onDismissed);
}

///
class SlidableAction extends slidable.SlidableAction {
  ///
  SlidableAction({
    required slidable.SlidableActionCallback? onPressed,
    required Color backgroundColor,
    required String label,
    Color? foregroundColor,
    IconData? icon,
    Key? key,
  }) : super(
          key: key,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          icon: icon,
          label: label,
          spacing: 0,
          borderRadius: BorderRadius.circular(6.r),
          padding: EdgeInsets.only(left: 20.r, right: 10.r),
        );
}

/// 自定义侧滑删除，支持自定义删除的widget
class CustomSlidableAction extends slidable.CustomSlidableAction {
  ///
  CustomSlidableAction({
    required slidable.SlidableActionCallback? onPressed,
    required Widget child,
    required Color backgroundColor,
    EdgeInsets? padding,
    Color? foregroundColor,
    BorderRadius borderRadius = BorderRadius.zero,
    Key? key,
  }) : super(
          key: key,
          padding: padding ?? EdgeInsets.only(left: 16.r, right: 16.r),
          onPressed: onPressed,
          borderRadius: borderRadius,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          child: child,
        );
}
