import 'package:flutter/material.dart';
import 'package:programminghub/pageviews/page_one.dart';
import 'package:programminghub/pageviews/page_three.dart';
import 'package:programminghub/pageviews/page_two.dart';

class PageViewDemonstrationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          children: [
              PageOne(),
              PageTwo(),
              PageThree()
          ],
        ),
      ),
    );
  }

}