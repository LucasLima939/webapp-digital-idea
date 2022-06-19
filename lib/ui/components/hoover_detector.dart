import 'package:flutter/material.dart';

class HoverDetector extends StatefulWidget {
  final Widget Function(bool isHovered) builder;

  const HoverDetector({Key? key, required this.builder}) : super(key: key);

  @override
  HoverStateDetector createState() => HoverStateDetector();
}

class HoverStateDetector extends State<HoverDetector> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..translate(0, -10, 0);
    final transform = isHovered ? hovered : Matrix4.identity();

    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
