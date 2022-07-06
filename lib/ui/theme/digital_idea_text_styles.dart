import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

class DigitalIdeaTextStyles {
  static header1({required Color color}) =>
      TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 32);
  static header2({required Color color}) =>
      TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 24);
  static header3({required Color color}) =>
      TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 18);
  static subtitle1({required Color color, double fontSize = 18}) => TextStyle(
      color: color, fontWeight: FontWeight.normal, fontSize: fontSize);
  static subtitle2({required Color color}) =>
      TextStyle(color: color, fontWeight: FontWeight.normal, fontSize: 16);
      
  static get header1Default => header1(color: Colors.black87);
  static get header3Default => header3(color: DigitalIdeaTheme.oceanBlue);
  static get header2Default => header2(color: DigitalIdeaTheme.oceanBlue);
  static get subtitle1Default => subtitle1(color: Colors.black);
  static get subtitle2Default => subtitle2(color: Colors.black);
}
