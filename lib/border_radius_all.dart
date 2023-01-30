import 'package:flutter/material.dart';

class BorderRadiusAll extends StatelessWidget {
  const BorderRadiusAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorialspoint'),
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
                 borderRadius: 
                 BorderRadius.vertical(
                    top: Radius.circular(10),
                    bottom: Radius.circular(30),
                  ),
                  //  BorderRadius.only(
                  //   topLeft: Radius.circular(5),
                  //   topRight: Radius.circular(10),
                  //   bottomLeft: Radius.circular(15),
                  //   bottomRight: Radius.circular(20),
                  // ),
                  // BorderRadius.horizontal(
                  //   left: Radius.circular(15),
                  //   right: Radius.circular(30),
                  // ), 
                 // BorderRadius.circular(50.0),
                 // BorderRadius.all(
                //   Radius.circular(10),
                ), //BorderRadius.all
              ), //BorderRadius.all
            ), //BoxDecoration
        
        ),
      ), //Center
    ); //Scaffold
    //Debug banner is turned off
    //MaterialApp
  }
}
