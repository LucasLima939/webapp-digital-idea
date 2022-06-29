import 'package:digital_idea_website/ui/components/components.dart';
import 'package:flutter/material.dart';

class DigitalIdeaMiniLogo extends StatelessWidget {
  const DigitalIdeaMiniLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverDetector.fromSize(
      height: 50,
      width: 50,
      builder: (isHovered) => Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/logo/logo-mini.png'))),
      ),
    );
  }
}
