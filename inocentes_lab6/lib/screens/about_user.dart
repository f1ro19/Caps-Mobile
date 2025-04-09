import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inocentes_lab6/widgets/customfont.dart';

class AboutUser extends StatefulWidget {
  const AboutUser({super.key});

  @override
  State<AboutUser> createState() => _AboutUserScreenState();
}

class _AboutUserScreenState extends State<AboutUser> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          ExpansionTile(
            title: Text(
              'Overview',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.blue,
            collapsedTextColor: Colors.black,
            textColor: Colors.white,
            iconColor: Colors.white,
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomFont(
                            text: 'July, 28, 2003',
                            fontSize: ScreenUtil().setSp(10),
                            color: Colors.black,
                          ),
                          CustomFont(
                            text: 'Birthdate',
                            fontSize: ScreenUtil().setSp(8),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomFont(
                            text: 'Single',
                            fontSize: ScreenUtil().setSp(10),
                            color: Colors.black,
                          ),
                          CustomFont(
                            text: 'Status',
                            fontSize: ScreenUtil().setSp(8),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomFont(
                            text: 'Edi Sa PuZo Mo <33',
                            fontSize: ScreenUtil().setSp(10),
                            color: Colors.black,
                          ),
                          CustomFont(
                            text: 'Workplace',
                            fontSize: ScreenUtil().setSp(8),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          ExpansionTile(
            title: const Text(
              'Work and Education',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
            collapsedTextColor: Colors.black,
            textColor: Colors.white,
            iconColor: Colors.white,
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomFont(
                            text: 'Edi Sa PuZo Mo <33',
                            fontSize: ScreenUtil().setSp(10),
                            color: Colors.black,
                          ),
                          CustomFont(
                            text: 'Full Time',
                            fontSize: ScreenUtil().setSp(8),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomFont(
                            text: 'Went to Krusty Krabs',
                            fontSize: ScreenUtil().setSp(10),
                            color: Colors.black,
                          ),
                          CustomFont(
                            text: 'Graduated in 2016',
                            fontSize: ScreenUtil().setSp(8),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomFont(
                            text: 'Studying at National University',
                            fontSize: ScreenUtil().setSp(10),
                            color: Colors.black,
                          ),
                          CustomFont(
                            text: 'Currently',
                            fontSize: ScreenUtil().setSp(8),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          ExpansionTile(
            title: const Text(
              'Family and Relationship',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.blue,
            collapsedTextColor: Colors.black,
            textColor: Colors.white,
            iconColor: Colors.white,
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomFont(
                            text: 'Slyvie',
                            fontSize: ScreenUtil().setSp(10),
                            color: Colors.black,
                          ),
                          CustomFont(
                            text: 'Mother',
                            fontSize: ScreenUtil().setSp(8),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomFont(
                            text: 'Leywin',
                            fontSize: ScreenUtil().setSp(10),
                            color: Colors.black,
                          ),
                          CustomFont(
                            text: 'Father',
                            fontSize: ScreenUtil().setSp(8),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomFont(
                            text: 'Iris',
                            fontSize: ScreenUtil().setSp(10),
                            color: Colors.black,
                          ),
                          CustomFont(
                            text: 'Sister',
                            fontSize: ScreenUtil().setSp(8),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
