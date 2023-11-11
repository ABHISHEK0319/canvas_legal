import 'package:canvas_legal/connect%20responsive%20widgets/singlepgeconnection.dart';
import 'package:canvas_legal/mobile%20pages/singlepagemob.dart';
import 'package:canvas_legal/web%20pages/singlepageweb.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Canvas Legal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          //SingleWebPage(),
          const SinglePageWebConnection(),
    );
  }
}
