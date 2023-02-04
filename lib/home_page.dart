import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorials Point"),
      ),
      body: const Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text("Tutorials Point"),
        ),
      ),
    );
  }
}
