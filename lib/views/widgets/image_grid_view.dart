import 'package:flutter/material.dart';

import 'custom_item.dart';

class ImageGridView extends StatelessWidget {
  const ImageGridView({
    super.key,
    required this.items,
  });
  final List items;
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
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomItem(
          image: items[index],
        );
      },
    );
  }
}
