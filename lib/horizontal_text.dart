import 'package:flutter/material.dart';

class HorizontalScroll extends StatelessWidget {
  const HorizontalScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('TP Scrollable Text'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Center(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueAccent,
              width: 5.0,
            ),
          ),
          child: const Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                "Tutorialspoint is a good platform to learn programming."
                " It is an best educational website.",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  letterSpacing: 3,
                  wordSpacing: 3,
                ),
              ),
            ),
          ),
        ),
      )),
    ));
  }
}
