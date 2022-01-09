import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function() deleteCallback;

  const TaskTile({Key? key, required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.deleteCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20.0,
          color: !isChecked ? Colors.black : Colors.black38,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback, //toggleCheckbox,
      ),
      onLongPress: deleteCallback,
    );
  }
}
