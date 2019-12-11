import 'package:flutter/material.dart';
import 'package:re_sew/Models/Time/medium_model.dart';
import 'package:re_sew/Utils/Colour.dart';
import 'package:re_sew/Utils/text_style.dart';
import 'package:re_sew/UI/Filters/Time/medium_detail_page.dart';

class MediumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          iconTheme: IconThemeData(
            color: brand_01Color, //change your color here
          ),
          backgroundColor: whiteColor,
          elevation: 0,
          title: new Text("5-10 Hours"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) =>
              new MediumProjectCard(mediumList[index]),
          itemCount: mediumList.length,
        ));
  }
}

class MediumProjectCard extends StatelessWidget {
  final Medium mediumList;

  MediumProjectCard(this.mediumList);

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
            mediumList.name,
            style: Style.headerTextStyle,
          ),
          new Container(height: 40.0),
          new Text(mediumList.difficulty, style: Style.commonTextStyle),
          new Container(height: 10.0),
          new Text(mediumList.material, style: Style.commonTextStyle),
          new Container(height: 10.0),
          new Text(mediumList.time, style: Style.commonTextStyle),
        ],
      ),
    );

    final projectCard = new Container(
      child: projectCardContent,
      height: 200.0,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage(mediumList.image),
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
              return MediumDetailPage(mediumList);
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
