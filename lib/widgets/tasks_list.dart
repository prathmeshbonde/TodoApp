// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Task name',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (val) => print('val'),
      ),
    );
  }
}
