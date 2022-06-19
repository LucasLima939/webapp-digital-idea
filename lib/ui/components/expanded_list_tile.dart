import 'package:digital_idea_website/ui/ui.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ExpandedListTile extends StatefulWidget {
  final String title;
  final String body;
  const ExpandedListTile({Key? key, required this.body, required this.title})
      : super(key: key);

  @override
  State<ExpandedListTile> createState() => _ExpandedListTileState();
}

class _ExpandedListTileState extends State<ExpandedListTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width * .5,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => setState(() {
          isExpanded = !isExpanded;
        }),
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
                    isExpanded
                        ? Icons.arrow_drop_down_outlined
                        : Icons.arrow_right,
                    color: DigitalIdeaTheme.oceanBlue,
                  )
                ],
              ),
            ),
            Visibility(
                visible: isExpanded,
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
  }
}
