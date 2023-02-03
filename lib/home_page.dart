import 'package:flutter/material.dart';

class BorderRadiusAll extends StatelessWidget {
  const BorderRadiusAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorialspoint'),
        backgroundColor: Colors.greenAccent[400],
      ), //AppBar
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            height: 250,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://www.tutorialspoint.com/market/public/assets/images/logo-color.png'),
                ),
                //Border.all
                /*** The BorderRadius widget  is here ***/
                border: Border.all(
                    color: const Color(0xFF000000),
                    width: 4.0,
                    style: BorderStyle.solid), //Border.all
                /*** The BorderRadius widget  is here ***/
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ), //BorderRadius.all
              ), //BorderRadius.all
            ), //BoxDecoration
          ),
        ),
      ), //Center
    ); //Scaffold
    //MaterialApp
  }
}
