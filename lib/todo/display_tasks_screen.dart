import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:programminghub/base/logger_utils.dart';
import 'package:programminghub/routing/app_router.dart';
import 'package:programminghub/todo/add_task_screen.dart';
import 'package:programminghub/todo/database_helper.dart';
import 'package:programminghub/todo/tasks_model.dart';
import 'package:programminghub/todo/tasks_notifier.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';

///This is the students screen that is listening to the commands of teacher
@RoutePage()
class DisplayTasksScreen extends StatelessWidget{
  final _logger = LoggerUtils();
  final _TAG = "DisplayTasksScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display Tasks List Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<TasksNotifier>(
            builder: (BuildContext context, TasksNotifier tasksNotifier, Widget? child){
              List<TasksModel> taskList = tasksNotifier.userTaskList;
              int pendingTasks = tasksNotifier.pendingTasks;
              return ListView.builder(
                  itemCount: pendingTasks,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index){
                    TasksModel currentTasksModel = taskList[index];
                    return ListTile(
                      title: Text(currentTasksModel.taskDesc),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: (){
                              context.router.navigate(AddTaskRoute(
                                oldTaskModel: currentTasksModel,
                                isTaskBeingModified: true,
                              ));
                            },
                            icon: Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: (){
                              tasksNotifier.deleteTaskFromList(currentTasksModel);
                            },
                            icon: Icon(Icons.delete),
                          ),
                        ],
                      )
                    );
                  }
              );
            },
          ),
          /*FilledButton(
              onPressed: (){
                List<String> names = ["John", "Bob", "Nuggets", "Stallion"];
                int indexOfNuggets = names.indexOf("Nuggets");
                _logger.log(TAG: _TAG, message: "Index $indexOfNuggets");
                if(indexOfNuggets != -1){
                  names[indexOfNuggets] = "Raman";
                }
                _logger.log(TAG: _TAG, message: "Names list $names");
              },
              child: Text("Understand List Modify")
          ),
          ElevatedButton(
              onPressed: (){
                final _dbHelper = DatabaseHelper.dbInstance;
                _logger.log(TAG: _TAG, message: "Hash code of db helper in button 1 ${_dbHelper.hashCode}");
              },
              child: Text("Test DB Button 1")
          ),
          ElevatedButton(
              onPressed: (){
                final _dbHelper = DatabaseHelper.dbInstance;
                _logger.log(TAG: _TAG, message: "Hash code of db helper in button 2 ${_dbHelper.hashCode}");
              },
              child: Text("Test DB Button 2")
          ),
          ElevatedButton(
              onPressed: () async{
                final _dbHelper = DatabaseHelper.dbInstance;
                bool isDbCopyFinished = await _dbHelper.createDBInLocalStorage();
                _logger.log(TAG: _TAG, message: "Db copy finished $isDbCopyFinished");
              },
              child: Text("DB copy")
          ),
          ElevatedButton(
              onPressed: () async{
                final _dbHelper = DatabaseHelper.dbInstance;
                List<TasksModel> list = await _dbHelper.getTaskList();
                _logger.log(TAG: _TAG, message: "Tasks list $list");
              },
              child: Text("Get tasks list")
          ),
          ElevatedButton(
              onPressed: () async{
                final _dbHelper = DatabaseHelper.dbInstance;
                TasksModel taskModel = TasksModel(taskId: 7, taskDesc: "Ironing my clothes");
                int rowId = await _dbHelper.insertTask(taskModel);
                _logger.log(TAG: _TAG, message: "Row id $rowId");
              },
              child: Text("Insert a task")
          ),
          ElevatedButton(
              onPressed: () async{
                final _dbHelper = DatabaseHelper.dbInstance;
                TasksModel taskModel = TasksModel(taskId: 7, taskDesc: "Washing my clothes");
                await _dbHelper.updateTask(taskModel);
              },
              child: Text("Update task")
          ),
          ElevatedButton(
              onPressed: () async{
                final _dbHelper = DatabaseHelper.dbInstance;
                await _dbHelper.deleteTask(7);
              },
              child: Text("Delete task")
          ),*/
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.router.navigate(AddTaskRoute());
        },
        child: Icon(Icons.add),
      ),
    );
  }

}