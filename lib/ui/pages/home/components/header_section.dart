import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: LayoutBuilder(builder: ((context, constraints) {
        if (isMobile(context)) {
          return _buildMobileHeader(context, constraints);
        } else {
          return _buildBrowserHeader(context, constraints);
        }
      })),
    );
  }
}

Widget _buildMobileHeader(BuildContext context, BoxConstraints constraints) =>
    Expanded(child: Container(color: Colors.red));

Widget _buildBrowserHeader(BuildContext context, BoxConstraints constraints) =>
    Center(
      child: SizedBox(
        height: constraints.maxHeight,
        width: constraints.maxWidth * .6,
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
            width: constraints.maxWidth * .3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    R.strings.homeHeaderTitle,
                    style: DigitalIdeaTextStyles.header1Default,
                  ),
                ),
                SizedBox(height: constraints.maxHeight * .03),
                Container(
                  constraints: BoxConstraints(
                    maxHeight: constraints.maxHeight * .3,
                    minHeight: constraints.maxHeight * .1,
                  ),
                  child: Text(
                    R.strings.homeHeaderSubtitle,
                    style: DigitalIdeaTextStyles.subtitle2Default,
                  ),
                ),
                SizedBox(height: constraints.maxHeight * .03),
                FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Center(
                    child: SizedBox(
                      width: constraints.maxWidth * .25,
                      height: 55,
                      child: LargeButton(
                          child: Text(R.strings.homeHeaderButtonText,
                              style: const TextStyle(color: Colors.white)),
                          onTap: () {}),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: constraints.maxWidth * .05,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Image.asset(
                DigitalIdeaImages.homeImage,
                fit: BoxFit.fitHeight,
              ),
            ),
          )
        ]),
      ),
    );
