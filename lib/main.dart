import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorials Point',
      theme: ThemeData(
        splashColor: Colors.transparent,
        primarySwatch: Colors.blue,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      home: const HomePage(),
    );
  }
}