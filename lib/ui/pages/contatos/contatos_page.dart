import 'package:digital_idea_website/ui/components/components.dart';
import 'package:digital_idea_website/ui/pages/contatos/components/web_map.dart';
import 'package:digital_idea_website/ui/theme/digital_idea_text_styles.dart';
import 'package:digital_idea_website/ui/theme/digital_idea_theme.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ContatosPage extends StatefulWidget {
  const ContatosPage({Key? key}) : super(key: key);

  @override
  State<ContatosPage> createState() => _ContatosPageState();
}

class _ContatosPageState extends State<ContatosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomHeader(height: MediaQuery.of(context).size.height * .1),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * .017),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: MediaQuery.of(context).size.height * .017),
              Text('Onde nos Encontrar',
                  style: DigitalIdeaTextStyles.header1(
                      color: DigitalIdeaTheme.oceanBlue)),
              SizedBox(height: MediaQuery.of(context).size.height * .025),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SizedBox(height: 300, width: 300, child: WebMap()),
                _faqSection(),
              ])
            ]),
          ),
        ));
  }

  Widget _faqSection() {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Text('São uma agência 100% remota?',
          style:
              DigitalIdeaTextStyles.header3(color: DigitalIdeaTheme.oceanBlue)),
      SizedBox(height: MediaQuery.of(context).size.height * .017),
      Text(faker.lorem.sentence(),
          style: DigitalIdeaTextStyles.subtitle1(
              color: DigitalIdeaTheme.oceanBlue)),
      SizedBox(height: MediaQuery.of(context).size.height * .017),
      Text('São uma agência 100% remota?',
          style:
              DigitalIdeaTextStyles.header3(color: DigitalIdeaTheme.oceanBlue)),
      SizedBox(height: MediaQuery.of(context).size.height * .017),
      Text(faker.lorem.sentence(),
          style: DigitalIdeaTextStyles.subtitle1(
              color: DigitalIdeaTheme.oceanBlue)),
    ]);
  }
}
