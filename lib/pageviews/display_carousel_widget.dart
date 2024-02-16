import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DisplayCarouselWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DisplayCarouselWidgetState();
  }

}

class _DisplayCarouselWidgetState extends State<DisplayCarouselWidget>{
  List<String> imagesList = [
    'https://fastly.picsum.photos/id/7/4728/3168.jpg?hmac=c5B5tfYFM9blHHMhuu4UKmhnbZoJqrzNOP9xjkV4w3o',
    'https://fastly.picsum.photos/id/11/2500/1667.jpg?hmac=xxjFJtAPgshYkysU_aqx2sZir-kIOjNR9vx0te7GycQ',
    'https://fastly.picsum.photos/id/15/2500/1667.jpg?hmac=Lv03D1Y3AsZ9L2tMMC1KQZekBVaQSDc1waqJ54IHvo4'
  ];
  CarouselController carouselScrollController = CarouselController();
  int activePage = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.yellow,
      alignment: Alignment.center,
      child: Column(
        children: [
          CarouselSlider.builder(
              carouselController: carouselScrollController,
              itemCount: imagesList.length,
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(imagesList[itemIndex]),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
              options: CarouselOptions(
                  autoPlay: true,
                  scrollPhysics: BouncingScrollPhysics(),
                  aspectRatio: 1.5,
                  viewportFraction: 0.75,
                  initialPage: 2,
                  onPageChanged: (index, reason){
                      activePage = index;
                      setState(() {

                      });
                  }
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagesList.asMap().entries.map(
                    (entry){
                        return Container(
                          height: 7,
                          width: 17,
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (activePage == entry.key) ? Colors.red : Colors.grey
                          ),
                        );
                    }
            ).toList()
          )
        ],
      )
    );
  }

}