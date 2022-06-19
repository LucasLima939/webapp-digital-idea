import 'package:flutter/material.dart';

// TODO: Adicionar hoover

class HooverRoundedButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final double? width;
  final bool fitBox;
  const HooverRoundedButton(this.text,
      {required this.onTap, this.width, this.fitBox = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: width ?? 100,
        child: ElevatedButton(
            onPressed: onTap,
            child: FittedBox(
                fit: fitBox ? BoxFit.fitWidth : BoxFit.none,
                child: Text(text))));
  }
}
