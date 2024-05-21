import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_status_saver/constants.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.image,
  });
  final File image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: FileImage(image),
          )),
    );
  }
}
