import 'package:flutter/material.dart';

import 'factories/factories.dart';
import 'ui/ui.dart';

void main() {
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
    },
  ));
}
