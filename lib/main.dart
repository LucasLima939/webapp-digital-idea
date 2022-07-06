import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'factories/factories.dart';
import 'ui/ui.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  runApp(MaterialApp(
    title: 'Digital Idea',
    theme: ThemeData(
      fontFamily: 'Poppins',
      primarySwatch: DigitalIdeaTheme.oceanBlue,
    ),
    initialRoute: '/',
    routes: <String, Widget Function(BuildContext)>{
      '/': (_) => makeHomePage(),
      '/contatos': (_) => makeContatosPage(),
      '/portfolio': (_) => makePortfolioPage(),
      '/websites': (_) => makeWebsitesPage(),
      '/gestao-de-midias': (_) => makeGestaoDeMidiasPage(),
      '/identidade-visual': (_) => makeIdentidadeVisualPage(),
      '/marketing-digital': (_) => makeIdentidadeVisualPage(),
      '/design-inteligente': (_) => makeIdentidadeVisualPage(),
      '/trafego-pago': (_) => makeIdentidadeVisualPage(),
    },
  ));
}
