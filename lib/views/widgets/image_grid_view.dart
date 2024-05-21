import 'package:flutter/material.dart';

import 'custom_item.dart';

class ImageGridView extends StatelessWidget {
  const ImageGridView({
    super.key,
  });

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
      itemCount: 8,
      itemBuilder: (context, index) {
        return const CustomItem();
      },
    );
  }
}
