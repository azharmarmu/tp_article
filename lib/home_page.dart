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
        child: FutureBuilder<List<String>>(
          future: fetchFruits(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text(
                      '${index + 1}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    title: Text(
                      snapshot.data[index][0].toUpperCase() +
                          snapshot.data[index].substring(1),
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Future<List<String>> fetchFruits() async {
    return Future.delayed(
      const Duration(seconds: 5),
      () => [
        'apple',
        'banana',
        'grapes',
      ],
    );
  }
}
