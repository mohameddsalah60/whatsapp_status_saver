import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import 'video_item_handling.dart';

class VidoeItem extends StatelessWidget {
  const VidoeItem({
    super.key,
    required this.file,
  });

  final File file;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List?>(
      future: getVideoThumbnail(file),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const VideoCircularIndicator();
        } else if (snapshot.hasData && snapshot.data != null) {
          return VideoItemThumbnailSuccessful(thumbnail: snapshot.data);
        } else if (snapshot.hasError) {
          return const VideoItemThumbnailError();
        } else {
          return const VideoItemThumbnailError();
        }
      },
    );
  }

  Future<Uint8List?> getVideoThumbnail(File file) async {
    try {
      return await VideoThumbnail.thumbnailData(
        video: file.path,
        imageFormat: ImageFormat.JPEG,
      );
    } catch (e) {
      log('Error generating video thumbnail: $e');
      return null;
    }
  }
}
