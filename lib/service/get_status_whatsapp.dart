import 'dart:io';

import 'package:whatsapp_status_saver/constants.dart';

class WhatsAppStatus {
  static getStatus({required String endsWith}) {
    final itemsDataList = Directory(directoryWhatsAppStatus).existsSync();
    if (itemsDataList) {
      final itemsList = Directory(directoryWhatsAppStatus)
          .listSync()
          .where((element) => element.path.endsWith(endsWith))
          .toList(growable: false);
      return itemsList;
    } else {
      return [];
    }
  }
}
