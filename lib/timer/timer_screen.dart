import 'dart:async';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:programminghub/timer/timer_container.dart';

@RoutePage()
class TimerScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TimerScreenState();
  }

}

class TimerScreenState extends State<TimerScreen>{

  int secondsPassed = 0;
  int displaySeconds = 0;
  int displayMins = 0;
  int displayHours = 0;
  Timer? _timer;
  bool isTimerActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TimerContainer(timerLabel: "Hours", timerValue: displayHours,),
                TimerContainer(timerLabel: "Mins",timerValue: displayMins,),
                TimerContainer(timerLabel: "Secs",timerValue: displaySeconds,),
              ],
            ),
            ElevatedButton(
                onPressed: (){
                  if(isTimerActive == false){
                    isTimerActive = true;
                    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
                      calculateTime();
                    });
                  }

                },
                child: Text("Start Timer")
            ),
            ElevatedButton(
                onPressed: (){
                    _timer?.cancel();
                    isTimerActive = false;
                },
                child: Text("Stop Timer")
            ),
            ElevatedButton(
                onPressed: (){
                  secondsPassed = 0;
                  displaySeconds = 0 ;
                  displayMins = 0 ;
                  displayHours = 0 ;
                  _timer?.cancel();
                  isTimerActive = false;
                  setState(() {

                  });
                },
                child: Text("Reset")
            )
          ],
        )
      ),
    );
  }

  void calculateTime(){
    secondsPassed = secondsPassed + 1;
    displaySeconds = secondsPassed % 60;
    displayMins = secondsPassed ~/ 60;
    displayHours = secondsPassed ~/ 3600;
    setState(() {

    });
  }

}