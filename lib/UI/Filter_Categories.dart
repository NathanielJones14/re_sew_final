import 'package:flutter/material.dart';
import 'package:re_sew/Models/filters_model.dart';
import 'package:re_sew/Models/text_style.dart';

class FilterCategories extends StatelessWidget {
  final Filters filters;

  FilterCategories(this.filters);
  @override
  Widget build(BuildContext context) {
    final categoriesCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 0.0),
      constraints: new BoxConstraints.expand(),
    );

    final filterCategoriesCard = new Container(
      child: categoriesCardContent,
      height: 100.0,
      width: 100.0,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(filters.image),
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

    final filterCategoriesName = Padding(
        padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
        child: Text(
          filters.name,
          style: Style.header2TextStyle,
        ));

    final filterCategoriesArrow = Icon(
      Icons.arrow_forward_ios,
      color: Color(0xff4D5587),
      size: 30.0,
    );

    return new FlatButton(
        padding: EdgeInsets.fromLTRB(16, 8, 24, 0),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {},
        child: new Row(children: <Widget>[
          filterCategoriesCard,
          filterCategoriesName,
          new Expanded(
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                filterCategoriesArrow,
              ]))
        ]));
  }
}
