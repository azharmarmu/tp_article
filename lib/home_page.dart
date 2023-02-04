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
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(child: Text('Item $index')),
            );
          },
        ),
      ),
    );
  }
}
