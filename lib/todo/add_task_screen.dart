import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:programminghub/todo/tasks_model.dart';
import 'package:programminghub/todo/tasks_notifier.dart';
import 'package:provider/provider.dart';

@RoutePage()
class AddTaskScreen extends StatelessWidget{
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController taskController = TextEditingController();
  TasksModel? oldTaskModel;
  bool isTaskBeingModified;


  AddTaskScreen({this.oldTaskModel, this.isTaskBeingModified = false});

  @override
  Widget build(BuildContext context) {
    if(isTaskBeingModified){
      taskController.text = oldTaskModel!.taskDesc;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Tasks Screen"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Builder(
                  builder: (BuildContext context){
                      if(isTaskBeingModified){
                        return Text('What do you want to do instead of ${oldTaskModel!.taskDesc}',
                          style: TextStyle(
                              fontSize: 26
                          ),
                        );
                      }
                      else{
                        return Text('Add Some Tasks',
                          style: TextStyle(
                              fontSize: 26
                          ),
                        );

                      }
                  }
              ),
              SizedBox(height: 30,),

              Form(
                key: _formKey,
                child: TextFormField(
                  controller: taskController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 2
                        )
                    ),
                    /*focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 2
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.green,
                            width: 2
                        )
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 2
                        )
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 2
                        )
                    ),*/
                  ),
                  validator: (String? input){
                    if(input != null && input.isNotEmpty){
                      return null;
                    }
                    else{
                      return "Enter task description";
                    }
                  },
                ),
              ),
              SizedBox(height: 30,),
              FilledButton.icon(
                  onPressed: (){
                    if(_formKey.currentState != null && _formKey.currentState!.validate()){
                      if(isTaskBeingModified && oldTaskModel != null){
                        Provider.of<TasksNotifier>(context, listen: false).modifyTaskInList(oldTaskModel!, taskController.text);
                      }
                      else{
                        Provider.of<TasksNotifier>(context, listen: false).addTaskToList(taskController.text);
                      }
                      Navigator.pop(context);
                    }
                  },
                  icon: Icon(Icons.add),
                  label: isTaskBeingModified ? Text("Modify Task") : Text("Add Task")
              )
            ],
          )
        )
      ),
    );
  }

}