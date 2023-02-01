import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point - clip Rect'),
      ),
      body: Center(
        child: ClipRect(
          child: Align(
            widthFactor: 0.3,
              heightFactor: 1.0,
              child: Image.network(
                'https://images.pexels.com/photos/1534411/pexels-photo-1534411.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              )
            ),
           ),
          ),
         );
  }
}
