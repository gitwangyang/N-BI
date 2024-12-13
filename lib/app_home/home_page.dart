import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheel_life/app_home/home_cubit.dart';

import '../base/configs.dart';
import '../category/category_page.dart';
import '../discovery/discovery_page.dart';
import '../generated/l10n.dart';
import '../message/message_page.dart';
import '../my/my_page.dart';
import '../test/test_page.dart';
import '../utils/ui/keep_alive.dart';

/// 首页底部tab枚举值
enum HomeBottomTabKey {
  ///发现 0
  discovery,

  ///分类 1
  category,

  /// 对话 2
  message,

  ///我的 3
  my,

  ///测试页 4
  test,
}

/// 扩展
extension HomeBottomTabKeyEx on HomeBottomTabKey {
  /// string value -> tab key
  static HomeBottomTabKey createFrom(String? value) =>
      HomeBottomTabKey.values.firstWhere(
        (element) => element.name == value,
        orElse: () => HomeBottomTabKey.discovery,
      );

  /// 返回对应的Page
  Widget getWidget(Map<String, dynamic> params, Map<String, dynamic>? argsMap) {
    switch (this) {
      case HomeBottomTabKey.discovery:
        return DiscoveryPage(
            // initialTabKey: params['initialTabKey'] as String?,
            );
      case HomeBottomTabKey.category:
        return CategoryPage();
      case HomeBottomTabKey.message:
        return MessagePage();
      case HomeBottomTabKey.my:
        return MyPage();
      case HomeBottomTabKey.test:
        return TestPage();
    }
  }
}

/// 主页
class HomePage extends StatefulWidget {
  /// 构造器
  /// param [initialBottomTabKey]
  /// 底部tab key, value = [HomeBottomTabKey]
  /// param [initialTopTabKey]
  /// 顶部tab key, value = [DiscoveryTabKey]
  /// [key]
  HomePage({
    String? initialBottomTabKey,
    String? initialTopTabKey,
    Map<String, dynamic>? argsData,
    super.key,
  })  : initialBottomTabIndex =
            HomeBottomTabKeyEx.createFrom(initialBottomTabKey).index,
        initialTopTabKey = initialTopTabKey ?? '',
        argsMap = argsData;

  /// 底部bottom tab index
  final int initialBottomTabIndex;

  /// 顶部tab key
  final String initialTopTabKey;

  /// 传进来的所有参数
  final Map<String, dynamic>? argsMap;

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///cubit
  final HomeCubit _cubit = HomeCubit();

  /// 供给页面使用的pager控制器
  final PageController pageController = PageController(initialPage: 0);

  /// 页面数量
  /// release
  static int pageCount = appFlavor == flavorProduct ? 4 : 5;

  @override
  void initState() {
    super.initState();
    _cubit.init();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocProvider.value(
        value: _cubit,
        child: BlocConsumer<HomeCubit, HomeCubitState>(
          listener: (context, state) {
            final index = state.tabIndex;
            // final bloc = ReadContext(context).read<HomeCubit>();
            pageController.jumpToPage(index);
          },
          builder: (context, state) {
            // final bloc = ReadContext(context).read<HomeCubit>();
            // 获取当前主题模式
            var brightnss = Theme.of(context).brightness;
            // 判断当前是否为黑夜模式
            bool isDarkMode = brightnss == Brightness.dark;

            final bottomItems = [
              // 发现bottom
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: S.current?.pageHomeTitle,
              ),
              // 分类bottom
              BottomNavigationBarItem(
                icon: const Icon(Icons.category),
                label: S.current?.pageCategoryTitle,
              ),
              // 消息bottom
              BottomNavigationBarItem(
                icon: const Icon(Icons.message),
                label: S.current?.pageMessageTitle,
              ),
              // 我的bottom
              BottomNavigationBarItem(
                icon: const Icon(Icons.person),
                label: S.current?.pageMyTitle,
              ),
            ];

            if (pageCount >= 5) {
              bottomItems.add(
                // 测试bottom
                const BottomNavigationBarItem(
                  icon: Icon(Icons.dehaze),
                  label: '测试',
                ),
              );
            }

            return Scaffold(
              // body: const RouterOutlet(),
              body: PopScope(
                canPop: false,
                onPopInvokedWithResult: (didPop, result) {
                  if (didPop) {
                    return;
                  }
                },
                child: PageView.builder(
                  itemCount: pageCount,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  onPageChanged: (i) => _cubit.viewPagerChanged(i),
                  itemBuilder: _getPageWidget,
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                onTap: (index) => _cubit.viewPagerChanged(index),
                currentIndex: state.tabIndex,
                items: bottomItems,
                iconSize: 25,
                fixedColor: Colors.green,
                selectedFontSize: 16,
                type: BottomNavigationBarType.fixed,
              ),
            );
          },
        ),
      );

  /// 获取页面Widget
  Widget _getPageWidget(BuildContext context, int index) => KeepAliveWrapper(
        child: HomeBottomTabKey.values[index].getWidget(
          {'initialTabKey': widget.initialTopTabKey},
          widget.argsMap,
        ),
      );
}
