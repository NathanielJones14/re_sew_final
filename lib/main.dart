import 'package:flutter/material.dart';
import 'package:re_sew/UI/Projects.dart';
import 'package:re_sew/UI/Discover.dart';
import 'package:re_sew/UI/Profile.dart';
import 'package:re_sew/UI/HomePage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:re_sew/Utils/Colour.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Re/Sew',
      theme: new ThemeData(
          brightness: Brightness.light,
          primaryColor: brand_01Color,
          accentColor: accent_01Color,
          buttonColor: accent_01Color,
          bottomAppBarColor: whiteColor,
          scaffoldBackgroundColor: copy_02Color,
          primaryTextTheme: TextTheme(
              title: TextStyle(
            color: brand_01Color,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ))),
      home: BottomNavBar()));
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  final _pageOption = [
    HomePage(),
    Discover(),
    ReduceWaste(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        color: Theme.of(context).bottomAppBarColor,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: accent_01Color,
          ),
          Icon(
            Icons.explore,
            size: 30,
            color: accent_01Color,
          ),
          Icon(
            Icons.landscape,
            size: 30,
            color: accent_01Color,
          ),
          Icon(
            Icons.account_circle,
            size: 30,
            color: accent_01Color,
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: _pageOption[_page],
    );
  }
}
