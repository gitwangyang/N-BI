import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class HomeItem {
  /// 模块icon
  final Icon moduleIcon;
  /// 模块名称
  final String title;
  ///点击事件
  VoidCallback onTap;

  HomeItem(this.moduleIcon, this.title, this.onTap);
}

class DiscoveryCubitState {
  int tabIndex;

  DiscoveryCubitState(this.tabIndex);
}

class DiscoveryCubit extends Cubit<DiscoveryCubitState> {
  DiscoveryCubit() : super(DiscoveryCubitState(0));

  Future<void> init() async => emit(DiscoveryCubitState(0));

  Future<void> viewPagerChanged(int tabIndex) async => emit(DiscoveryCubitState(tabIndex));
}
