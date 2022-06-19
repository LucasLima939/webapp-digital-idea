import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DigitalIdeaMiniLogo extends StatelessWidget {
  const DigitalIdeaMiniLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage('assets/logo/logo-mini.png'))),
    );
  }
}
