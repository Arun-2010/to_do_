

import 'package:flutter/material.dart';
import 'package:to_do_app/models/task_model.dart';

class SaveTask extends ChangeNotifier{
  List<Task>_tasks=[
    Task(title: 'learn flutter',iscompleted: false),
    Task(title: 'Drink Water',iscompleted: false),
  ];

  List<Task> get tasks => _tasks;
  void addTask(Task task){
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
  void CheckTask(int index){
    tasks[index].isDone();
    notifyListeners();
  }

}