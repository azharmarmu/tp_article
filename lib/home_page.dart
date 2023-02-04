import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body: const SizedBox.shrink(),
    );
  }
}
