import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'modal_bottom_sheet_item.dart';

customModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      height: MediaQuery.sizeOf(context).height * .13,
      color: Colors.white,
      child: const Column(
        children: [
          ModalBottomSheetItem(
            icon: FontAwesomeIcons.image,
            title: 'View image',
          ),
          SizedBox(height: 8),
          Divider(
            color: Colors.grey,
            height: 10,
          ),
          SizedBox(height: 8),
          ModalBottomSheetItem(
            icon: FontAwesomeIcons.save,
            title: 'Save image',
          ),
        ],
      ),
    ),
  );
}
