import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_status_saver/cubits/image_cubit/image_cubit.dart';
import 'home_screen_header.dart';
import 'image_tab_bar_view.dart';
import 'tab_bar_header.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ImageCubit>(context).getImagesStatus();
    return const DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Column(
        children: [
          HomeScreenHeader(),
          TabBarHeader(),
          Expanded(
            child: TabBarView(
              children: [
                ImageTabBarView(),
                Center(child: Text('Content of Tab Two')),
                Center(child: Text('Content of Tab Three')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
