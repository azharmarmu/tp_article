import 'package:flutter/material.dart';

class BiDirectionalWidget extends StatelessWidget {
  const BiDirectionalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TurtorialsPoint'),
        backgroundColor: Colors.green,
      ), //AppBar
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 24),
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                border: BorderDirectional(
                  start: BorderSide(
                    color: Colors.green,
                    width: 4,
                    style: BorderStyle.solid,
                  ), //BorderSide
                  end: BorderSide(
                    color: Colors.blue,
                    width: 4,
                    style: BorderStyle.solid,
                  ), //BorderSide
                ), //Border
              ),
              child: const Text('Border Directional'), //BoxDecoration
            ),
          ],
        ),
      ), //Center
    ); //Scaffold
  }
}
