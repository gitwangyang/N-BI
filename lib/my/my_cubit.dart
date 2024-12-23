import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../api/api_service.dart';

class HomeItem {
  /// 模块icon
  final Icon moduleIcon;
  /// 模块名称
  final String title;
  ///点击事件
  VoidCallback onTap;

  HomeItem(this.moduleIcon, this.title, this.onTap);
}

class MyCubitState {
  int tabIndex;

  MyCubitState(this.tabIndex);
}

class MyCubit extends Cubit<MyCubitState> {
  MyCubit() : super(MyCubitState(0));

  Future<void> init() async => emit(MyCubitState(0));

  Future<void> viewPagerChanged(int tabIndex) async => emit(MyCubitState(tabIndex));

  // 获取关注数量
  Future<void> getFriendContactsData() async {
    ApiService().httpFriendContacts(
      userId: 1,
    ).observer(
      onResListener: (response) {
        if (response.isSuccess()) {

        }
      },
      onDataListener: (data) {

      },
      onErrorListener: (e) {

      },
    );
  }
}
