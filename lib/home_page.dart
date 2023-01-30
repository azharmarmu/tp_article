import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 350,
          color: Colors.blueAccent,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width:100,
              height: 100,
              color: Colors.redAccent,
            ),
          ),
        ),
      ),
    );
  }
}
