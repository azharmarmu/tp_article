import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ExampleTwo extends StatelessWidget {
  const ExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Class'),
      ),
      body: const Center(
        child: Icon(
          Icons.favorite,
          color: Colors.red,
          size: 48.0,
          semanticLabel: 'Heart Icon',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
