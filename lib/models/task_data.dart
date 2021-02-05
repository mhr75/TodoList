import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'task.dart';

class TaskData extends ChangeNotifier
{
  List <Task> tasks = [
    Task(name: 'Start programming'),
    Task(name: 'Dream big'),
  ];

  void addTask(String newTaskTitle)
  {
    print('good');
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task)
  {
    task.toggleDone();
    notifyListeners();
  }
  void removeTask(Task task)
  {
    tasks.remove(task);
    notifyListeners();
  }
}