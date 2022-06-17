import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpandedListTile extends StatelessWidget {
  const ExpandedListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(faker.lorem.sentence()),
      trailing: const Icon(Icons.arrow_right),
    );
  }
}
