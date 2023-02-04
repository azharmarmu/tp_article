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
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.yellow,
              child: const Center(child: Text('Item 1')),
            ),
            Container(
              height: 50,
              color: Colors.green,
              child: const Center(child: Text('Item 2')),
            ),
            Container(
              height: 50,
              color: Colors.red,
              child: const Center(child: Text('Item 3')),
            ),
            Container(
              height: 50,
              color: Colors.blue,
              child: const Center(child: Text('Item 4')),
            ),
            Container(
              height: 50,
              color: Colors.pink,
              child: const Center(child: Text('Item 5')),
            ),
          ],
        ),
      ),
    );
  }
}
