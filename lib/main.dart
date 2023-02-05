import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/second':
            return PageTransition(
              child: const SecondPage(),
              type: PageTransitionType.fade,
              settings: settings,
            );
          default:
            return null;
        }
      },
    );
  }
}