import 'package:photo_gallery/features/gallery/data/models/image_model.dart';
import 'package:photo_gallery/features/gallery/data/repositories/gallery_repository_impl.dart';

class GetImagesUsecase {
  GalleryRepositoryImpl galleryRepository = GalleryRepositoryImpl();
  Future<List<ImageModel>> call(int? page) async {
    return galleryRepository.getImages( page);
  }
}
