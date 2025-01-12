class GalleryState {
  bool? isLoading;

  GalleryState({this.isLoading});

  GalleryState update({bool? isLoading}) {
    return GalleryState(isLoading: isLoading ?? this.isLoading);
  }
}
