import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:whatsapp_status_saver/constants.dart';

import 'play_video_icon.dart';

class VideoItemThumbnailError extends StatelessWidget {
  const VideoItemThumbnailError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kPrimaryColor,
      ),
      child: const Center(
        child: Icon(
          Icons.error,
          color: Colors.red,
        ),
      ),
    );
  }
}

class VideoItemThumbnailSuccessful extends StatelessWidget {
  const VideoItemThumbnailSuccessful({
    super.key,
    required this.thumbnail,
  });
  final Uint8List thumbnail;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: MemoryImage(thumbnail),
          )),
      child: const PlayVideoIcon(),
    );
  }
}

class VideoCircularIndicator extends StatelessWidget {
  const VideoCircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kPrimaryColor,
      ),
      child: const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
