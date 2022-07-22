import 'package:digital_idea_website/ui/components/custom_footer.dart';
import 'package:digital_idea_website/ui/constants/constants.dart';
import 'package:digital_idea_website/ui/pages/home/components/components.dart';
import 'package:digital_idea_website/ui/pages/home/components/frequently_asked_questions_section.dart';
import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

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
        const HeaderSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .05),
        const CarouselSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .05),
        const SoluctionsSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .05),
        const PortfolioSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .05),
        const HowItWorksSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .05),
        const FrequentlyAskedQuestionsSection(),
        SizedBox(height: MediaQuery.of(context).size.height * .01),
        const CustomFooter(),
      ])),
    );
  }
}
