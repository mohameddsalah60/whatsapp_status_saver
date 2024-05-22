import 'package:flutter/material.dart';

import 'custom_item.dart';
import 'custom_modal_bottom_sheet.dart';

class VideoGridView extends StatelessWidget {
  const VideoGridView({
    super.key,
    required this.videos,
  });
  final List videos;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        return CustomItem(
          file: videos[index],
        );
      },
    );
  }
}
