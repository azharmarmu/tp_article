import 'package:flutter/material.dart';

import 'border_radius_all.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const BorderRadiusAll(),
    );
  }
}
