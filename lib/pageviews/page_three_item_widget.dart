import 'package:flutter/material.dart';
import 'package:programminghub/pageviews/page_three_model.dart';

class PageThreeItemWidget extends StatelessWidget{
  PageThreeModel currentModelData;

  PageThreeItemWidget({required this.currentModelData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                  "ID : ${currentModelData.imageId}"
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        currentModelData.title,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      Text(
                        currentModelData.description,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    maxRadius: 80,
                    backgroundImage: NetworkImage(
                        currentModelData.imageUrl
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }

}