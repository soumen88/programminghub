import 'package:flutter/material.dart';
import 'package:programminghub/routing/app_router.dart';
import 'package:programminghub/todo/tasks_notifier.dart';
import 'package:provider/provider.dart';

import 'home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => TasksNotifier(),
      child: MaterialApp.router(
        title: "Programming Hub",
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        builder: ( BuildContext context, Widget? child){
          return child!;
        },
      ),
    );
  }

}