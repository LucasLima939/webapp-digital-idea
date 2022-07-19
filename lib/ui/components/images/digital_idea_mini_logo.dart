import 'package:flutter/material.dart';

class DigitalIdeaMiniLogo extends StatelessWidget {
  final double size;
  const DigitalIdeaMiniLogo({Key? key, this.size = 50}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/logo/logo-mini.png', width: size, height: size);
  }
}
