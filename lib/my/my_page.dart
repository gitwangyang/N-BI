
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../generated/l10n.dart';
import 'my_cubit.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<MyPage> with SingleTickerProviderStateMixin {
  ///cubit
  final MyCubit _cubit = MyCubit();

  @override
  void initState() {
    super.initState();
    _cubit.init();
  }

  @override
  void dispose() {
    super.dispose();
    _cubit.close();
  }

  @override
  Widget build(BuildContext context) => BlocProvider.value(
    value: _cubit,
    child: BlocConsumer<MyCubit, MyCubitState>(
      builder: _buildPage,
      listener: (_, __) => {},
    ),
  );


  Widget _buildPage(BuildContext context, MyCubitState state) {

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current!.pageMyTitle),
      ),
      body: Column(
        children: [
          Text('test'),
          // PreferredSize(
          //   preferredSize: const Size(double.infinity, 60),
          //   child: _buildTabBar(),
          // ),
          // Expanded(
          //   child: _buildTabView(),
          // ),
        ],
      ),
    );
  }
}