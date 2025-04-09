import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../widgets/post_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Other content like posts
        PostCard(
          userName: 'Paeng',
          postContent: 'hehehe!',
          numOfLikes: 2000,
          date: 'Jan 5',
          profileImageUrl: 'assets/images/im1.jpg',
          imageUrl: 'assets/images/im1.jpg',
        ),
        PostCard(
          userName: 'Boss Sz',
          postContent: 'bati na tau',
          numOfLikes: 2000,
          date: 'Feb 6',
          profileImageUrl: 'assets/images/bossszpfp.jpg',
          imageUrl: 'assets/images/batinapost.jpg',
        ),
        buildCarousel(),

        PostCard(
          userName: 'yei',
          postContent: 'bff zone',
          numOfLikes: 2000,
          date: 'Dec 6',
          profileImageUrl: 'assets/images/iyepfp.jpg',
          imageUrl: 'assets/images/iyepostz.jpg',
        ),
        PostCard(
          userName: 'nnye',
          postContent: 'issue k',
          numOfLikes: 2000,
          date: 'Nov 3',
          profileImageUrl: 'assets/images/im2.jpg',
          imageUrl: 'assets/images/lastpost.jpg',
        ), // Use the carousel here
        buildCarousel_2(),

      ],
    );
  }

  // Create a carousel for the PostCard widgets
  Widget buildCarousel() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 582, // Adjust the height to fit your layout
        enlargeCenterPage: true,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 3),
        aspectRatio: 16/9,
        viewportFraction: 0.8,
      ),
      items: carouselItems().map((postCard) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              child: postCard, // Display the PostCard here
            );
          },
        );
      }).toList(),
    );
  }

  Widget buildCarousel_2() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 582, // Adjust the height to fit your layout
        enlargeCenterPage: true,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 3),
        aspectRatio: 16/9,
        viewportFraction: 0.8,
      ),
      items: carouselItems().map((postCard) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              child: postCard, // Display the PostCard here
            );
          },
        );
      }).toList(),
    );
  }

  List<Widget> carouselItems() {
    return [
      PostCard(
        userName: 'Art',
        imageUrl: 'assets/images/Volume1.webp',
        profileImageUrl: 'https://tbate.fandom.com/wiki/Volumes_and_Chapters?file=Volume1.jpg',
        postContent: 'TBATE',
        date: 'Jan 1',
        adsMarket: 'Rose',
        adsName: 'Advertisement',
      ),
      PostCard(
          userName: 'Art',
          imageUrl: 'https://www.pinterest.com/pin/761741724486884740/',
          profileImageUrl: 'https://tbate.fandom.com/wiki/Volumes_and_Chapters?file=Volume1.jpg',
          postContent: 'TBATE',
          date: 'October 12',
          adsMarket: 'TBATE'
      ),
      PostCard(
          userName: 'Rudeus',
          imageUrl: 'assets/images/LNVol_1.webp',
          profileImageUrl: 'https://mushokutensei.fandom.com/wiki/Rudeus_Greyrat?file=RudeusAnime2.png',
          postContent: 'mmmm',
          date: 'October 12',
          adsMarket: 'Mushoku Tensei'
      ),
    ];
  }
}
