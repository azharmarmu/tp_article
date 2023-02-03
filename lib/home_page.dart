import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body: FutureBuilder<List<String>?>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: [
                Center(
                  child: Text(snapshot.data),
                )
              ],
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                "${snapshot.error}",
                style: const TextStyle(fontSize: 42, color: Colors.red),
              ),
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }

  Future<List<String>?> fetchData() async {
    List<String> fruits = [
      'apple',
      'orange',
      'grapes',
      'jackfruit',
      'dates',
      'kiwi',
    ];
    return Future.delayed(
      const Duration(seconds: 2),
      () => List<String>.generate(fruits.length, (n) => n.toString()),
    );
  }
}
