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
          final taskItem = taskData.tasksList[index];
          return TaskTile(
            isChecked: Provider.of<TaskData>(context).getIsDone(index),
            taskTitle: Provider.of<TaskData>(context).getTaskname(index),
            checkboxCallback: (checkboxState) {
              // setState(() {
              //   Provider.of<TaskData>(context).tasks[index].toggleDone();
              // });
              taskData.updateTask(taskItem);
            },
          );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
