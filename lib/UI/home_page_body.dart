import 'package:flutter/material.dart';
import 'package:re_sew/Models/categories_model.dart';
import 'package:re_sew/UI/project_row.dart';
import 'package:re_sew/Models/projects_model.dart';
import 'package:re_sew/UI/Project_categories_card.dart';

class CurrentProjectCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CurrentProjects(projects[0]);
  }
}

class ProjectCategoriesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ProjectCategories(categories[2]);
  }
}
