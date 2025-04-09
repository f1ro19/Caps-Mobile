import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/customfont.dart';

class DetailScreen extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final String imageUrl;
  final String profileImageUrl;

  DetailScreen({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    required this.date,
    required this.imageUrl,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomFont(
          text: userName,
          fontSize: ScreenUtil().setSp(20),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Section
              if (imageUrl.isNotEmpty) ...[
                Image.network(imageUrl),
                SizedBox(height: ScreenUtil().setHeight(20)),
              ],

              // Profile and Date Section
              Row(
                children: [
                  CircleAvatar(
                    radius: ScreenUtil().setSp(25),
                    backgroundImage: profileImageUrl.isNotEmpty
                        ? NetworkImage(profileImageUrl)
                        : null,
                    child: profileImageUrl.isEmpty
                        ? const Icon(Icons.person, size: 30)
                        : null,
                  ),
                  SizedBox(width: ScreenUtil().setWidth(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFont(
                        text: date,
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.grey,
                      ),
                      SizedBox(height: ScreenUtil().setHeight(3)),
                      Icon(
                        Icons.public,
                        color: Colors.grey,
                        size: ScreenUtil().setSp(14),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz, color: Colors.grey),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(15)),

              // Post Content Section
              CustomFont(
                text: postContent,
                fontSize: ScreenUtil().setSp(18),
                color: Colors.black,
              ),
              SizedBox(height: ScreenUtil().setHeight(30)),

              // Divider
              const Divider(),

              // Action Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                        Icons.thumb_up,
                        color: FB_DARK_PRIMARY),
                    label: CustomFont(
                      text: (numOfLikes == 0) ? 'Like' : numOfLikes.toString(),
                      fontSize: ScreenUtil().setSp(12),
                      color: FB_DARK_PRIMARY,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                        Icons.comment,
                        color: FB_DARK_PRIMARY),
                    label: CustomFont(
                      text: 'Comment',
                      fontSize: ScreenUtil().setSp(12),
                      color: FB_DARK_PRIMARY,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                        Icons.redo,
                        color: FB_DARK_PRIMARY),
                    label: CustomFont(
                      text: 'Share',
                      fontSize: ScreenUtil().setSp(12),
                      color: FB_DARK_PRIMARY,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}