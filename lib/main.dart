import 'package:canvas_legal/pages/canvas_legal.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyACv4eCyGagEsiIwGc1uR9ZsxHGpfscNzo",
      projectId: "canvas-legel",
      storageBucket: "canvas-legel.appspot.com",
      messagingSenderId: "66775404066",
      appId: "1:66775404066:web:32473dd451e8aaa1ae447b",
    ),
  );
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
      home: CLfirstPage(),
    );
  }
}
