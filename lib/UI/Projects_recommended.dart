import 'package:flutter/material.dart';
import 'package:re_sew/Models/projects_model.dart';
import 'package:re_sew/Utils/text_style.dart';
import 'package:re_sew/UI/project_detail_page.dart';

class RecommendedProjects extends StatelessWidget {
  final Project project;

  RecommendedProjects(this.project);
  @override
  Widget build(BuildContext context) {
    final categoriesCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(8, 16, 0, 0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            project.name,
            style: Style.headerTextStyle,
          ),
        ],
      ),
    );

    final categoriesCard = new Container(
      child: categoriesCardContent,
      height: 120.0,
      width: 160.0,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(project.image),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return new GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return ProjectDetailPage(project);
            }),
          );
        },
        child: Container(
            height: 120.0,
            margin: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: new Stack(
              children: <Widget>[
                categoriesCard,
              ],
            )));
  }
}
