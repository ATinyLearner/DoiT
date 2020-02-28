import 'package:flutter/material.dart';
import './task_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                longPressCallback: () {
                  taskData.deleteTask(task);
                },
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCallback: (bool checkBoxState) {
                  taskData.updateTask(task);
                });
          },
          itemCount: taskData
              .taskCount, //for making index count as per our list content
        );
      },
    );
  }
}
