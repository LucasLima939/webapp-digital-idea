import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

class DigitalIdeaTextStyles {
  static TextStyle header1({required Color color}) =>
      TextStyle(color: color, fontWeight: FontWeight.w900, fontSize: 42);
  static TextStyle header2({required Color color}) =>
      TextStyle(color: color, fontWeight: FontWeight.w700, fontSize: 24);
  static TextStyle header3({required Color color}) =>
      TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 18);
  static TextStyle subtitle1({required Color color, double fontSize = 18}) => TextStyle(
      color: color, fontWeight: FontWeight.normal, fontSize: fontSize);
  static TextStyle subtitle2({required Color color}) =>
      TextStyle(color: color, fontWeight: FontWeight.normal, fontSize: 16);
      
  static TextStyle get header1Default => header1(color: Colors.black87);
  static TextStyle get header3Default => header3(color: DigitalIdeaTheme.oceanBlue);
  static TextStyle get header2Default => header2(color: DigitalIdeaTheme.oceanBlue);
  static TextStyle get subtitle1Default => subtitle1(color: Colors.black);
  static TextStyle get subtitle2Default => subtitle2(color: Colors.black);
}
