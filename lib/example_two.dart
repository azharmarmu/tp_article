import 'package:flutter/material.dart';

class ExampleTwo extends StatelessWidget {
  const ExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Welcome to ',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                TextSpan(
                  text: 'Tutorials Point',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
