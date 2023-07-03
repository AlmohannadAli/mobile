import 'package:flutter/material.dart';
import 'package:flutter_add_to_list/models/task.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
      title: 'My firest task',
      completed: false,

    )
  ];

  List<Task> get tasks{
    return _tasks;
  }

  void addTask(task){
    _tasks.add(task);
    notifyListeners();
 }

 void removeTask(index) {

   _tasks.removeAt(index);
   notifyListeners();
 }

 void makeTaskCompleted(index){
    _tasks[index].completed = !_tasks[index].completed;
    notifyListeners();
 }
}
