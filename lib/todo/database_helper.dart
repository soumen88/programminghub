import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:programminghub/base/app_constants.dart';
import 'package:programminghub/base/logger_utils.dart';
import 'package:programminghub/todo/tasks_model.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{

  final _logger = LoggerUtils();
  final _TAG = "DatabaseHelper";

  static DatabaseHelper _instance = DatabaseHelper._init();
  static DatabaseHelper get dbInstance => _instance;

  DatabaseHelper._init();

  late Database _database;

  ///Step 1 - DB creation
  Future<bool> createDBInLocalStorage() async{
    try{
      var databasePath = await getDatabasesPath();
      var path = join(databasePath, AppConstants.kDatabaseName);
      bool isDbExists = await databaseExists(path);
      if(!isDbExists){
        //Copying the DB here
        await Directory(dirname(path)).create(recursive: true);
        ByteData dbData = await rootBundle.load(join("assets/database",AppConstants.kDatabaseName));
        List<int> dbSize = dbData.buffer.asUint8List(dbData.offsetInBytes, dbData.lengthInBytes);
        await File(path).writeAsBytes(dbSize, flush: true);
      }

      _database = await openDatabase(path);
      return Future.value(true);
    }
    catch(exception){
      return Future.error("DB copy failed $exception");
    }
  }

  ///Step 2 - Getting list of tasks
  Future<List<TasksModel>> getTaskList() async{
    try{
      List<TasksModel> pendingTasksList = [];
      String query = "Select * from ${AppConstants.kDatabaseTableName}";
      var queryResult = await _database.rawQuery(query);
      for(var currentRow in queryResult){
        int taskId = int.parse(currentRow["Id"].toString());
        String taskDesc = currentRow["TaskDesc"].toString();
        TasksModel tasksModel = TasksModel(taskId: taskId, taskDesc: taskDesc);
        pendingTasksList.add(tasksModel);
      }
      return Future.value(pendingTasksList);
    }
    catch(exception){
      return Future.error("Get tasks failed $exception");
    }
  }

  ///Step 3 - Inserting tasks
  Future<int> insertTask(TasksModel taskModel) async{
    int rowId = await _database.insert(
        AppConstants.kDatabaseTableName,
        taskModel.taskMapper(),
        conflictAlgorithm: ConflictAlgorithm.replace
    );
    return Future.value(rowId);
  }

  ///Step 4 - Updating tasks
  Future<void> updateTask(TasksModel tasksModel) async{
    await _database.update(
        AppConstants.kDatabaseTableName,
        tasksModel.taskMapper(),
        where: "Id = ?",
        whereArgs: [tasksModel.taskId]
    );
  }

  ///Step 5 - Delete the tasks
  Future<void> deleteTask(int taskId) async{
    await _database.delete(
        AppConstants.kDatabaseTableName,
        where: "Id = ?",
        whereArgs: [taskId]
    );
  }
}