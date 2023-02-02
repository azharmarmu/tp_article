import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point - After Clipping'),
      ),
      body: Center(
        child: ClipRect(
          child: Align(
            widthFactor: 0.5,
              heightFactor: 0.7,
              child: Image.network(
                'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              )
            ),
           ),
          ),
         );
  }
}
