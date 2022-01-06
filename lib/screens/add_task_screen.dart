// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key, this.addTaskCallback}) : super(key: key);

  final Function? addTaskCallback;

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      // padding: const EdgeInsets.only(top: 20.0),
      color: const Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                ),
                maxLength: 80,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              TextButton(
                onPressed: () {
                  addTaskCallback!(newTaskTitle);
                },
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                  fixedSize: MaterialStateProperty.all(const Size(20.0, 50.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
