import 'dart:io';

import 'package:whatsapp_status_saver/constants.dart';

Future<void> copyFile(File status) async {
  try {
    final File sourceFile = status;
    if (await sourceFile.exists()) {
      // Ensure the destination directory exists
      final Directory destinationDir = Directory(savedStatusFiles);
      if (!(await destinationDir.exists())) {
        await destinationDir.create(recursive: true);
      }

      var date =
          '${DateTime.now().year.toString()}-${DateTime.now().month.toString()}-${DateTime.now().day.toString()}';
      // Construct the full destination path with the file name
      final String fileName = sourceFile.uri.pathSegments.last;
      final String destinationPath =
          '${destinationDir.path}/${date + fileName}';

      // Copy the file to the destination path
      final File destinationFile = File(destinationPath);
      await sourceFile.copy(destinationFile.path);

      print('File copied successfully to $destinationPath');
    } else {
      print('Source file does not exist');
    }
  } catch (e) {
    print('Error copying file: $e');
  }
}
