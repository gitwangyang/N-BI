
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:n_bi/app_home/home_cubit.dart';
import 'package:n_bi/utils/ui/widget_utils.dart';

import '../utils/theme/one_colors.dart';
import '../utils/ui/one_text_style.dart';

/// 底部按钮布局widget
class HomeItemWidget extends StatelessWidget {
  /// 模型
  final HomeItem homeItem;

  /// 构造方法
  const HomeItemWidget(this.homeItem, {super.key});

  @override
  Widget build(BuildContext context) => getItem();

  Widget getItem() => Column(
    children: [
      homeItem.moduleIcon,
      SizedBox(
        height: 8.r,
      ),
      Text(
        homeItem.title,
        style: OneTextStyle.boldLabel(
          color: OneColors.primary.withOpacity(0.75),
        ),
        textAlign: TextAlign.center,
      ),
    ],
  ).withOnTap(() {
    homeItem.onTap();
  });

}