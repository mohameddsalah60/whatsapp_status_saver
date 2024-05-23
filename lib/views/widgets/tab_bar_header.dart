import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_status_saver/constants.dart';

import 'custom_tab_bar.dart';

class TabBarHeader extends StatelessWidget {
  const TabBarHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: const TabBar(
        tabAlignment: TabAlignment.fill,
        indicatorColor: Colors.white24,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.white,
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
            icon: Icons.save,
            title: 'Saved',
          ),
        ],
      ),
    );
  }
}
