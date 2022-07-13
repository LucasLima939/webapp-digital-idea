import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_idea_website/ui/constants/constants.dart';
import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

class CarouselSection extends StatefulWidget {
  const CarouselSection({Key? key}) : super(key: key);

  @override
  State<CarouselSection> createState() => _CarouselSectionState();
}

class _CarouselSectionState extends State<CarouselSection> {
  late CarouselController _carouselController;
  late ValueNotifier<int> _currentIndex;

  @override
  void initState() {
    _carouselController = CarouselController();
    _currentIndex = ValueNotifier<int>(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .25,
      width: double.infinity,
      child: LayoutBuilder(builder: (context, constraints) {
        if (isMobile(context)) {
          return Container();
        } else {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * .25,
                width: double.infinity,
                child: CarouselSlider(
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      viewportFraction: 1,
                      autoPlay: true,
                      onPageChanged: (index, _) => _currentIndex.value = index,
                    ),
                    items: homeBannersList
                        .map<Widget>((path) => Image.asset(path,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width))
                        .toList()),
              ),
              ValueListenableBuilder<int>(
                  valueListenable: _currentIndex,
                  builder: (context, index, child) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: homeBannersList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () =>
                              _carouselController.animateToPage(entry.key),
                          child: Container(
                            width: 12.0,
                            height: 12.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(
                                    index == entry.key ? 0.9 : 0.4)),
                          ),
                        );
                      }).toList(),
                    );
                  })
            ],
          );
        }
      }),
    );
  }
}
