import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:programminghub/base/app_constants.dart';
import 'package:programminghub/base/logger_utils.dart';
import 'package:programminghub/todo/tasks_model.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  static final DatabaseHelper instance = DatabaseHelper._init();
  DatabaseHelper._init();
  late Database _database;
  final _logger = LoggerUtils();
  final _TAG = "DatabaseHelper";

  ///Step 1 - Creating the database
  Future<bool> createDatabase() async{
    var databasePath = await getDatabasesPath();
    var path = join(databasePath, AppConstants.kDatabaseName);
    var isDbExists = await databaseExists(path);
    if(!isDbExists){
      try{
        await Directory(dirname(path)).create(recursive: true);
      }
      catch(exception){
        _logger.log(TAG: _TAG, message: "Exception in creating directory $exception");
        return Future.error(exception);
      }

      ///Copy the asset database
      ByteData data = await rootBundle.load(join("assets/databases", AppConstants.kDatabaseName));
      List<int> bytesSize = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      //Write the file in internal storage
      await File(path).writeAsBytes(bytesSize, flush: true);
      return Future.value(true);
    }

    _database = await openDatabase(path);
    return Future.value(true);
  }

  ///Step 2 - Getting list of tasks
  Future<List<TasksModel>> getTasksList() async{
    try{
      List<TasksModel> taskList = [];
      var query = "Select * from ToDoListTable";
      var queryResult = await _database.rawQuery(query);
      for(var result in queryResult){
        int id = int.parse(result["Id"].toString());
        String taskDesc = result["TaskDesc"].toString();
        TasksModel tasksModel = TasksModel(taskId: id, taskDesc: taskDesc);
        taskList.add(tasksModel);
      }
      _logger.log(TAG: _TAG, message: "Task list $taskList");
      return Future.value(taskList);
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Exception $exception");
      return Future.error("Failed to get task list");
    }
  }

  ///Step 3 - Insert tasks
  Future<void> insertTask(TasksModel tasksModel) async{
    await _database.insert(
        AppConstants.kDatabaseTableName,
        tasksModel.mapTasks(),
        conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  ///Step 4 - Update tasks
  Future<void> updateTask(TasksModel tasksModel) async{
    await _database.update(
      AppConstants.kDatabaseTableName,
      tasksModel.mapTasks(),
      where: "Id = ?",
      whereArgs: [tasksModel.taskId]
    );
  }

  ///Step 5 - Delete tasks
  Future<void> deleteTask(int taskId) async{
    await _database.delete(
        AppConstants.kDatabaseTableName,
        where: "Id = ?",
        whereArgs: [taskId]
    );
  }
}