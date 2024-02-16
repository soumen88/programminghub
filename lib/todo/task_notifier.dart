import 'package:flutter/material.dart';

///This is the teacher class which will give commands
class TaskNotifier extends ChangeNotifier{

  List<String> _taskList = [];
  int _taskCount = 0;

  List<String> get taskList => _taskList;

  void addTask(String taskName){
    _taskCount++;
    _taskList.add(taskName);
    notifyListeners();
  }

  void modifyTask(String oldTask, String newTask){
    int taskIndex = taskList.indexOf(oldTask);
    print("Index of task $taskIndex");
    taskList[taskIndex] = newTask;
    print("After task list $taskList");
    notifyListeners();
  }

  void removeTask(String oldTask){
    int taskIndex = taskList.indexOf(oldTask);
    taskList.removeAt(taskIndex);
    notifyListeners();
  }
}