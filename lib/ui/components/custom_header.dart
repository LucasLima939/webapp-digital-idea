import 'package:digital_idea_website/ui/theme/digital_idea_theme.dart';
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
        DigitalIdeaFullLogo(),
        _headerOptions(),
        Container(
          child: Text('Orçamento Gratuito'),
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
          child: Text(title),
        ),
      );
}
