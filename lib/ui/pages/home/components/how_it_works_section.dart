import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({Key? key}) : super(key: key);

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

  Widget mobileView(BuildContext context) => Container();

  Widget desktopView(BuildContext context) => Image.asset(
        DigitalIdeaImages.bannerHowItWorks,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .3,
        fit: BoxFit.cover,
      );
}
