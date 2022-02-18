import 'package:exam/core/constants/constants.dart';
import 'package:flutter/material.dart';

class BottomNavigation{
   final kBottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home,color: ColorsConst.eColor,), label: 'Home'),
      const BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notification'),
      const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
    ];

   bottomNavigation(BuildContext context){
    return BottomNavigationBar(items: kBottomNavBarItems);
  }
}