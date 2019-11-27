import 'package:flutter/material.dart';
import 'package:re_sew/Models/categories_model.dart';
import 'package:re_sew/Models/text_style.dart';

class CategoriesBody extends StatelessWidget {
  final Categories categories;

  CategoriesBody(this.categories);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Color(0xff46e087),
      title: Text(
        categories.name,
        style: Style.headerTextStyle,
      ),
    ));
  }
}
