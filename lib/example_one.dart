import 'package:flutter/material.dart';

class ExampleOne extends StatelessWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Tutorials Point',
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(
                  text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ' and '),
              TextSpan(
                  text: 'italic',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              TextSpan(text: ' text.'),
            ],
          ),
        ),
      ),
    );
  }
}
