import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_status_saver/constants.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
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
      child: file.path.endsWith('.mp4') ? const PlayVideoIcon() : null,
    );
  }
}

class PlayVideoIcon extends StatelessWidget {
  const PlayVideoIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Icon(
      Icons.play_circle_outline,
      size: 40,
      color: Colors.white,
    ));
  }
}
