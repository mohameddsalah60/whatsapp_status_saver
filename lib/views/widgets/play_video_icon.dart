import 'package:flutter/material.dart';

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
