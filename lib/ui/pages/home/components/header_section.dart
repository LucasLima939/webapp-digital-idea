import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (isMobile(context)) {
        return _buildMobileHeader(context, constraints);
      } else {
        return _buildBrowserHeader(context, constraints);
      }
    }));
  }
}

Widget _buildMobileHeader(BuildContext context, BoxConstraints constraints) =>
    Container();

Widget _buildBrowserHeader(BuildContext context, BoxConstraints constraints) =>
    Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .4,
        width: MediaQuery.of(context).size.width * .6,
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * .3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  R.strings.homeTitle,
                  style: DigitalIdeaTextStyles.header1Default,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .01),
                Text(
                  R.strings.homeSubtitle,
                  style: DigitalIdeaTextStyles.subtitle2Default,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .04),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .25,
                    height: 55,
                    child: LargeButton(
                        child: const Text('Leve seu negócio para outro nível!',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {}),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .05,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Image.asset(
                'assets/images/home_image.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          )
        ]),
      ),
    );
