import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FrequentlyAskedQuestionsSection extends StatelessWidget {
  const FrequentlyAskedQuestionsSection({Key? key}) : super(key: key);

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

  static final questions = {
    'Quem somos e o que fazemos nas mídias?':
        'Digital Idea é uma agência de marketing digital fundada em 2019 pela designer Beatriz Nogueira (@bea.nogui), com o objetivo de ajudar empresas a se posicionarem online.\nNossa missão é ajudar pessoas através de oportunidades e transformar a economia do nosso país, gerando empregos e faturamento para outras empresas.',
    'Qual a diferença entre tráfego pago e social media?':
        'O tráfego pago trabalha exclusivamente com anúncios pagos. Ex: Ele é responsável pelo dinheiro do cliente investido nas redes sociais. Já o social media é responsável de fato pelas redes sociais, MKT, criação de conteúdo, criativo até a suas postagens e resultados orgânicos.',
    'Qual a diferença entre logo e identidade visual?':
        'Logotipo é a representação gráfica da sua marca. A identidade visual, por sua vez, engloba o logotipo, mas também cartões de visita, banners, a tipografia de apoio, as cores do manual de estilo, site e, em alguns casos, até mesmo alguns templates para posts em redes sociais.',
  };

  Widget mobileView(BuildContext context) => Container();
  Widget desktopView(BuildContext context) => SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(R.strings.faqTitle,
                style: DigitalIdeaTextStyles.header1Default),
            const SizedBox(height: 10),
            Text(R.strings.faqSubtitle,
                style: DigitalIdeaTextStyles.subtitle1(
                    color: DigitalIdeaTheme.oceanBlue)),
            Column(
                mainAxisSize: MainAxisSize.min,
                children: questions.entries
                    .map<Widget>((e) => Container(
                          width: MediaQuery.of(context).size.width * .5,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: ExpansionTile(
                            backgroundColor: Colors.white,
                            childrenPadding: const EdgeInsets.all(15),
                            title: Text(
                              e.key,
                              style: DigitalIdeaTextStyles.header3Default,
                            ),
                            children: [
                              Text(
                                e.value,
                                style: DigitalIdeaTextStyles.subtitle1Default,
                              )
                            ],
                          ),
                        ))
                    .toList()),
          ],
        ),
      );
}
