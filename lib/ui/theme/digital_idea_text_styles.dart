import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

class DigitalIdeaTextStyles {
  static header1({required Color color}) =>
      TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 24);
  static get header1Default => const TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
      fontSize: 32);
  static header2({required Color color}) =>
      TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 18);
  static get header2Default => TextStyle(
      color: DigitalIdeaTheme.oceanBlue,
      fontWeight: FontWeight.bold,
      fontSize: 18);
  static header3({required Color color}) =>
      TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 16);
  static get header3Default => TextStyle(
      color: DigitalIdeaTheme.oceanBlue,
      fontWeight: FontWeight.bold,
      fontSize: 16);
  static subtitle1({required Color color, double? fontSize}) => TextStyle(
      color: color, fontWeight: FontWeight.normal, fontSize: fontSize);
  static get subtitle1Default => const TextStyle(
      color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16);
  static subtitle2({required Color color}) =>
      TextStyle(color: color, fontWeight: FontWeight.normal, fontSize: 14);
  static get subtitle2Default => const TextStyle(
      color: Colors.black, fontWeight: FontWeight.normal, fontSize: 14);
}
