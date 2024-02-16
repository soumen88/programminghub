import 'package:flutter/material.dart';
import 'package:programminghub/todo/task_notifier.dart';
import 'package:provider/provider.dart';


class AddTaskScreen extends StatelessWidget{
  bool isTaskModify;
  String oldTaskDescription;
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController taskDescriptionController = TextEditingController();

  AddTaskScreen({this.isTaskModify = false, this.oldTaskDescription = ""});

  @override
  Widget build(BuildContext context) {
    if(isTaskModify){
      taskDescriptionController = TextEditingController(text: oldTaskDescription);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task Screen"),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: taskDescriptionController,
                decoration: InputDecoration(
                  hintText: "Enter Task Description",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.blueAccent
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.greenAccent
                      )
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.redAccent
                      )
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          width: 2,
                          color: Colors.redAccent
                      )
                  ),
                ),
                validator: (String? input){
                  if(input != null && input.isNotEmpty){
                    return null;
                  }
                  else{
                    return "Enter valid task description";
                  }
                },
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: (){
                      if(_formKey.currentState != null && _formKey.currentState!.validate()){
                        if(isTaskModify){
                          Provider.of<TaskNotifier>(context, listen: false).modifyTask( oldTaskDescription, taskDescriptionController.text);
                          Navigator.pop(context);
                        }
                        else{
                          Provider.of<TaskNotifier>(context, listen: false).addTask(taskDescriptionController.text);
                          Navigator.pop(context);
                        }

                      }
                  },
                  child: isTaskModify ? Text("Modify Task") : Text("Add Task")
              )
            ],
          ),
        ),
      ),
    );
  }

}