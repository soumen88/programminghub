import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget{

  List<String> officeToDoList = [
    "Meeting 10:30 am",//0
    "Tasks Before Lunch",//1
    "Calls from Client",//2
    "Tasks After Lunch",//3
    "Prepare report",//4
  ];

  @override
  Widget build(BuildContext contextPassed) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weird Design List"),
      ),
      body: Center(
        child: ListView(
          children: ListTile.divideTiles(
              context: contextPassed,
              tiles: [
                ListTile(
                  leading: Icon(Icons.accessibility_new_rounded),
                  title: Text(officeToDoList[0]),
                ),
                ListTile(
                  title: Text(officeToDoList[1]),
                  trailing: Icon(Icons.account_circle),
                ),
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text(officeToDoList[2]),
                  trailing: Icon(Icons.account_circle),
                ),
              ]
          ).toList(),
        ),
      ),
    );
  }

}