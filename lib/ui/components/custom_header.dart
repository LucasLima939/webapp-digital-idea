import 'package:digital_idea_website/ui/theme/digital_idea_theme.dart';
import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  CustomHeader({Key? key, required this.height}) : super(key: key);

  final options = ['início', 'soluções', 'portfólio', 'contato'];

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      width: double.infinity,
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        GestureDetector(
            onTap: () async =>
                await Navigator.pushReplacementNamed(context, '/'),
            child: const DigitalIdeaMiniLogo()),
        _headerOptions(),
        HoverDetector(
          builder: (isHovered) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                height: 40, // isHovered ? 42 : 40,
                width: 200, //isHovered ? 202 : 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: .5)),
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Text('Orçamento Gratuito',
                      style: DigitalIdeaTextStyles.subtitle1Default),
                ),
              ),
            );
          },
        )
      ]),
    );
  }

  Widget _headerOptions() {
    return SizedBox(
      height: 70,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: options.map((e) => _optionButton(e)).toList(),
      ),
    );
  }

  Widget _optionButton(String title, {bool isSelected = false}) => InkWell(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: isSelected
                  ? Border(
                      bottom: BorderSide(color: DigitalIdeaTheme.oceanBlue))
                  : null),
          child: Text(title, style: DigitalIdeaTextStyles.subtitle1Default),
        ),
      );
}
