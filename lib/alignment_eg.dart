import 'package:flutter/material.dart';

class AlignmentEx extends StatelessWidget {
  const AlignmentEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alignment-Example'),
      ),
      body: Center(
        child: Container(
          height: 220,
          width: 220,
          color: Colors.green[50],
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'Tutorials Points',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
