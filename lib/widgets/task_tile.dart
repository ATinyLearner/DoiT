import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function longPressCallback;
  TaskTile({
    this.taskTitle,
    this.isChecked,
    this.checkBoxCallback,
    this.longPressCallback,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: longPressCallback,
      child: CheckboxListTile(
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
      ),
    );
  }
}
