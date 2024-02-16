import 'package:flutter/material.dart';
import 'package:programminghub/pageviews/display_carousel_widget.dart';
import 'package:programminghub/pageviews/get_page_three_data.dart';
import 'package:programminghub/pageviews/page_three_item_widget.dart';
import 'package:programminghub/pageviews/page_three_model.dart';

class PageThree extends StatelessWidget{
  List<PageThreeModel> pageThreeData = GetPageThreeData().getData();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom List"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DisplayCarouselWidget(),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: pageThreeData.length,
                  itemBuilder: (BuildContext context, int index){
                    PageThreeModel currentModel = pageThreeData[index];
                    return PageThreeItemWidget(
                        currentModelData: currentModel
                    );
                  }
              )
            ],
          ),
        )
      ),
    );
  }

}