import 'package:flutter/material.dart';
import 'package:re_sew/Models/Materials/denim_model.dart';
import 'package:re_sew/Utils/Colour.dart';
import 'package:re_sew/Utils/text_style.dart';
import 'package:re_sew/UI/Filters/Material/denim_detail_page.dart';

class DenimScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          iconTheme: IconThemeData(
            color: brand_01Color, //change your color here
          ),
          backgroundColor: whiteColor,
          elevation: 0,
          title: new Text("Denim"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) =>
              new DenimProjectCard(denimList[index]),
          itemCount: denimList.length,
        ));
  }
}

class DenimProjectCard extends StatelessWidget {
  final Denim denimList;

  DenimProjectCard(this.denimList);

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
            denimList.name,
            style: Style.headerTextStyle,
          ),
          new Container(height: 40.0),
          new Text(denimList.difficulty, style: Style.commonTextStyle),
          new Container(height: 10.0),
          new Text(denimList.material, style: Style.commonTextStyle),
          new Container(height: 10.0),
          new Text(denimList.time, style: Style.commonTextStyle),
        ],
      ),
    );

    final projectCard = new Container(
      child: projectCardContent,
      height: 200.0,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(denimList.image),
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
              return DenimDetailPage(denimList);
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
