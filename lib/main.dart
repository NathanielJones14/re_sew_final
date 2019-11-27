import 'package:flutter/material.dart';
import 'package:re_sew/UI/Projects.dart';
import 'package:re_sew/UI/Discover.dart';
import 'package:re_sew/UI/Profile.dart';
import 'package:re_sew/UI/HomePage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Re/Sew',
      theme: new ThemeData(
          primaryTextTheme: TextTheme(
              title: TextStyle(
        color: Color(0xff4D5587),
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
  int _page = 2;
  final _pageOption = [
    Projects(),
    Discover(),
    HomePage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xff4D5587),
        color: Colors.white,
        items: <Widget>[
          Icon(Icons.gavel, size: 30),
          Icon(Icons.explore, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.account_circle, size: 30),
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
