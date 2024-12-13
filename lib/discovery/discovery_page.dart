
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../generated/l10n.dart';
import 'discovery_cubit.dart';

/// 发现页
class DiscoveryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<DiscoveryPage> with SingleTickerProviderStateMixin {
  ///cubit
  final DiscoveryCubit _cubit = DiscoveryCubit();

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
        child: BlocConsumer<DiscoveryCubit, DiscoveryCubitState>(
          builder: _buildPage,
          listener: (_, __) => {},
        ),
      );


  Widget _buildPage(BuildContext context, DiscoveryCubitState state) {

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current!.pageDiscoveryTitle),
      ),
      body: Column(
        children: [
          Text('discovery'),
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