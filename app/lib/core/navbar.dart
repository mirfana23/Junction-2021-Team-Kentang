import 'package:flutter/cupertino.dart';

CupertinoTabBar navbar(){
  List<BottomNavigationBarItem> tabBarItem = [
    const BottomNavigationBarItem(
      icon : Text("Forecast"),
    ),
    const BottomNavigationBarItem(
      icon : Text("Home")
    ),
    const BottomNavigationBarItem(
      icon : Text("Statistics")
    )
  ];
  return CupertinoTabBar(
    items : tabBarItem
  );
}
