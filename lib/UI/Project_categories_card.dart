import 'package:flutter/material.dart';
import 'package:re_sew/Models/categories_model.dart';
import 'package:re_sew/Models/text_style.dart';

class ProjectCategories extends StatelessWidget {
  final Categories categories;

  ProjectCategories(this.categories);

  @override
  Widget build(BuildContext context) {
    final categoriesCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            categories.name,
            style: Style.headerTextStyle,
          ),
        ],
      ),
    );

    final categoriesCard = new Container(
      child: categoriesCardContent,
      height: 120.0,
      width: 120.0,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(categories.image),
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
        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 16.0,
        ),
        child: new Stack(
          children: <Widget>[
            categoriesCard,
          ],
        ));
  }
}
