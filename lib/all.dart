import 'package:flutter/material.dart';

class AllDirectional extends StatelessWidget {
  const AllDirectional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TurtorialsPoint'),
          backgroundColor: Colors.greenAccent[400], //<Widget>[]
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
                        color: Colors.blue, width: 4, style: BorderStyle.solid),
                    top: BorderSide(
                        color: Colors.green,
                        width: 4,
                        style: BorderStyle.solid), //BorderSide
                    bottom: BorderSide(
                        color: Colors.blue,
                        width: 8,
                        style: BorderStyle.solid), //BorderSide//BorderSide
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
