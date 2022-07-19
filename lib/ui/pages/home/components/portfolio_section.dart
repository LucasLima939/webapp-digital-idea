import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_idea_website/ui/constants/constants.dart';
import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (isMobile(context)) {
        return mobileView(context);
      } else {
        return desktopView(context);
      }
    });
  }

  Widget mobileView(BuildContext context) => Container();

  Widget desktopView(BuildContext context) => SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              R.strings.homePortfolioTitle,
              style: DigitalIdeaTextStyles.header1Default,
            ),
            const SizedBox(height: 10),
            Text(
              R.strings.homePortfolioSubtitle,
              style: DigitalIdeaTextStyles.header3(
                  color: DigitalIdeaTheme.oceanBlue),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            Container(
              height: MediaQuery.of(context).size.width * .7 * .2,
              width: MediaQuery.of(context).size.width * .7,
              color: DigitalIdeaTheme.oceanBlue,
              child: CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    disableCenter: true,
                    aspectRatio: 1,
                    viewportFraction: 0.2),
                items: ourServicesList
                    .map<Widget>((path) => Image.asset(path, fit: BoxFit.cover))
                    .toList(),
              ),
            )
          ],
        ),
      );
}
