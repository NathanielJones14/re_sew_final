import 'package:flutter/material.dart';
import 'package:re_sew/UI/project_row.dart';
import 'package:re_sew/Models/projects_model.dart';

class CurrentProjectCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new CurrentProjects(projects[0]);
  }
}
