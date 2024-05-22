import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get_thumbnail_video/video_thumbnail.dart';
import 'package:whatsapp_status_saver/constants.dart';

import 'play_video_icon.dart';

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
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kPrimaryColor,
            ),
          );
        } else if (snapshot.hasData && snapshot.data != null) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kPrimaryColor,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: MemoryImage(snapshot.data as Uint8List),
                )),
            child: const PlayVideoIcon(),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kPrimaryColor,
            ),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  Future<Uint8List?> getVideoThumbnail(File file) async {
    final uint8list = await VideoThumbnail.thumbnailData(
      video: file.path,
      quality: 25,
    );
    return uint8list;
  }
}
