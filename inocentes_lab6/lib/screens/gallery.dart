import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Gallery extends StatefulWidget{
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<Gallery>{
  List posts = [
    'assets/images/im1.jpg',
    'assets/images/im2.png',
    'assets/images/im3.jpg',
    'assets/images/image.jpg',
    'assets/images/iyepostz.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemBuilder: (context, index) {
                return Image.asset(posts[index]);
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3
              ),
              itemCount: posts.length,
            ),
          ),
        ],
      ),
    );
  }
}