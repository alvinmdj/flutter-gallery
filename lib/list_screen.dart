import 'package:flutter/material.dart';
import 'package:flutter_gallery/detail_screen.dart';
import 'package:flutter_gallery/model/gallery_data.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Gallery'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const GalleryPhotoList(gridCount: 2);
          } 
          else if (constraints.maxWidth <= 1200) {
            return const GalleryPhotoList(gridCount: 3);
          } else {
            return const GalleryPhotoList(gridCount: 4);
          }
        }
      ),
    );
  }
}

class GalleryPhotoList extends StatelessWidget {
  final int gridCount;

  const GalleryPhotoList({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: GridView.count(
          crossAxisCount: gridCount,
          children: galleryPhotoList.map((photo) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(photo: photo);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.network(
                        photo.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                                child: Text(
                                  photo.name,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0, bottom: 10.0),
                                child: LikeButton(),
                              ),
                            ]
                          ),
                        ],
                      )
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isLiked ? Icons.thumb_up_alt : Icons.thumb_up_off_alt,
        color: _isLiked ? Colors.blue : Colors.grey,
      ),
      onPressed: () {
        setState(() {
          _isLiked = !_isLiked;
        });
      },
    );
  }
}
