
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../generated/l10n.dart';
import 'message_cubit.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>_State();
}

class _State extends State<MessagePage> with SingleTickerProviderStateMixin {
  ///cubit
  final MessageCubit _cubit = MessageCubit();

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
    child: BlocConsumer<MessageCubit, MessageCubitState>(
      builder: _buildPage,
      listener: (_, __) => {},
    ),
  );


  Widget _buildPage(BuildContext context, MessageCubitState state) {

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current!.pageMessageTitle),
      ),
      body: Column(
        children: [
          Text('message'),
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