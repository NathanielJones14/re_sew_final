import 'package:flutter/material.dart';
import 'package:re_sew/Models/projects_model.dart';
import 'package:re_sew/Models/text_style.dart';

class CurrentProjects extends StatelessWidget {
  final Project project;

  CurrentProjects(this.project);

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
      height: 180.0,
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

    return new Container(
        height: 180,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 16.0,
        ),
        child: new Stack(
          children: <Widget>[
            projectCard,
          ],
        ));
  }
}
