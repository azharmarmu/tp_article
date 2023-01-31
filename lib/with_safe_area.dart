import 'package:flutter/material.dart';

class WithSafeArea extends StatelessWidget {
  const WithSafeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: Colors.green,
          child: const Text(
            'Example with Safe Area',
            style: TextStyle(
              color: Colors.white,
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
