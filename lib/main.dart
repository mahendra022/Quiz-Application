import 'package:flutter/material.dart';
import 'package:quiz/screen/home_page.dart';
import 'package:quiz/screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      theme: ThemeData(
        backgroundColor: Colors.amber,
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
