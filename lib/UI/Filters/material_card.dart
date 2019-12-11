import 'package:flutter/material.dart';
import 'package:re_sew/Models/material_model.dart';
import 'package:re_sew/Utils/text_style.dart';

class MaterialsCard extends StatelessWidget {
  final Materials materials;

  MaterialsCard(this.materials);

  @override
  Widget build(BuildContext context) {
    final skillCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            materials.name,
            style: Style.headerTextStyleAccent,
          ),
        ],
      ),
    );

    final materialsCard = new Container(
      child: skillCardContent,
      height: 200.0,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(materials.image),
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
    return new Container(
        height: 200,
        width: 200,
        margin: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 12.0,
        ),
        child: new Stack(
          children: <Widget>[
            materialsCard,
          ],
        ));
  }
}
