import 'package:flutter/material.dart';

// ignore: unused_import
import 'example_one.dart';
import 'example_two.dart';

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
      // home: const ExampleOne(),
      home: const ExampleTwo(),
    );
  }
}
