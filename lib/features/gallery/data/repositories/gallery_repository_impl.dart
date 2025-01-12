import 'package:photo_gallery/features/gallery/data/datasources/gallery_datasourse.dart';
import 'package:photo_gallery/features/gallery/data/models/image_model.dart';
import 'package:photo_gallery/features/gallery/domain/repositories/gallery_repository.dart';

class GalleryRepositoryImpl implements GalleryRepository{
  GalleryDatasourse galleryDatasourse = GalleryDatasourse();
  @override
  Future<List<ImageModel>> getImages(int? page) {
    return galleryDatasourse.fetchImages(page);
  }
}