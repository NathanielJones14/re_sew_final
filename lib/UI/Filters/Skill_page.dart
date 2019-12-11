import 'package:flutter/material.dart';
import 'package:re_sew/Utils/Colour.dart';
import 'package:re_sew/UI/Filters/skill_card.dart';
import 'package:re_sew/Models/difficulty_model.dart';
import 'package:re_sew/UI/Filters/Skill/Getting_started.dart';
import 'package:re_sew/UI/Filters/Skill/Learning_quickly.dart';
import 'package:re_sew/UI/Filters/Skill/Mastering.dart';
import 'package:re_sew/UI/Filters/Skill/Technical.dart';

class SkillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: brand_01Color, //change your color here
        ),
        backgroundColor: whiteColor,
        elevation: 0,
        title: new Text("Skill"),
      ),
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => GettingStartedScreen()),
            );
          },
          child: new SkillCard(difficultyTypes[0]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LearningScreen()),
            );
          },
          child: new SkillCard(difficultyTypes[1]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => TechnicalScreen()),
            );
          },
          child: new SkillCard(difficultyTypes[2]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MasteringScreen()),
            );
          },
          child: new SkillCard(difficultyTypes[3]),
        ),
      ]),
    );
  }
}
