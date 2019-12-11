import 'package:flutter/material.dart';
import 'package:re_sew/Models/filters_model.dart';
import 'package:re_sew/Models/projects_model.dart';
import 'package:re_sew/UI/Filters/Categories/Home_category.dart';
import 'package:re_sew/UI/Filters/Categories/Luggage.dart';
import 'package:re_sew/UI/Filters/Categories/Other.dart';
import 'package:re_sew/UI/Projects_recommended.dart';
import 'package:re_sew/UI/home_page_body.dart';
import 'package:re_sew/UI/Project_categories_card.dart';
import 'package:re_sew/Models/categories_model.dart';
import 'package:re_sew/UI/Filter_Categories.dart';
import 'package:re_sew/Utils/Colour.dart';
import 'package:re_sew/UI/Filters/Categories/Clothing.dart';
import 'package:re_sew/UI/Filters/Time_Page.dart';
import 'package:re_sew/UI/Filters/Material_page.dart';
import 'package:re_sew/UI/Filters/Skill_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Re/Sew'),
        centerTitle: false,
        backgroundColor: whiteColor,
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
                  color: brand_01Color,
                )),
          ),
          new CurrentProjectCard(),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 0, 0),
            child: Text('Projects',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: brand_01Color,
                )),
          ),
          new Container(
            height: 140.0,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ClothingScreen()));
                  },
                  child: new ProjectCategories(categoryItems[0]),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LuggageScreen()),
                    );
                  },
                  child: new ProjectCategories(categoryItems[1]),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => HomeCategoryScreen()),
                    );
                  },
                  child: new ProjectCategories(categoryItems[2]),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => OtherScreen()),
                    );
                  },
                  child: new ProjectCategories(categoryItems[3]),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text('Recommended',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: brand_01Color,
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
                new RecommendedProjects(projects[4]),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 8),
            child: Text('Categories',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: brand_01Color,
                )),
          ),
          new Container(
            child: new Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SkillScreen()),
                    );
                  },
                  child: new FilterCategories(filterTypes[0]),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TimeScreen()),
                    );
                  },
                  child: new FilterCategories(filterTypes[1]),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MaterialScreen()),
                    );
                  },
                  child: new FilterCategories(filterTypes[2]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
