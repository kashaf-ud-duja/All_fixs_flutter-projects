import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoView(
      imageProvider: NetworkImage("https://cdn.pixabay.com/photo/2020/07/08/08/07/daisy-5383056_1280.jpg"),
      heroAttributes: PhotoViewHeroAttributes(tag: "tag"),
    ));
  }
}
