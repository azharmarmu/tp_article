import 'package:flutter/material.dart';

class ExampleThree extends StatelessWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tutorials Point'),
        ),
        body: const SizedBox.shrink(),
      ),
      minimum: EdgeInsets.all(16.0),
    );
  }
}
