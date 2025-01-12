import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:photo_gallery/constants/constants.dart';
import 'package:photo_gallery/features/gallery/data/models/image_model.dart';

class GalleryDatasourse {
  final Dio _dio = Dio();
  GalleryDatasourse() {
    _dio.options.headers = {
      'Authorization': 'Client-ID ${dotenv.env[Constants.unsplashAccessKey]}',
    };
  }

  Future<List<ImageModel>> fetchImages(int? page) async {
    String baseUrl = Constants.api(page);
    try {
      final response = await _dio.get(baseUrl, queryParameters: {'page': page});
      if (response.statusCode == 200) {
        final List data = response.data;
        debugPrint("${response.data}");
        return data.map((item) => ImageModel.fromJson(item)).toList();
      } else {
        debugPrint(
            'Failed to load images. Status code: ${response.statusCode}');
            return [];
      }
    } catch (e) {
      debugPrint("Error in fetching images: $e");
      return [];
    }
  }
}
