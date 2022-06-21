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
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Flexible(
              flex: 2,
              child: Center(
                child: GestureDetector(
                    onTap: () async =>
                        await Navigator.pushReplacementNamed(context, '/'),
                    child: const DigitalIdeaMiniLogo()),
              ),
            ),
            Flexible(flex: 4, child: _headerOptions()),
            Flexible(
              flex: 2,
              child: Center(
                child: HoverDetector.fromSize(
                  height: 50,
                  width: 200,
                  builder: (isHovered) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 1.3, color: DigitalIdeaTheme.oceanBlue)),
                        padding: const EdgeInsets.all(15),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text('ORÇAMENTO GRATUITO',
                              style: DigitalIdeaTextStyles.subtitle1(
                                  color: DigitalIdeaTheme.oceanBlue)),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ]),
        ],
      ),
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
        child: HoverDetector(builder: (isHoovered) {
          return Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: isHoovered
                    ? Border(
                        bottom: BorderSide(color: DigitalIdeaTheme.oceanBlue))
                    : null),
            child: Text(title, style: DigitalIdeaTextStyles.subtitle1Default),
          );
        }),
      );
}
