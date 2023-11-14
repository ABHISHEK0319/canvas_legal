import 'package:flutter/material.dart';

class DynamicWidget extends StatelessWidget {
  const DynamicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: (MediaQuery.of(context).size.height),
              width: (MediaQuery.of(context).size.width),
            ),
            Container(
              color: Colors.blue,
              height: (MediaQuery.of(context).size.height),
              width: (MediaQuery.of(context).size.width),
            ),
            Container(
              color: Colors.green,
              height: (MediaQuery.of(context).size.height),
              width: (MediaQuery.of(context).size.width),
            ),
          ],
        ),
      );
    });
  }
}
