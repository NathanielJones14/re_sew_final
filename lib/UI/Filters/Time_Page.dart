import 'package:flutter/material.dart';
import 'package:re_sew/Utils/Colour.dart';
import 'package:re_sew/UI/Filters/time_card.dart';
import 'package:re_sew/Models/time_model.dart';
import 'package:re_sew/UI/Filters/Time/quick.dart';
import 'package:re_sew/UI/Filters/Time/short.dart';
import 'package:re_sew/UI/Filters/Time/medium.dart';
import 'package:re_sew/UI/Filters/Time/long.dart';

class TimeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: brand_01Color, //change your color here
        ),
        backgroundColor: whiteColor,
        elevation: 0,
        title: new Text("Time"),
      ),
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => QuickScreen()),
            );
          },
          child: new TimeCard(timeTypes[0]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ShortScreen()),
            );
          },
          child: new TimeCard(timeTypes[1]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MediumScreen()),
            );
          },
          child: new TimeCard(timeTypes[2]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LongScreen()),
            );
          },
          child: new TimeCard(timeTypes[3]),
        ),
      ]),
    );
  }
}
