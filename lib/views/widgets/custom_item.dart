import 'package:flutter/material.dart';
import 'package:whatsapp_status_saver/constants.dart';
import 'package:whatsapp_status_saver/models/images_model.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.imagesModel,
  });
  final ImagesModel imagesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kPrimaryColor,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(imagesModel.image),
          )),
    );
  }
}
