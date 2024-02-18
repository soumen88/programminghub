import 'package:flutter/material.dart';
import 'package:programminghub/bmicalc/bmi_calculator_screen.dart';
import 'package:programminghub/displayproducts/display_products_screen.dart';
import 'package:programminghub/pageviews/page_view_demonstration_screen.dart';
import 'package:programminghub/todo/display_task_screen.dart';

import '../camerademo/camera_screen.dart';
import '../senddatatoserver/send_data_to_server_screen.dart';
import '../timer/timer_screen.dart';


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
                     Navigator.push(context, MaterialPageRoute(builder: (context) => TimerScreen()));
                },
                child: Text("Stopwatch app")
            ),
            FilledButton(
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BmiCalculatorScreen()));
                },
                child: Text("Start BMI Calculator")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PageViewDemonstrationScreen()));
                },
                child: Text("Start Page Views")
            ),
            FilledButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CameraScreen()));
                },
                child: Text("Start Camera")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayTaskScreen()));
                },
                child: Text("Start Todo")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayProductsScreen()));
                },
                child: Text("Display Products")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SendDataToServerScreen()));
                },
                child: Text("Send Data To Server")
            )
          ],
        ),
      ),
    );
  }

}