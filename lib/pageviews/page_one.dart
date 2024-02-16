import 'package:flutter/material.dart';

class PageOne extends StatelessWidget{

  List<String> countriesList = [
    "India",//0
    "United States of America",//1
    "Canada",//2
    "Mexico",//3
    "Sri lanka",//4
    "Qatar",//5
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple List"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: countriesList.length,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                leading: Icon(Icons.ac_unit),
                title: Text(countriesList[index]),
                trailing: Icon(Icons.access_alarm_sharp),
              );
            }
        ),
      ),
    );
  }

}