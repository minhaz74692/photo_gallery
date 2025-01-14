import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:photo_gallery/features/gallery/data/models/image_model.dart';
import 'package:photo_gallery/features/gallery/domain/usecases/get_images_usecase.dart';
import 'package:photo_gallery/features/gallery/presentation/controllers/state/gallery_state.dart';

final galleryProvider =
    StateNotifierProvider<GalleryController, GalleryState>((ref) {
  return GalleryController(ref: ref);
});

class GalleryController extends StateNotifier<GalleryState> {
  final Ref? ref;
  final GetImagesUsecase getImagesUsecase = GetImagesUsecase();

  GalleryController({this.ref}) : super(GalleryState());

  Future getImages({bool? initData}) async {
    state = state.update(isLoading: true);
    List<ImageModel> imageList = await getImagesUsecase
        .call(initData == true ? 1 : state.currentPage + 1);
    debugPrint("Total image fetched: ${imageList.length}");
    if (imageList.isNotEmpty) {
      state = state.update(
        initData: initData,
        isLoading: false,
        images: imageList,
        page: initData == true ? 1 : state.currentPage + 1,
      );
    }
  }
}
