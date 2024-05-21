import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'item_viewer.dart';
import 'modal_bottom_sheet_item.dart';

customModalBottomSheet(BuildContext context, File file) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      height: MediaQuery.sizeOf(context).height * .13,
      color: Colors.white,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ItemViewer(
                      file: file,
                    );
                  },
                ),
              );
            },
            child: const ModalBottomSheetItem(
              icon: FontAwesomeIcons.image,
              title: 'View image',
            ),
          ),
          const SizedBox(height: 8),
          const Divider(
            color: Colors.grey,
            height: 10,
          ),
          const SizedBox(height: 8),
          const ModalBottomSheetItem(
            icon: FontAwesomeIcons.save,
            title: 'Save image',
          ),
        ],
      ),
    ),
  );
}
