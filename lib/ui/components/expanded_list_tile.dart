import 'dart:math';

import 'package:digital_idea_website/ui/ui.dart';
import 'package:flutter/material.dart';

class ExpandedListTile extends StatefulWidget {
  final String title;
  final String body;
  const ExpandedListTile({Key? key, required this.body, required this.title})
      : super(key: key);

  @override
  State<ExpandedListTile> createState() => _ExpandedListTileState();
}

class _ExpandedListTileState extends State<ExpandedListTile>
    with TickerProviderStateMixin {
  bool isExpanded = false;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      lowerBound: 1.0,
      upperBound: 2.0,
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width * .5,
            height: _controller.value == 1.0
                ? MediaQuery.of(context).size.height * .05
                : MediaQuery.of(context).size.height * (_controller.value * .1),
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                //_controller.value * 2 * pi
                if (_controller.isCompleted) {
                  _controller.reverse();
                } else {
                  _controller.forward();
                }
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.title,
                          style: DigitalIdeaTextStyles.header3Default,
                        ),
                        Icon(
                          _controller.isCompleted
                              ? Icons.arrow_drop_down_outlined
                              : Icons.arrow_right,
                          color: DigitalIdeaTheme.oceanBlue,
                        )
                      ],
                    ),
                  ),
                  Visibility(
                      visible: _controller.isCompleted,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            widget.body,
                            style: DigitalIdeaTextStyles.subtitle1Default,
                          ),
                        ],
                      ))
                ],
              ),
            ),
          );
        });
  }
}
