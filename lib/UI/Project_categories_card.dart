import 'package:flutter/material.dart';
import 'package:re_sew/Models/categories_model.dart';
import 'package:re_sew/Utils/text_style.dart';

class ProjectCategories extends StatelessWidget {
  final Categories categories;

  ProjectCategories(this.categories);

  @override
  Widget build(BuildContext context) {
    final categoriesCardContent = new Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 0, 0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            categories.name,
            style: Style.headerTextStyle,
          ),
        ],
      ),
    );

    final categoriesCard = new Container(
      child: categoriesCardContent,
      height: 120,
      width: 120,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(categories.image),
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

    return Container(
      height: 120,
      margin: const EdgeInsets.fromLTRB(16, 16, 0, 0),
      child: new Stack(
        children: <Widget>[
          categoriesCard,
        ],
      ),
    );
  }
}
