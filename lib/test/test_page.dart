
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:n_bi/test/test_cubit.dart';

import '../generated/l10n.dart';

class TestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<TestPage> with SingleTickerProviderStateMixin {
  ///cubit
  final TestCubit _cubit = TestCubit();

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
    child: BlocConsumer<TestCubit, TestCubitState>(
      builder: _buildPage,
      listener: (_, __) => {},
    ),
  );


  Widget _buildPage(BuildContext context, TestCubitState state) {

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current!.pageTestTitle),
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