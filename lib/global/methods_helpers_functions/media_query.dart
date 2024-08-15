import 'package:flutter/material.dart';

class MQuery{


  static double getWidth(BuildContext context, double oldwantedWidth) {
    return (MediaQuery.of(context).size.width*oldwantedWidth)/ 393 ;
  }
  static double getheight(BuildContext context, double oldwantedHeight) {
    return (MediaQuery.of(context).size.height*oldwantedHeight)/ 852 ;
  }


  static double currentHeight(BuildContext context) {
    return MediaQuery.of(context).size.height ;
  }

  static double currentWidth(BuildContext context) {
    return MediaQuery.of(context).size.width ;
  }
}