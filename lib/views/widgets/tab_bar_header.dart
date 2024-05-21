import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_tab_bar.dart';

class TabBarHeader extends StatelessWidget {
  const TabBarHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      tabs: [
        CustomTab(
          icon: FontAwesomeIcons.image,
          title: 'image',
        ),
        CustomTab(
          icon: FontAwesomeIcons.video,
          title: 'Video',
        ),
        CustomTab(
          icon: Icons.save_outlined,
          title: 'Saved',
        ),
      ],
    );
  }
}
