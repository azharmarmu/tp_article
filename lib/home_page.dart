import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fading a Widget'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0: 0.0,
          duration:const Duration(milliseconds: 500),
          child:Container(
            width: 300,
            height: 300,
            color:Colors.deepPurpleAccent
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: (){
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: const Icon(Icons.flip),
      ),

    );

  }
}

