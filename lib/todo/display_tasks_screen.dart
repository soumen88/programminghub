import 'package:flutter/material.dart';
import 'package:programminghub/base/logger_utils.dart';
import 'package:programminghub/todo/add_task_screen.dart';
import 'package:programminghub/todo/tasks_model.dart';
import 'package:programminghub/todo/tasks_notifier.dart';
import 'package:provider/provider.dart';

///This is the students screen that is listening to the commands of teacher
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>AddTaskScreen(
                                oldTaskModel: currentTasksModel,
                                isTaskBeingModified: true,
                              )));
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
          FilledButton(
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
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddTaskScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }

}