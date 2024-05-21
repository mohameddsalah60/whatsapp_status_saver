import 'package:flutter/material.dart';
import 'home_screen_header.dart';
import 'tab_bar_header.dart';

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
        ],
      ),
    );
  }
}
