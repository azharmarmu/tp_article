import 'package:flutter/material.dart';

class ExampleTWo extends StatelessWidget {
  const ExampleTWo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          child: const Text(
            'Example without Safe Area',
            style: TextStyle(
                color: Colors.white, fontSize: 42, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
