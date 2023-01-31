import 'package:flutter/material.dart';

class WithoutSaferArea extends StatelessWidget {
  const WithoutSaferArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        color: Colors.green,
        child: const Text(
          'Example without Safe Area',
          style: TextStyle(
            color: Colors.white,
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
