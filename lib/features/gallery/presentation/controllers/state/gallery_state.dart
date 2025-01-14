import 'package:photo_gallery/features/gallery/data/models/image_model.dart';

class GalleryState {
  bool? isLoading;
  List<ImageModel>? images = [];
  int currentPage;

  GalleryState({this.isLoading, this.images, this.currentPage = 1});

  GalleryState update(
      {bool? isLoading, List<ImageModel>? images, bool? initData, int? page}) {
    List<ImageModel>? updatedImageList = this.images;
    if ((images ?? []).isNotEmpty) {
      if (initData == true) {
        updatedImageList = images;
      } else {
        updatedImageList?.addAll(images ?? []);
      }
    }

    return GalleryState(
      isLoading: isLoading ?? this.isLoading,
      images: updatedImageList,
      currentPage: page ?? currentPage,
    );
  }
}
