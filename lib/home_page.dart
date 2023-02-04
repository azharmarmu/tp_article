import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 100,
            backgroundColor: Colors.green,
            child: Text("TP",
              style: TextStyle(
                fontSize: 85,
                color: Colors.white,

              ),
            ),

        ),
      ),
    );
  }
}
