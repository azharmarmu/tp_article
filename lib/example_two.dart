import 'package:flutter/material.dart';

class ExampleTwo extends StatelessWidget {
  const ExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.red,
        child: SizedBox.shrink(),
      ),
      left: false,
      right: false,
      top: false,
    );
  }
}
