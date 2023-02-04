import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Tutorialspoint'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
          child: RotatedBox(
        quarterTurns: 3,
        child: Text('Hello Tutorialspoint!'),
      )),
      backgroundColor: Colors.lightBlue[50],
    ));
  }
}
