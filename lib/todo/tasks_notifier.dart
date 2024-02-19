import 'package:flutter/material.dart';
import 'package:programminghub/base/logger_utils.dart';
import 'package:programminghub/todo/database_helper.dart';
import 'package:programminghub/todo/tasks_model.dart';

///This is the teacher screen who is giving commands to the students
class TasksNotifier extends ChangeNotifier{
  final _dbHelper = DatabaseHelper.dbInstance;
  List<TasksModel> _taskList = [];
  int _tasksCounter = 0;
  List<TasksModel> get userTaskList => _taskList;
  int get pendingTasks => _tasksCounter;

  final _logger = LoggerUtils();
  final _TAG = "TasksNotifier";

  TasksNotifier(){
    initDatabase();
  }

  Future<void> initDatabase() async{
    bool isDbCreated = await _dbHelper.createDBInLocalStorage();
    if(isDbCreated){
      List<TasksModel> pendingList = await _dbHelper.getTaskList();
      if(pendingList.isNotEmpty){
        for(var currentTask in pendingList){
          _taskList.add(currentTask);
          _tasksCounter++;
        }
      }
    }
    notifyListeners();
  }

  Future<void> addTaskToList(String taskDescription) async{
    _tasksCounter++;
    TasksModel tasksModel = TasksModel(taskId: _tasksCounter, taskDesc: taskDescription);
    _logger.log(TAG: _TAG, message: "Task model $tasksModel");
    await _dbHelper.insertTask(tasksModel);
    _taskList.add(tasksModel);
    notifyListeners();
  }

  Future<void> modifyTaskInList(TasksModel oldTaskModel, String newDescription) async{
    int oldTaskIndex = _taskList.indexOf(oldTaskModel);
    _logger.log(TAG: _TAG, message: "Index found $oldTaskIndex");
    if(oldTaskIndex != -1){
        int taskId = oldTaskModel.taskId;
        TasksModel updateTaskModel = TasksModel(taskId: taskId, taskDesc: newDescription);
       _taskList[oldTaskIndex] =  updateTaskModel;
       await _dbHelper.updateTask(updateTaskModel);
       notifyListeners();
    }
  }

  Future<void> deleteTaskFromList(TasksModel tasksModelToBeDeleted) async{
    int indexOfTaskToBeDeleted = _taskList.indexOf(tasksModelToBeDeleted);
    _taskList.removeAt(indexOfTaskToBeDeleted);
    await _dbHelper.deleteTask(indexOfTaskToBeDeleted + 1);
    _tasksCounter--;
    notifyListeners();
  }
}