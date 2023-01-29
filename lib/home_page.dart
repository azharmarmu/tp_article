import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chip Widget'),
      ),
      body: Center(
        child: Chip(
          elevation: 20,
          padding: const EdgeInsets.all(8),
          backgroundColor: Colors.greenAccent[100],
          shadowColor: Colors.black,
          avatar: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ), //CircleAvatar
          label: const Text(
            'Tutorials Point',
            style: TextStyle(fontSize: 18),
          ), //Text
        ), //Chip
      ),
    );
  }
}
