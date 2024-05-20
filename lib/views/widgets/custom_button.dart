import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_status_saver/constants.dart';

import 'custom_button_header.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
        decoration: ShapeDecoration(
          color: kPrimaryColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xffF1F1F1), width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: const CustomButtonHeader(),
      ),
    );
  }
}
