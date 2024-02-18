import 'package:flutter/material.dart';
import 'package:programminghub/todo/database_helper.dart';
import 'package:programminghub/todo/tasks_model.dart';

///This is the teacher class which will give commands
class TaskNotifier extends ChangeNotifier{

  final _dbHelper = DatabaseHelper.instance;

  TaskNotifier(){
    initDatabase();
  }

  List<String> _taskList = [];
  int _taskCount = 0;

  List<String> get taskList => _taskList;

  Future<void> initDatabase() async{
    await _dbHelper.startDatabaseCreation();
    _taskCount = 0;
    _taskList.clear();
    List<TasksModel>? pendingTaskList = await _dbHelper.getTaskList();
    if(pendingTaskList != null && pendingTaskList.isNotEmpty){
      for(var currentTasks in pendingTaskList){
        _taskList.add(currentTasks.taskName);
        _taskCount++;
      }
    }
    notifyListeners();
  }

  void addTask(String taskName){
    _taskCount++;
    _taskList.add(taskName);
    TasksModel tasksModel = TasksModel(id: _taskCount, taskName: taskName);
    _dbHelper.insertTasks(tasksModel);
    notifyListeners();
  }

  void modifyTask(String oldTask, String newTask){
    int taskIndex = taskList.indexOf(oldTask);
    print("Index of task $taskIndex");
    taskList[taskIndex] = newTask;
    TasksModel newTaskModel = TasksModel(id: taskIndex  + 1, taskName: newTask);
    _dbHelper.updateTasks(newTaskModel);
    print("After task list $taskList");
    notifyListeners();
  }

  void removeTask(String oldTask){
    int taskIndex = taskList.indexOf(oldTask);
    taskList.removeAt(taskIndex);
    _dbHelper.deleteTasks(taskIndex + 1);
    notifyListeners();
  }
}