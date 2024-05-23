import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_status_saver/service/save_file.dart';
import 'package:whatsapp_status_saver/views/widgets/video_item_viewer.dart';

import 'image_item_viewer.dart';
import 'modal_bottom_sheet_item.dart';

customModalBottomSheet(BuildContext context, File file, String type) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      height: MediaQuery.sizeOf(context).height * .13,
      color: Colors.white,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              file.path.endsWith('.mp4')
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return VideoViewer(file: file);
                        },
                      ),
                    )
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ImageViewer(file: file);
                        },
                      ),
                    );
            },
            child: ModalBottomSheetItem(
              icon: file.path.endsWith('.mp4')
                  ? Icons.videocam
                  : FontAwesomeIcons.image,
              title: 'View $type',
            ),
          ),
          const SizedBox(height: 8),
          const Divider(
            color: Colors.grey,
            height: 10,
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () async {
              await copyFile(file);
            },
            child: ModalBottomSheetItem(
              icon: FontAwesomeIcons.floppyDisk,
              title: 'Save $type',
            ),
          ),
        ],
      ),
    ),
  );
}
