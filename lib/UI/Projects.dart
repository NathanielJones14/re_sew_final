import 'package:flutter/material.dart';
import 'package:re_sew/Models/reduce_waste_model.dart';
import 'package:re_sew/UI/Reduce_waste_body.dart';

class ReduceWaste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Reduce Waste'),
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
          ReduceWasteBody(reduceWasteTypes[0]),
          ReduceWasteBody(reduceWasteTypes[1]),
          ReduceWasteBody(reduceWasteTypes[2]),
          ReduceWasteBody(reduceWasteTypes[3]),
        ]));
  }
}
