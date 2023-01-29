import 'package:flutter/material.dart';

class ExampleOne extends StatelessWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon class'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(
              Icons.account_circle,
              color: Colors.red,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Icon(
              Icons.ad_units,
              color: Colors.orange,
              size: 30.0,
            ),
            Icon(
              Icons.add_alert,
              color: Colors.purple,
              size: 36.0,
            ),
          ],
        ),
      ),
    );
  }
}
