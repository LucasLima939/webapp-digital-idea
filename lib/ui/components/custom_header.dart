import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';


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
      color: DigitalIdeaTheme.oceanBlue,
      child: LayoutBuilder(builder: (context, constraints) {
        if (isMobile(context)) {
          return _buildMobileHeader(context, constraints);
        } else {
          return _buildBrowserHeader(context, constraints);
        }
      }),
    );
  }

  Widget _buildMobileHeader(BuildContext context, BoxConstraints constraints) {
    return Container();
  }

  Widget _buildBrowserHeader(BuildContext context, BoxConstraints constraints) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      InkWell(
          onTap: () async => await Navigator.pushReplacementNamed(context, '/'),
          child: DigitalIdeaMiniLogo(
            size: constraints.maxWidth * .1,
          )),
      const SizedBox(width: 50),
      _headerOptions(),
      SizedBox(
        width: 300,
        child: Center(
          child: HoverDetector.fromSize(
            height: 50,
            width: 200,
            builder: (isHovered) {
              return InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 1.3, color: DigitalIdeaTheme.bulbYellow)),
                  padding: const EdgeInsets.all(15),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(R.strings.requestBudgetOffer.toUpperCase(),
                        style: DigitalIdeaTextStyles.subtitle1(
                            color: Colors.white)),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ]);
  }

  Widget _headerOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: options.map((e) => _optionButton(e)).toList(),
    );
  }

  Widget _optionButton(String title) => InkWell(
        onTap: () {},
        child: HoverDetector(builder: (isHoovered) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                border: isHoovered
                    ? Border(
                        bottom: BorderSide(color: DigitalIdeaTheme.bulbYellow))
                    : null),
            child: Text(title,
                style: DigitalIdeaTextStyles.header3(color: Colors.white)),
          );
        }),
      );
}
