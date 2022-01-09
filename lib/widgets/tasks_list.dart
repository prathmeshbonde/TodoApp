// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:todo_app/model/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: taskData.getTaskname(index),
            checkboxCallback: (checkboxState) {
              taskData.updateTask(taskData.tasksList[index]);
            },
            isChecked: taskData.getIsDone(index),
            deleteCallback: () {
              taskData.deleteTask(taskData.tasksList[index]);
            },
          );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
