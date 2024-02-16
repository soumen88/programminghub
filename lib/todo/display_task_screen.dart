import 'package:flutter/material.dart';
import 'package:programminghub/todo/task_notifier.dart';
import 'package:provider/provider.dart';

import '../base/logger_utils.dart';
import 'add_task_screen.dart';


///This is the student class this will take the commands that teacher would be giving
class DisplayTaskScreen extends StatelessWidget{
  final _logger = LoggerUtils();
  final _TAG = "DisplayTaskScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display Tasks Screen"),
      ),
      body: Consumer<TaskNotifier>(
        builder: (BuildContext context, TaskNotifier notifier, Widget? child){
          List<String> userTaskList = notifier.taskList;
          if(userTaskList.isNotEmpty){
            return ListView.builder(
                itemCount: userTaskList.length,
                itemBuilder: (BuildContext context, int index){
                  return ListTile(
                    title: Text(userTaskList[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: (){

                              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                  AddTaskScreen(isTaskModify: true, oldTaskDescription: userTaskList[index],)));
                            },
                            icon: Icon(Icons.edit_calendar)
                        ),
                        IconButton(
                            onPressed: (){
                              Provider.of<TaskNotifier>(context, listen: false).removeTask(userTaskList[index]);
                            },
                            icon: Icon(Icons.delete)
                        ),

                      ],
                    ),
                  );
                }
            );
          }
          else{
            return Center(
              child: Text(
                  "Add some tasks",
                  style: TextStyle(
                    fontSize: 30
                  ),
              ),
            );
          }
        },
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