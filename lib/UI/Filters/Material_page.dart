import 'package:flutter/material.dart';
import 'package:re_sew/Utils/Colour.dart';
import 'package:re_sew/UI/Filters/material_card.dart';
import 'package:re_sew/Models/material_model.dart';
import 'package:re_sew/UI/Filters/Material/Cotton.dart';
import 'package:re_sew/UI/Filters/Material/Wool.dart';
import 'package:re_sew/UI/Filters/Material/Denim.dart';
import 'package:re_sew/UI/Filters/Material/Synthetic.dart';

class MaterialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: brand_01Color, //change your color here
        ),
        backgroundColor: whiteColor,
        elevation: 0,
        title: new Text("Material"),
      ),
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CottonScreen()),
            );
          },
          child: new MaterialsCard(materialTypes[0]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DenimScreen()),
            );
          },
          child: new MaterialsCard(materialTypes[1]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => SyntheticScreen()),
            );
          },
          child: new MaterialsCard(materialTypes[2]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => WoolScreen()),
            );
          },
          child: new MaterialsCard(materialTypes[3]),
        ),
      ]),
    );
  }
}
