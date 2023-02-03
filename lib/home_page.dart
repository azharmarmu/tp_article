import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tutorials Point'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.yellow,
                height: 60,
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                color: Colors.green,
                height: 200,
              ),
            ),
          ],
        ));
  }
}
