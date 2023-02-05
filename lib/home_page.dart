import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          title: const Text('Fruits'),
          children: const <Widget>[
            ListTile(
              title: Text(
                'Apple',
                style: TextStyle(fontSize: 12),
              ),
            ),
            ListTile(
              title: Text(
                'Banana',
                style: TextStyle(fontSize: 12),
              ),
            ),
            ListTile(
              title: Text(
                'Carrot',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
