import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  TaskTile({this.taskTitle, this.isChecked, this.checkBoxCallback});
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: checkBoxCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
    );
  }
}
