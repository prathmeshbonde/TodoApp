import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_app/model/tasks.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Eat eggs'),
    Task(name: 'Drink milk'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  String getTaskname(int index) {
    return _tasks[index].name;
  }

  bool getIsDone(int index) {
    return _tasks[index].isDone;
  }

  UnmodifiableListView<Task> get tasksList {
    return UnmodifiableListView(_tasks);
  }

  void toggleDone(int index) {
    _tasks[index].toggleDone();
  }

  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
