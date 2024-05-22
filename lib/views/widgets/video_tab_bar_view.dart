import 'dart:io';

import 'package:flutter/widgets.dart';

import 'video_grid_view.dart';

class VideoTabBarView extends StatelessWidget {
  const VideoTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return VideoGridView(
      videos: [
        File('/storage/emulated/0/Download/10 Second Timer.mp4'),
      ],
    );
  }
}
