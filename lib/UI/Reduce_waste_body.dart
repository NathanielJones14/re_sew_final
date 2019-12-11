import 'package:flutter/material.dart';
import 'package:re_sew/Models/reduce_waste_model.dart';
import 'package:re_sew/Utils/text_style.dart';

class ReduceWasteBody extends StatelessWidget {
  final Reduce reduceWasteTypes;

  ReduceWasteBody(this.reduceWasteTypes);

  @override
  Widget build(BuildContext context) {
    final reduceWasteText = new Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            reduceWasteTypes.title,
            style: Style.header2TextStyle,
          ),
          Container(
            height: 8,
          ),
          Text(
            reduceWasteTypes.body,
            style: Style.mainCopyTextStyle,
          )
        ],
      ),
    );

    final categoriesCard = new Container(
      height: 180,
      width: 140,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(reduceWasteTypes.image),
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
      height: 280,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: new Row(
        children: <Widget>[
          Flexible(
            child: reduceWasteText,
          ),
          categoriesCard,
        ],
      ),
    );
  }
}
