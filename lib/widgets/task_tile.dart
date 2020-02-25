import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.task});
  final String task;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: false,
      onChanged: null,
      title: Text(
        task,
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }
}
