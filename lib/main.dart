import 'package:flutter/material.dart';
import 'package:tp_article/example_one.dart';

import 'example_two.dart';
import 'example_three.dart';
import 'example_four.dart';
import 'example_five.dart';

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
      //home: const ExampleOne(),
      //home: const ExampleTwo(),
      //home: const ExampleThree(),
      //home: const ExampleFour(),
      home: const ExampleFive(),
    );
  }
}
