import 'package:digital_idea_website/ui/constants/constants.dart';
import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

class SoluctionsSection extends StatelessWidget {
  const SoluctionsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: LayoutBuilder(builder: (context, constraints) {
      if (isMobile(context)) {
        return Container();
      } else {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .015),
              Text(
                R.strings.homeSoluctionsTitle,
                style: DigitalIdeaTextStyles.header1Default,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .015),
              Text(
                R.strings.homeSoluctionsSubtitle,
                style: DigitalIdeaTextStyles.header3Default,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .015),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: servicesList.entries
                      .map((entry) =>
                          _serviceButton(entry.key, entry.value, context))
                      .toList()),
              SizedBox(height: MediaQuery.of(context).size.height * .018),
            ],
          ),
        );
      }
    }));
  }

  Widget _serviceButton(String title, String routeName, BuildContext context) =>
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width / 10,
              width: MediaQuery.of(context).size.width / 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icon$routeName.png',
                    height: MediaQuery.of(context).size.width / 12,
                    width: MediaQuery.of(context).size.width / 12,
                    fit: BoxFit.fitHeight,
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
            HoverRoundedButton(title,
                width: MediaQuery.of(context).size.width / 9,
                onTap: () async =>
                    await Navigator.pushNamed(context, routeName)),
          ],
        ),
      );
}
