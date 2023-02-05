import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body:ListView(
        padding:const EdgeInsets.only(top: 50.0),
          children:[
            const Text("Simple Marquee"),
            simpleMarquee(),
            const Text("Complex Marquee"),
            myMarquee(),
          ].map(_wrapMarquee).toList(),
      )
    );
  }
  Widget simpleMarquee(){
    return Marquee(
    text: 'This is Simple Marquee only Text parameter is passed ',
    );
  }
  Widget myMarquee(){
    return Marquee(
      text: 'This is a complex Marquee all the properties are used',
      style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      blankSpace: 20.0,
      velocity: 70.0,
      pauseAfterRound: const Duration(seconds: 1),
      startPadding:10.0,
      accelerationCurve: Curves.linear,
      accelerationDuration:const Duration(seconds: 1),
      decelerationCurve: Curves.easeOut,
      //
    );

  }
  Widget _wrapMarquee(Widget child){
    return Padding(
      padding: const EdgeInsets.all(17),
      child: Container(
        height: 30.0,
        color: Colors.white,
        child: child,
      ),
    );
  }
}
