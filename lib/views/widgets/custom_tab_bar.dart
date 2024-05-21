import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          icon,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ));
  }
}
