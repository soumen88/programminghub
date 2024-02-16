import 'package:flutter/material.dart';
import 'package:programminghub/todo/tasks_notifier.dart';
import 'package:provider/provider.dart';

import 'home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => TasksNotifier(),
      child: MaterialApp(
          home: HomeScreen()
      ),
    );
  }

}