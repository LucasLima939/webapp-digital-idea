import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_idea_website/ui/constants/home_banners_list.dart';
import 'package:digital_idea_website/ui/constants/our_services_list.dart';
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
      appBar: CustomHeader(height: MediaQuery.of(context).size.height * .1),
      body: SingleChildScrollView(
          child: Column(children: [
        SizedBox(height: MediaQuery.of(context).size.height * .03),
        _headerSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .05),
        _carouselSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .05),
        _solucoesSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .05),
        _portfolioSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .05),
        _perguntasFrequentesSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .01),
        _footer(),
      ])),
    );
  }

  Widget _headerSection() => Container(
        height: MediaQuery.of(context).size.height * .4,
        width: double.infinity,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .01),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Container()),
                    Text(
                      R.strings.homeTitle,
                      style: DigitalIdeaTextStyles.header1Default,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .01),
                    Text(
                      R.strings.homeSubtitle,
                      style: DigitalIdeaTextStyles.subtitle2Default,
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * .05,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .25,
                  height: 55,
                  child: LargeButton(
                      child: const Text('Leve seu neg??cio para outro n??vel!',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {}),
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/home_image.png',
            height: MediaQuery.of(context).size.width * .3,
            width: MediaQuery.of(context).size.width * .3,
          )
        ]),
      );

  Widget _carouselSection() => SizedBox(
        height: MediaQuery.of(context).size.width * .2,
        width: double.infinity,
        child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
            ),
            items: homeBannersList
                .map<Widget>((path) => Image.asset(path,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width))
                .toList()),
      );

  Widget _solucoesSection() {
    final services = {
      // 'Websites': '/websites',
      'Gest??o de M??dias': '/gestao-de-midias',
      'Identidade Visual': '/identidade-visual',
      'Marketing Digital': '/marketing-digital',
      'Design Inteligente': '/design-inteligente',
      'Tr??fego Pago': '/trafego-pago',
      'Suporte Especializado': '/contatos',
    };

    return SizedBox(
      //height: MediaQuery.of(context).size.height * .18,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .015),
          Text(
            'Solu????es em Marketing Digital',
            style: DigitalIdeaTextStyles.header1Default,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .015),
          Text(
            'O que o Digital Idea faz por voc??!',
            style: DigitalIdeaTextStyles.header3Default,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .015),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: services.entries
                  .map((entry) => _serviceButton(entry.key, entry.value))
                  .toList()),
          SizedBox(height: MediaQuery.of(context).size.height * .018),
        ],
      ),
    );
  }

  Widget _serviceButton(String title, String routeName) => Container(
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

  Widget _portfolioSection() => SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Confira nossos ??ltimos trabalhos',
              style: DigitalIdeaTextStyles.header1Default,
            ),
            const SizedBox(height: 10),
            Text(
              'Designs feitos pela equipe Digital Idea',
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
              // child: Image.asset('assets/placeholder-banner.png',
              //     fit: BoxFit.cover),
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
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Ainda com d??vida?',
                style: DigitalIdeaTextStyles.header1Default),
            const SizedBox(height: 10),
            Text('Veja nosso suporte de d??vidas frequentes',
                style: DigitalIdeaTextStyles.subtitle1(
                    color: DigitalIdeaTheme.oceanBlue)),
            const SizedBox(height: 20),
            ExpandedListTile(
                title: 'Quem somos e o que fazemos nas m??dias?',
                body:
                    'Digital Idea ?? uma ag??ncia de marketing digital fundada em 2019 pela designer Beatriz Nogueira (@bea.nogui), com o objetivo de ajudar empresas a se posicionarem online. Nossa miss??o ?? ajudar pessoas atrav??s de oportunidades e transformar a economia do nosso pa??s, gerando empregos e faturamento para outras empresas.'),
            const SizedBox(height: 20),
            ExpandedListTile(
                title: '?? uma ag??ncia 100% remota?',
                body: faker.lorem.sentence()),
            const SizedBox(height: 20),
            ExpandedListTile(
                title: 'Onde est?? sediada?', body: faker.lorem.sentence()),
            const SizedBox(height: 20),
          ],
        ),
      );

  Widget _footer() => Container(
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
