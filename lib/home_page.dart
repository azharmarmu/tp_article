import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('BorderSide Widget'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
          border: Border(
             top: BorderSide(color: Colors.red, width: 10.0, style: BorderStyle.solid),
          bottom: BorderSide(color: Colors.red, width: 10.0, style: BorderStyle.solid),
            right: BorderSide(color: Colors.red, width: 5.0, style: BorderStyle.solid),
            left: BorderSide(color: Colors.red, width: 5.0, style: BorderStyle.solid),
            ),
          ),
          child:const Text("Tutorialspoint",style: TextStyle(fontSize: 32)),
        ),

      ),
    );
  }
}
