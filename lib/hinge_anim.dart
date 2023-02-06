import 'package:flutter/material.dart';

class HingeAnimations extends StatefulWidget {
  const HingeAnimations({Key? key}) : super(key: key);

  @override
  State<HingeAnimations> createState() => _HingeAnimationsState();
}

class _HingeAnimationsState extends State<HingeAnimations> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _slideAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    _rotationAnimation = Tween(end: 0.15, begin: 0.0)
    .animate(
      CurvedAnimation(parent: _controller, curve: const Interval(
        0.0,
        0.5,
        curve:  Curves.bounceInOut
      ),),
    );

    _slideAnimation = Tween(begin: 100.0, end: 600.0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(
        0.5,
        1.0,
        curve: Curves.fastOutSlowIn
      ),),
    );

    _opacityAnimation = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
            0.5,
            1.0,
            curve: Curves.fastOutSlowIn),
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text("TP - Hinge Animation"),
        centerTitle: true,
      ),
      body: AnimatedBuilder(
        animation: _slideAnimation,
        builder: (ctx, ch) => Container(
          width: 200,
          height: 100,
          padding: const EdgeInsets.all(0),
          margin: EdgeInsets.only(
          left: 75,
          top: _slideAnimation.value,
        ),
          child: RotationTransition(
            turns: _rotationAnimation,
            child: Center(
              child: Text('Tutorialspoint', style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 0, 128, _opacityAnimation.value)
              ),),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton:
      FloatingActionButton(
        backgroundColor: Colors.green[300],
        onPressed: (){
          _controller.forward();
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
