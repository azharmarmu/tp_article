import 'package:flutter/material.dart';

class ExampleOne extends StatelessWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tutorials Point'),
        ),
        body: Center(
          child: Container(
            color: Colors.red,
            child: const Text(
              'Example with Safe Area',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
