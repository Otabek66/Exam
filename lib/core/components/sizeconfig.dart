import 'package:flutter/material.dart';

class SizeConfig{
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;


  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the propertionate height as per screen size
double getHeight(double inputHeight){
  double screenHeight = SizeConfig.screenHeight;
  // 845 is the layout height that designer use
  return (inputHeight / 845.0) * screenHeight;
}

// Get the propertionate width as per screen size
double getWidth(double inputWidth){
  double screenWidth = SizeConfig.screenWidth;
  // 390 is the layout width that designer use
  return (inputWidth / 390.0) * screenWidth;
}