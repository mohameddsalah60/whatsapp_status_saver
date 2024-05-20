import 'package:flutter/material.dart';

import 'custom_button.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 3,
      color: Colors.white,
      child: Row(
        children: [
          CustomButton(),
        ],
      ),
    );
  }
}
