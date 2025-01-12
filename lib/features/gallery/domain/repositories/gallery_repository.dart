import 'package:photo_gallery/features/gallery/data/models/image_model.dart';

abstract class GalleryRepository {
  Future<List<ImageModel>> getImages(int? page);
}