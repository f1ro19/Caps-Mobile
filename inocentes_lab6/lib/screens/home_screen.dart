import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../screens/newsfeed_screen.dart';
import '../screens/notification_screen.dart';
import '../widgets/customfont.dart';
import '../screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectIndex = 0;
  bool inHome = true;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: inHome ? AppBar(
        shadowColor: FB_TEXT_COLOR_WHITE,
        elevation: 2,
        title: CustomFont(text: 'Facebook', fontSize: ScreenUtil().setSp(25),
          color: FB_PRIMARY, fontFamily: 'Inocentes',),
      ):

      AppBar(
      shadowColor: FB_TEXT_COLOR_WHITE,
      elevation: 2,
      title: CustomFont(text: 'Jacob Inocentes', fontSize: ScreenUtil().setSp(25),
        color: Colors.black, fontFamily: 'INOCENTES',),
    )
      ,
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          NewsfeedScreen(),
          NotificationScreen(),
          ProfileScreen(userName: '',),
        ],
        onPageChanged: (page) {
          setState(
                () {
              _selectIndex = page;
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile')
        ],
        selectedItemColor: FB_PRIMARY,
        currentIndex: _selectIndex,
      ),
    );
  }

    void _onTappedBar(int value) {

    if(_selectIndex != value) {
      setState(() {
        _selectIndex = value;
      });
      _pageController.jumpToPage(value);
      if (inHome) {
        inHome = false;
      } else {
        inHome = true;
      }
    }
    }
}