import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:programminghub/bmicalc/bmi_calculator_screen.dart';
import 'package:programminghub/bottomsheetnavigation/bottom_sheet_screen.dart';
import 'package:programminghub/pageviews/page_view_demonstration_screen.dart';
import 'package:programminghub/todo/add_task_screen.dart';
import 'package:programminghub/todo/display_tasks_screen.dart';

import '../camerademo/camera_screen.dart';
import '../routing/app_router.dart';
import '../timer/timer_screen.dart';

@RoutePage()
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to flutter, Programming Hub"),
            ElevatedButton(
                onPressed: (){
                     context.router.navigate(const TimerRoute());
                },
                child: Text("Stopwatch app")
            ),
            FilledButton(
                onPressed: (){
                  context.router.navigate(const BmiCalculatorRoute());
                },
                child: Text("Start BMI Calculator")
            ),
            ElevatedButton(
                onPressed: (){
                  context.router.navigate(const RouteViewDemonstrationRoute());
                },
                child: Text("Start Page Views")
            ),
            FilledButton(
                onPressed: (){
                  context.router.navigate(const CameraRoute());
                },
                child: Text("Start Camera")
            ),
            ElevatedButton(
                onPressed: (){
                  context.router.navigate( const DisplayTasksRoute());
                },
                child: Text("Start TO DO"),
            ),
            FilledButton(
                onPressed: (){
                  context.router.navigate(const BottomSheetRoute());
                },
                child: Text("Start Bottom Sheet")
            )
          ],
        ),
      ),
    );
  }

}