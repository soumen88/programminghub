import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../routing/app_router.dart';

@RoutePage()
class BottomSheetScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (BuildContext context, TabsRouter tabsRouter){
        if(tabsRouter.activeIndex == 0){
          return AppBar(
            title: Text("Products Screen"),
          );
        }
        else{
          return AppBar(
            title: Text("Push Data Screen"),
          );
        }
      },
      routes:[
        FirstRoute(),
        SecondRoute(),
      ],
      bottomNavigationBuilder: (BuildContext context, TabsRouter tabsRouter){
        return SalomonBottomBar(
          items: [
            SalomonBottomBarItem(
                icon: Icon(Icons.pages_outlined),
                title: Text("First Page")
            ),
            SalomonBottomBarItem(
                icon: Icon(Icons.send),
                title: Text("Second Page")
            ),
          ],
          onTap: (int index){
            tabsRouter.setActiveIndex(index);
          },
          currentIndex: tabsRouter.activeIndex,
        );
      },
    );
  }

}