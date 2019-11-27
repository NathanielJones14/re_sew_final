import 'package:flutter/material.dart';
import 'package:re_sew/Models/filters_model.dart';
import 'package:re_sew/Models/projects_model.dart';
import 'package:re_sew/UI/Projects_recommended.dart';
import 'package:re_sew/UI/home_page_body.dart';
import 'package:re_sew/UI/Project_categories_card.dart';
import 'package:re_sew/Models/categories_model.dart';
import 'package:re_sew/UI/Filter_Categories.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Re/Sew'),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(16, 24, 0, 0),
            child: Text('Latest Project',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4D5587),
                )),
          ),
          new CurrentProjectCard(),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text('Projects',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4D5587),
                )),
          ),
          new Container(
            height: 140.0,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new ProjectCategories(categoryItems[0]),
                new ProjectCategories(categoryItems[1]),
                new ProjectCategories(categoryItems[2]),
                new ProjectCategories(categoryItems[3]),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text('Recommended',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4D5587),
                )),
          ),
          new Container(
            height: 140.0,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new RecommendedProjects(projects[0]),
                new RecommendedProjects(projects[1]),
                new RecommendedProjects(projects[2]),
                new RecommendedProjects(projects[3]),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text('Categories',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4D5587),
                )),
          ),
          new Container(
            child: new Column(
              children: <Widget>[
                new FilterCategories(filterTypes[0]),
                new FilterCategories(filterTypes[1]),
                new FilterCategories(filterTypes[2]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
