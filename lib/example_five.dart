import 'package:flutter/material.dart';

class ExampleFive extends StatelessWidget {
  const ExampleFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tutorials Point'),
        ),
        body: const SizedBox.shrink(),
      ),
      minimum: MediaQuery.of(context).orientation == Orientation.portrait
          ? EdgeInsets.all(16.0)
          : EdgeInsets.all(32.0),
    );
  }
}
