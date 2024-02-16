import 'package:flutter/material.dart';

class TimerContainer extends StatelessWidget{

  String timerLabel;
  int timerValue;

  TimerContainer({required this.timerLabel, required this.timerValue });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            timerValue.toString(),
            style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
          Text(
            timerLabel,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,

            ),
          ),
        ],
      ),
    );
  }

}