import 'package:flutter/material.dart';

import 'home_screen_header.dart';
import 'image_tab_bar_view.dart';
import 'tab_bar_header.dart';
import 'video_tab_bar_view.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                VideoTabBarView(),
                Center(child: Text('Content of Tab Three')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
