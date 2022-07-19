import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Margin extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  final Widget child;
  const Margin({Key? key, required this.margin, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: child,
    );
  }
}
