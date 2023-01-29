import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point - BoxDecoration'),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            image: const DecorationImage(image: NetworkImage('https://www.tutorialspoint.com/images/logo.png'),fit: BoxFit.contain),
            border: Border.all(width: 8,color: Colors.green),
            borderRadius: BorderRadius.circular(18),
            boxShadow:const [BoxShadow(
              color:Colors.greenAccent,
              offset: Offset(5.0, 5.0),
              spreadRadius: 2.0,
              blurRadius: 10.0,
            )],
            backgroundBlendMode: BlendMode.overlay,

          ),
        ),
      ),
    );
  }
}
