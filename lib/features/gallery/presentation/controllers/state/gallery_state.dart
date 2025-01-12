import 'package:photo_gallery/features/gallery/data/models/image_model.dart';

class GalleryState {
  bool? isLoading;
  List<ImageModel>? images = [];

  GalleryState({this.isLoading, this.images});

  GalleryState update({bool? isLoading, List<ImageModel>? images,bool? initData}) {
    return GalleryState(
      isLoading: isLoading ?? this.isLoading,
      images: images ?? this.images,
    );
  }
}
