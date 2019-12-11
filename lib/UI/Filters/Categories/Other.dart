import 'package:flutter/material.dart';
import 'package:re_sew/Utils/Colour.dart';
import 'package:re_sew/Utils/text_style.dart';

class OtherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          iconTheme: IconThemeData(
            color: brand_01Color, //change your color here
          ),
          backgroundColor: whiteColor,
          elevation: 0,
          title: new Text("Other"),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
          child: Text(
            'There are currently no projects for this category. Please return back and choose another. More projects will be added soon!',
            style: Style.boldCopyTextStyle,
          ),
        ));
  }
}
