import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final Function() onTap;
  final BoxFit fit;
  final Widget child;
  const LargeButton(
      {Key? key,
      required this.onTap,
      this.fit = BoxFit.none,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
            backgroundColor:
                MaterialStateProperty.all(DigitalIdeaTheme.bulbYellow)),
        onPressed: onTap,
        child: FittedBox(fit: fit, child: child));
  }
}
