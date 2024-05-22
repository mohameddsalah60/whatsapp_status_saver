import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_status_saver/views/widgets/video_item.dart';

import 'image_item.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.file,
  });
  final File file;
  @override
  Widget build(BuildContext context) {
    return file.path.endsWith('.mp4')
        ? VidoeItem(file: file)
        : ImageItem(file: file);
  }
}
