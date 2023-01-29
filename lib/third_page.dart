import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point - BoxDecoration'),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: 370,
          decoration: BoxDecoration(
            color: Colors.white,
            image: const DecorationImage(image: NetworkImage('https://www.tutorialspoint.com/images/logo.png'),fit: BoxFit.contain),
            border: Border.all(width: 8,color: Colors.green),
            boxShadow:const [BoxShadow(
              color:Colors.greenAccent,
              offset: Offset(5.0, 5.0),
              spreadRadius: 2.0,
              blurRadius: 10.0,
            )],
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
