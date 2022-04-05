import 'package:flutter/material.dart';
import 'package:flutter_gallery/model/gallery_data.dart';

class DetailScreen extends StatelessWidget {
  final GalleryPhoto photo;

  const DetailScreen({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // if (constraints.maxWidth <= 600) {
          return const DetailMobilePage();
        // }
        // else if (constraints.maxWidth <= 1200) {
        //   return const TourismPlaceGrid(gridCount: 4);
        // } else {
        //   return const TourismPlaceGrid(gridCount: 6);
        // }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  const DetailMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Gallery'),
      ),
      body: const Text('Detail Mobile Page'),
    );
  }
}