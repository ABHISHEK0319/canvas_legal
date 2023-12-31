import 'package:canvas_legal/connect%20responsive%20widgets/singlepgeconnection.dart';
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
          //const AbhishekAboutUs(),
          //SingleWebPage(),
          const SinglePageWebConnection(),
    );
  }
}
