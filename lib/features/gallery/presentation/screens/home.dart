import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_gallery/features/gallery/data/models/image_model.dart';
import 'package:photo_gallery/features/gallery/presentation/controllers/gallery_controller.dart';
import 'package:photo_gallery/features/gallery/presentation/widgets/image_card.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  ScrollController? _controller;
  @override
  void initState() {
    _controller =
        ScrollController(initialScrollOffset: 0.0, keepScrollOffset: true);
    _controller!.addListener(_scrollListener);

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((t) {
      ref.read(galleryProvider.notifier).getImages(
            initData: true,
          );
    });
    super.initState();
  }

  _scrollListener() async {
    var isEnd = _controller!.offset >= _controller!.position.maxScrollExtent &&
        !_controller!.position.outOfRange;
    if (isEnd) {
      ref.read(galleryProvider.notifier).getImages();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var galeryProvider = ref.watch(galleryProvider);
    List<ImageModel> imageList = galeryProvider.images ?? [];
    return Scaffold(
      appBar: AppBar(
        title: Text("Unsplash Gallery"),
        centerTitle: true,
        surfaceTintColor: Colors.white,
      ),
      body: RefreshIndicator(
        onRefresh: () =>
            ref.read(galleryProvider.notifier).getImages(initData: true),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
          child: GridView.custom(
            controller: _controller,
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              repeatPattern: QuiltedGridRepeatPattern.same,
              pattern: [
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(2, 2),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(1, 1),
                QuiltedGridTile(2, 3),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              childCount: imageList.length,
              (context, index) => ImageCard(
                imageUrl: imageList[index].urls?.raw ?? "",
                id: imageList[index].id ?? "",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
