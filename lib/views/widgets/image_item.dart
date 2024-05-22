import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_status_saver/constants.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({
    super.key,
    required this.file,
  });

  final File file;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: FileImage(file),
          )),
    );
  }
}
