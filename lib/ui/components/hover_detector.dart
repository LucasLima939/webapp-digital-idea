import 'package:flutter/material.dart';

class HoverDetector extends StatefulWidget {
  final double? height;
  final double? width;
  final bool _shouldResize;
  final Widget Function(bool isHovered) builder;

  const HoverDetector.fromSize(
      {Key? key,
      required this.builder,
      required this.height,
      required this.width})
      : _shouldResize = true,
        super(key: key);

  const HoverDetector({Key? key, required this.builder})
      : _shouldResize = false,
        height = null,
        width = null,
        super(key: key);

  @override
  HoverStateDetector createState() => HoverStateDetector();
}

class HoverStateDetector extends State<HoverDetector> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    //final hovered = Matrix4.identity()..translate(0, -10, 0);
    final width = isHovered && widget._shouldResize
        ? widget.width! + (5 * widget.width! / widget.height!)
        : widget.width;
    final height =
        isHovered && widget._shouldResize ? widget.height! + 5 : widget.height;

    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height: height,
        width: width,
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
