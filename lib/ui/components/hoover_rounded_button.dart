import 'package:flutter/material.dart';

// TODO: Adicionar hoover

class HooverRoundedButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final double? width;
  const HooverRoundedButton(this.text,
      {required this.onTap, this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: width ?? 100,
        child: ElevatedButton(onPressed: onTap, child: Text(text)));
  }
}
