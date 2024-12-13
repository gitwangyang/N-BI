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

class MessageCubitState {
  int tabIndex;

  MessageCubitState(this.tabIndex);
}

class MessageCubit extends Cubit<MessageCubitState> {
  MessageCubit() : super(MessageCubitState(0));

  Future<void> init() async => emit(MessageCubitState(0));

  Future<void> viewPagerChanged(int tabIndex) async => emit(MessageCubitState(tabIndex));
}
