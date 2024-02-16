import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget{
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              Text('Add Some Tasks',
                style: TextStyle(
                  fontSize: 26
                ),
              ),
              SizedBox(height: 30,),

              Form(
                key: _formKey,
                child: TextFormField(
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

                    }
                  },
                  icon: Icon(Icons.add),
                  label: Text("Add Task")
              )
            ],
          )
        )
      ),
    );
  }

}