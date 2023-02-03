import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tutorials Point'),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              title: Text('Fruits'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Vegetables'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Dry fruits'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
