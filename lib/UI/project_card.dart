import 'package:flutter/material.dart';
import 'package:re_sew/Models/projects_model.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  ProjectCard(this.project);

  @override
  _ProjectCardState createState() => _ProjectCardState(project);
}

class _ProjectCardState extends State<ProjectCard> {
  Project project;

  _ProjectCardState(this.project);

  @override
  Widget build(BuildContext context) {
    return Text(widget.project.name);
  }
}
