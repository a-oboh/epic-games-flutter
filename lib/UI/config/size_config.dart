import 'package:flutter/material.dart';

// class SizeConfig {
//   static MediaQueryData _mediaQueryData;
//   static double screenWidth;
//   static double screenHeight;
//   static double blockSizeHorizontal;
//   static double blockSizeVertical;

//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData.size.width;
//     screenHeight = _mediaQueryData.size.height;
//     blockSizeHorizontal = screenWidth / 100;
//     blockSizeVertical = screenHeight / 100;
//   }
// }

//A custom class for handling text size, margin szie and other responsiveness related issues
class SizeConfig {
  // static keyword included so you can call this method without instantiating an object of it like so :
  // SizeConfig.height(context, 2)

  static BuildContext appContext;
  static MediaQueryData _mediaQueryData;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    appContext = context;
  }

  static double height(double height) {
    double screenHeight = _mediaQueryData.size.height / 100;
    return height * screenHeight;
  }

  static double width(double width) {
    double screenWidth = _mediaQueryData.size.width / 100;
    return width * screenWidth;
  }

  static double textSize(double textSize) {
    double screenWidth = _mediaQueryData.size.width / 100;
    return textSize * screenWidth;
  }
}
