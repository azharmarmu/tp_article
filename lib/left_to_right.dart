import 'package:flutter/material.dart';

class LeftToRight extends StatelessWidget {
  const LeftToRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TurtorialsPoint'),
          backgroundColor: Colors.greenAccent[400],
           //<Widget>[]
        ), //AppBar
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 250,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://www.tutorialspoint.com/images/logo.png'), //NetworkImage
                  ), //DecorationImage
                  border: BorderDirectional(
                    start: BorderSide(
                        color: Colors.green,
                        width: 4,
                        style: BorderStyle.solid), //BorderSide
                    end: BorderSide(
                        color: Colors.blue,
                        width: 4,
                        style: BorderStyle.solid), //BorderSide
                  ), //Border
                ), //BoxDecoration
              ), //Container
            ), //SizedBox
          ), //Padding
        ), //Center
      ),
    ); //Scaffold
  }
}
