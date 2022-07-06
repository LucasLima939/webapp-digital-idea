import 'package:digital_idea_website/ui/components/components.dart';
import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

class HoverLargeButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final double? width;
  final bool fitBox;
  const HoverLargeButton(this.text,
      {required this.onTap, this.width, this.fitBox = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverDetector.fromSize(
        height: 40,
        width: width ?? 100,
        builder: (isHovered) {
          return ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  backgroundColor:
                      MaterialStateProperty.all(DigitalIdeaTheme.bulbYellow)),
              onPressed: onTap,
              child: FittedBox(
                  fit: fitBox ? BoxFit.fitWidth : BoxFit.none,
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white),
                  )));
        });
  }
}
