import 'dart:io';

import 'package:flutter/material.dart';

class ItemViewer extends StatelessWidget {
  const ItemViewer({super.key, required this.file});
  final File file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Viewer'),
        ),
        body: Center(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: FileImage(file),
                ),
              ),
            ),
          ),
        ));
  }
}
