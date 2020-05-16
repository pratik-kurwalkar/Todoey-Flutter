import 'package:flutter/material.dart';
import 'package:todoy_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    // Task(name: 'Buy Farsan'),
    // Task(name: 'Clean Room'),
    // Task(name: 'Study'),
  ];

  int get taskCount => _tasks.length;

  void add(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  Task getTask(int index) {
    return _tasks[index];
  }

  void completeTask(Task task) {
    task.toggleTask();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
