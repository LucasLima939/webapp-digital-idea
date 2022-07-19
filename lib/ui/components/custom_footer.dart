import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (isMobile(context)) {
          return mobileView(context);
        } else {
          return desktopView(context);
        }
      },
    );
  }

  Widget desktopView(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height * .25,
        width: double.infinity,
        color: DigitalIdeaTheme.oceanBlue,
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(
              'Digital Idea',
              style: DigitalIdeaTextStyles.header2(color: Colors.white),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () => openExternal(
                        'https://www.instagram.com/digitalideabr/'),
                    icon: const Icon(FontAwesomeIcons.instagram,
                        color: Colors.white)),
                IconButton(
                    onPressed: () =>
                        openExternal('https://www.facebook.com/digitalideabr'),
                    icon: const Icon(FontAwesomeIcons.facebook,
                        color: Colors.white)),
                IconButton(
                    onPressed: () => openExternal(
                        'https://www.linkedin.com/company/digitral-ideia/'),
                    icon: const Icon(FontAwesomeIcons.linkedin,
                        color: Colors.white)),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              R.strings.digitalIdeaCnpj.toUpperCase(),
              style: DigitalIdeaTextStyles.subtitle2(color: Colors.white),
            ),
            const SizedBox(height: 5),
            Text(
              R.strings.digitalIdeaCopyright.toUpperCase(),
              style: DigitalIdeaTextStyles.subtitle2(color: Colors.white),
            ),
          ]),
        ),
      );

  Widget mobileView(BuildContext context) => Container();
}
