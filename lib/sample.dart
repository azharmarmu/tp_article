import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  get blue => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body: const Text.rich(
        TextSpan(
          text: 'Tutorials Point',
          children: <TextSpan>[
            TextSpan(
                text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' and '),
            TextSpan(
                text: 'italic', style: TextStyle(fontStyle: FontStyle.italic)),
            TextSpan(text: ' text.'),
          ],
        ),
      ),
    );
  }
}
