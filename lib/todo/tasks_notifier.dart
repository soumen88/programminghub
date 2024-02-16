import 'package:flutter/material.dart';
import 'package:programminghub/base/logger_utils.dart';
import 'package:programminghub/todo/tasks_model.dart';

///This is the teacher screen who is giving commands to the students
class TasksNotifier extends ChangeNotifier{
  List<TasksModel> _taskList = [];
  int _tasksCounter = 0;

  List<TasksModel> get userTaskList => _taskList;
  int get pendingTasks => _tasksCounter;

  final _logger = LoggerUtils();
  final _TAG = "TasksNotifier";

  void addTaskToList(String taskDescription){
    _tasksCounter++;
    TasksModel tasksModel = TasksModel(taskId: _tasksCounter, taskDesc: taskDescription);
    _logger.log(TAG: _TAG, message: "Task model $tasksModel");
    _taskList.add(tasksModel);
    notifyListeners();
  }

  void modifyTaskInList(TasksModel oldTaskModel, String newDescription){
    int oldTaskIndex = _taskList.indexOf(oldTaskModel);
    _logger.log(TAG: _TAG, message: "Index found $oldTaskIndex");
    if(oldTaskIndex != -1){
        int taskId = oldTaskModel.taskId;
       _taskList[oldTaskIndex] =  TasksModel(taskId: taskId, taskDesc: newDescription);
       notifyListeners();
    }
  }

  void deleteTaskFromList(TasksModel tasksModelToBeDeleted){
    int indexOfTaskToBeDeleted = _taskList.indexOf(tasksModelToBeDeleted);
    _taskList.removeAt(indexOfTaskToBeDeleted);
    _tasksCounter--;
    notifyListeners();
  }
}