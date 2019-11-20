import 'package:flutter/material.dart';
import 'package:re_sew/Models/categories_model.dart';

class CategoriesCard extends StatefulWidget {
  final Categories categories;

  CategoriesCard(this.categories);

  @override
  _CategoriesCardState createState() => _CategoriesCardState(categories);
}

class _CategoriesCardState extends State<CategoriesCard> {
  Categories categories;

  _CategoriesCardState(this.categories);

  @override
  Widget build(BuildContext context) {
    return Text(widget.categories.name);
  }
}
