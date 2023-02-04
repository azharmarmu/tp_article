import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tutorials Point'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: SizedBox(
            width: 200,
            height: 150,
            child: AutoSizeText(
              'Welcome to Tutorials Point',
              style: TextStyle(fontSize: 30.0),
              maxLines: 2,
            ),
          ),
        ),
      ),
    );
  }
}
