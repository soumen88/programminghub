import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:programminghub/todo/tasks_model.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import '../base/app_constants.dart';
import '../base/logger_utils.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  late Database _database;
  final _TAG = "Database";
  final _logger = LoggerUtils();
  static final DatabaseHelper instance = DatabaseHelper.init();

  DatabaseHelper.init();

  Future<bool> startDatabaseCreation() async{

    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, AppConstants.kAppDatabase);
    // Check if the database exists
    var exists = await databaseExists(path);

    if (!exists) {
      // Should happen only the first time you launch your application
      _logger.log(TAG : _TAG, message: "Creating new copy from asset");

      // Make sure the parent directory exists
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (e) {
        _logger.log(TAG : _TAG, message: "Error in copying the database");
        return Future.error(e);
      }

      // Copy from asset
      ByteData data = await rootBundle.load(join("assets/databases", AppConstants.kAppDatabase));
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await File(path).writeAsBytes(bytes, flush: true);

    }
    else {
      _logger.log(TAG : _TAG, message: "Opening existing database");
    }

    // open the database
    _database = await openDatabase(path);
    return Future.value(true);
  }


  Future<void> insertTasks(TasksModel tasksModel) async{
    //local database variable
    final curDB = await _database;
    //insert function
    await curDB.insert(
      //first parameter is Table name
      AppConstants.kAppTable,
      //second parameter is data to be inserted
      tasksModel.mapTasks(),
      //replace if two same entries are inserted
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<TasksModel>?> getTaskList() async{
    try{
      List<TasksModel> tasksList = [];
      var res = await  _database.rawQuery("Select *  from tasks");
      _logger.log(TAG: _TAG, message: "Resources count ${res.length}");
      for(var rowData in res){
        int id = int.parse(rowData["Id"].toString());
        String taskName = rowData["TaskName"].toString();
        TasksModel tasksModel = TasksModel(id: id, taskName: taskName);
        _logger.log(TAG: _TAG, message: "Current model $tasksModel");
        tasksList.add(tasksModel);
      }
      return Future.value(tasksList);
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Error occurred in get sentiments $exception");
      return Future.error("Error occurred in get sentiments $exception");
    }
  }

  Future<void> updateTasks(TasksModel tasksModel) async {
    final curDB = await _database;
    //update a specific student
    await curDB.update(
      //table name
      AppConstants.kAppTable,
      //convert tasks object to a map
      tasksModel.mapTasks(),
      //ensure that the student has a matching email
      where: 'Id = ?',
      //argument of where statement(the email we want to search in our case)
      whereArgs: [tasksModel.id],
    );
  }

  Future<void> deleteTasks(TasksModel tasksModel) async {
    final curDB = await _database;
    //update a specific student
    await curDB.delete(
      //table name
      AppConstants.kAppTable,
      //convert tasks object to a map
      //tasksModel.mapTasks(),
      //ensure that the student has a matching email
      where: 'Id = ?',
      //argument of where statement(the email we want to search in our case)
      whereArgs: [tasksModel.id],
    );
  }
}