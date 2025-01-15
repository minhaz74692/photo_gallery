import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> downloadAndSaveToGallery(String url, String fileName) async {
  Future<bool> requestStoragePermission() async {
    var status = await Permission.photos.request();
    return status.isGranted;
  }

  try {
    // Request storage permission
    if (!await requestStoragePermission()) {
      throw Exception('Permission not granted');
    }

    // Get the directory for storing pictures
    Directory? directory;
    if (Platform.isAndroid) {
      directory = Directory('/storage/emulated/0/Pictures');
    } else if (Platform.isIOS) {
      directory = await getApplicationDocumentsDirectory();
    }

    if (directory == null) {
      throw Exception('Could not access storage');
    }

    // Create the file path
    String savePath = '${directory.path}/$fileName';

    // Download the image
    Dio dio = Dio();
    await dio.download(url, savePath);

    // Notify user
    debugPrint('Image saved at: $savePath');
  } catch (e) {
    debugPrint('Error saving image: $e');
  }
}
