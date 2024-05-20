import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_status_saver/constants.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .25,
      color: kPrimaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 24),
      child: ListTile(
        title: const Text(
          'Status UP',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        subtitle: const Text(
          'All in one status saver',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.gear,
              color: Colors.white,
            )),
      ),
    );
  }
}
