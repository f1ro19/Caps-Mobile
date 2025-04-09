import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/customfont.dart';
import '../screens/detail_screen.dart';
import 'custom_inkwell_button.dart';

class PostCard extends StatefulWidget {
  final String userName;
  final String postContent;
  final String date;
  int numOfLikes;
  final String imageUrl;
  final String profileImageUrl;
  final String adsMarket;
  final String adsName;

  PostCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes = 1,
    this.imageUrl = 'assets/images/batinapost.jpg',
    this.profileImageUrl = 'assets/images/bossszpfp.jpg',
    this.adsMarket = 'assets/images/knockout.jpg',
    this.adsName = 'knockout',
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
      //Navigator.pushNamed(context, '/detail'),
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(
            userName: widget.userName,
            postContent: widget.postContent,
            date: widget.date,
            numOfLikes: widget.numOfLikes,
            imageUrl: widget.imageUrl,
            profileImageUrl: widget.profileImageUrl,
          ),
        ),
      ),
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setSp(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CustomFont(
                    text: widget.adsName,
                    fontSize: 17.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
              SizedBox(
                width: ScreenUtil().setWidth(10),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  (widget.profileImageUrl == '')
                      ? const Icon(Icons.person)
                      : ClipOval(
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      width: 30,
                      height: 30,
                      imageUrl: widget.profileImageUrl,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                          CircularProgressIndicator(
                              color: FB_DARK_PRIMARY,
                              value: downloadProgress.progress),
                      errorWidget: (context, url, error) => Icon(
                        Icons.error,
                        size: 100.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFont(
                        text: widget.userName,
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomFont(
                            text: widget.date,
                            fontSize: ScreenUtil().setSp(12),
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(3),
                          ),
                          Icon(
                            Icons.public,
                            color: Colors.grey,
                            size: ScreenUtil().setSp(15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(5)),
              CustomFont(
                  text: widget.postContent,
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black),
              SizedBox(height: ScreenUtil().setHeight(5)),
              (widget.imageUrl == '')
                  ? SizedBox(
                height: ScreenUtil().setHeight(0.1),
              )
                  : Align(
                alignment: Alignment.center,
                child: CachedNetworkImage(
                  imageUrl: widget.imageUrl,
                  progressIndicatorBuilder:
                      (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                          color: FB_DARK_PRIMARY,
                          value: downloadProgress.progress),
                  errorWidget: (context, url, error) => Icon(
                    Icons.error,
                    size: 100.sp,
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(5)),
              (widget.adsMarket != '')
                  ? const SizedBox()
                  : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      print('liked');
                      setState(() {
                        widget.numOfLikes++;
                      });
                    },
                    icon: const Icon(
                      Icons.thumb_up,
                      color: FB_DARK_PRIMARY,
                    ),
                    label: CustomFont(
                      text: (widget.numOfLikes == 0)
                          ? 'Like'
                          : widget.numOfLikes.toString(),
                      fontSize: ScreenUtil().setSp(12),
                      color: FB_DARK_PRIMARY,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment,
                      color: FB_DARK_PRIMARY,
                    ),
                    label: CustomFont(
                        text: 'Comment',
                        fontSize: ScreenUtil().setSp(12),
                        color: FB_DARK_PRIMARY),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.redo,
                      color: FB_DARK_PRIMARY,
                    ),
                    label: CustomFont(
                        text: 'Share',
                        fontSize: ScreenUtil().setSp(12),
                        color: FB_DARK_PRIMARY),
                  ),
                ],
              ),
              (widget.adsMarket != '')
                  ? const SizedBox()
                  : Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: ScreenUtil().setWidth(10),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        ScreenUtil().setSp(10), 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(25),
                    width: ScreenUtil().setWidth(330),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenUtil().setSp(10))),
                    ),
                    child: CustomFont(
                        text: 'Write a comment..',
                        fontSize: ScreenUtil().setSp(11),
                        color: Colors.grey),
                  ),
                ],
              ),
              (widget.adsMarket != '')
                  ? Container(
                padding: EdgeInsets.all(5.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomFont(
                          text: 'MORE DETAILS',
                          fontSize: 17.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                    CustomInkWellButton(
                      height: 40.w,
                      width: 40.h,
                      icon: Icon(
                        Icons.arrow_right_alt,
                        color: FB_LIGHT_PRIMARY,
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            userName: widget.userName,
                            postContent: widget.postContent,
                            date: widget.date,
                            numOfLikes: widget.numOfLikes,
                            imageUrl: widget.imageUrl,
                            profileImageUrl: widget.profileImageUrl,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
                  : const SizedBox(),
              (widget.adsMarket != '')
                  ? const SizedBox()
                  : SizedBox(
                height: ScreenUtil().setHeight(10),
              ),
              (widget.adsMarket != '')
                  ? const SizedBox()
                  : CustomFont(
                  text: 'View comments',
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
