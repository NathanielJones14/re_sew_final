import 'package:flutter/material.dart';
import 'package:re_sew/Models/projects_model.dart';
import 'package:re_sew/Utils/text_style.dart';
import 'package:re_sew/UI/project_detail_page.dart';

class BaseProjectCard extends StatelessWidget {
  final Project project;

  BaseProjectCard(this.project);

  @override
  Widget build(BuildContext context) {
    final projectCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            project.name,
            style: Style.headerTextStyle,
          ),
          new Container(height: 40.0),
          new Text(project.difficulty, style: Style.commonTextStyle),
          new Container(height: 10.0),
          new Text(project.material, style: Style.commonTextStyle),
          new Container(height: 10.0),
          new Text(project.time, style: Style.commonTextStyle),
        ],
      ),
    );

    final projectCard = new Container(
      child: projectCardContent,
      height: 200.0,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(project.image),
          fit: BoxFit.fitWidth,
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
            height: 200,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: new Stack(
              children: <Widget>[
                projectCard,
              ],
            )));
  }
}
