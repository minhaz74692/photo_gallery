import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery/features/gallery/data/models/image_model.dart';
import 'package:photo_gallery/utils/download_manager.dart';

class ImageView extends StatelessWidget {
  const ImageView({
    super.key,
    required this.image,
  });
  final ImageModel image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Hero(
              tag: image.id ?? "",
              child: CachedNetworkImage(
                imageUrl: image.urls?.raw ?? "",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back),
                ),
                Spacer(),
                IconButton(
                    onPressed: () => downloadAndSaveToGallery(
                        image.links?.download ?? "", "${image.id}.jpg"),
                    icon: Icon(Icons.download))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
