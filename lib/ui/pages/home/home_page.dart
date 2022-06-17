import 'package:digital_idea_website/ui/ui.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomHeader(height: MediaQuery.of(context).size.height * .2),
      body: SingleChildScrollView(
          child: Column(children: [
        _headerSection(),
        _carouselSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .01),
        _solucoesSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .01),
        _portfolioSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .01),
        _perguntasFrequentesSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .01),
        _footer(),
      ])),
    );
  }

  Widget _headerSection() => SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        width: double.infinity,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    faker.lorem.sentence(),
                    style: DigitalIdeaTextStyles.header1Default,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .01),
                  Text(
                    faker.lorem.sentence(),
                    style: DigitalIdeaTextStyles.subtitle1Default,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .01),
                  HooverRoundedButton(faker.lorem.word(), onTap: () {}),
                ],
              )
            ],
          ),
        ),
      );

  Widget _carouselSection() => SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        width: double.infinity,
        child: Image.asset(
          'assets/placeholder-banner.png',
          fit: BoxFit.cover,
        ),
      );

  Widget _solucoesSection() {
    final services = {
      'Websites': '/websites',
      'Gestão de Mídias': '/gestao-de-midias',
      'Identidade Visual': '/identidade-visual'
    };

    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Soluções direcionadas para o seu negócio físico ou digital.'),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: services.entries
                  .map((entry) => _serviceButton(entry.key, entry.value))
                  .toList()),
        ],
      ),
    );
  }

  Widget _serviceButton(String title, String routeName) => Container(
        height: 140,
        width: 60,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          children: [
            Image.asset(
              'assets/placeholder_icon.png',
              height: 30,
              width: 30,
            ),
            const SizedBox(height: 5),
            Text(title, style: DigitalIdeaTextStyles.header3Default),
            const SizedBox(height: 5),
            HooverRoundedButton('Conhecer serviço',
                onTap: () async =>
                    await Navigator.pushNamed(context, routeName)),
          ],
        ),
      );

  Widget _portfolioSection() => SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'Confira nossos últimos trabalhos',
              style: DigitalIdeaTextStyles.header2Default,
            ),
            const SizedBox(height: 10),
            Text(
              'Faça sua empresa aparecer aqui também.',
              style: DigitalIdeaTextStyles.subtitle1(
                  color: DigitalIdeaTheme.oceanBlue),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: Image.asset('assets/placeholder-banner.png',
                  fit: BoxFit.cover),
            )
          ],
        ),
      );

  Widget _comoFuncionaSection() => SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .3,
        child: Image.asset(
          'assets/como-funciona-section.png',
          fit: BoxFit.cover,
        ),
      );

  Widget _perguntasFrequentesSection() => SizedBox(
        height: MediaQuery.of(context).size.height * .4,
        width: double.infinity,
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Perguntas frequentes',
                style: DigitalIdeaTextStyles.header2Default),
            const SizedBox(height: 10),
            Text('Tire suas principais dúvidas',
                style: DigitalIdeaTextStyles.subtitle1(
                    color: DigitalIdeaTheme.oceanBlue)),
            const SizedBox(height: 10),
            ExpandedListTile(),
            const SizedBox(height: 10),
            ExpandedListTile(),
            const SizedBox(height: 10),
            ExpandedListTile(),
          ],
        )),
      );

  Widget _footer() => Container(
        height: MediaQuery.of(context).size.height * .4,
        width: double.infinity,
        color: DigitalIdeaTheme.oceanBlue,
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Text(
              'Digital Idea',
              style: DigitalIdeaTextStyles.header2(color: Colors.white),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.instagram,
                          color: Colors.white)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.facebook,
                          color: Colors.white)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.linkedin,
                          color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Text(
              faker.lorem.sentence(),
              style: DigitalIdeaTextStyles.subtitle2(color: Colors.white),
            ),
            const SizedBox(height: 5),
            Text(
              faker.lorem.sentence(),
              style: DigitalIdeaTextStyles.subtitle2(color: Colors.white),
            ),
          ]),
        ),
      );
}
