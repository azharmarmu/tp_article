import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: const <Widget>[
            ExpansionTile(
              title: Text('Tutorials Point- Expansion Tile Example'),
              children: <Widget>[
                Text('This is the expanded content of the tile'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
