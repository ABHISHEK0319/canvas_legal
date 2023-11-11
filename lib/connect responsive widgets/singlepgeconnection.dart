import 'package:canvas_legal/mobile%20pages/singlepagemob.dart';
import 'package:canvas_legal/responsiveclass.dart';
import 'package:canvas_legal/web%20pages/singlepageweb.dart';
import 'package:flutter/material.dart';

class SinglePageWebConnection extends StatefulWidget {
  const SinglePageWebConnection({super.key});

  @override
  State<SinglePageWebConnection> createState() =>
      _SinglePageWebConnectionState();
}

class _SinglePageWebConnectionState extends State<SinglePageWebConnection> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: SingleWebPage(),
      smallScreen: SingleMobPage(),
    );
  }
}
