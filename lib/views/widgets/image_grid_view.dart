import 'package:flutter/material.dart';

import 'custom_item.dart';
import 'custom_modal_bottom_sheet.dart';

class ImageGridView extends StatelessWidget {
  const ImageGridView({
    super.key,
    required this.images,
  });
  final List images;
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
      itemCount: images.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            customModalBottomSheet(context, images[index]);
          },
          child: CustomItem(
            image: images[index],
          ),
        );
      },
    );
  }
}
