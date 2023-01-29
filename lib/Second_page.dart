import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('BorderSide Widget'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 8,
              color: Colors.deepPurpleAccent
              ),
          ),
          child:const Text("Tutorialspoint",style: TextStyle(fontSize: 32)),
        ),

      ),
    );
  }
}
