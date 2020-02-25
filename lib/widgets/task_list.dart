import 'package:flutter/material.dart';
import './task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(task: 'Buy Milk'),
        TaskTile(task: 'Drink Water'),
        TaskTile(task: 'Create a project'),
      ],
    );
  }
}
