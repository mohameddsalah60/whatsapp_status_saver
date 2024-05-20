import 'package:be_widgets/be_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'home_screen_card.dart';
import 'home_screen_header.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BeBadge(
      position: BeBadgePosition.bottomCenter,
      badge: const HomeScreenCard(),
      child: const HomeScreenHeader(),
    );
  }
}
