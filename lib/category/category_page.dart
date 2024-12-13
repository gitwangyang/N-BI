
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../generated/l10n.dart';
import 'category_cubit.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<CategoryPage> with SingleTickerProviderStateMixin {
  ///cubit
  final CategoryCubit _cubit = CategoryCubit();

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
    child: BlocConsumer<CategoryCubit, CategoryCubitState>(
      builder: _buildPage,
      listener: (_, __) => {},
    ),
  );


  Widget _buildPage(BuildContext context, CategoryCubitState state) {

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current!.pageCategoryTitle),
      ),
      body: Column(
        children: [
          Text('category'),
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