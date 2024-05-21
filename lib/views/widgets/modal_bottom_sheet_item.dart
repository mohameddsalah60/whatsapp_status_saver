import 'package:flutter/material.dart';
import 'package:whatsapp_status_saver/constants.dart';

class ModalBottomSheetItem extends StatelessWidget {
  const ModalBottomSheetItem({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 26,
            color: kPrimaryColor,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
