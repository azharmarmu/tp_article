import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TP Rotate Transition'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Image.network(
                  'https://www.tutorialspoint.com/market/public/assets/images/logo-color.png',
                ),
              ),
              TextButton(
                  child: const Text('Click me'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        curve: Curves.bounceOut,
                        type: PageTransitionType.rotate,
                        alignment: Alignment.topCenter,
                        child: const SecondPage(),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  /// constructor of the page
  const SecondPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TP Rotate Transition'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('Second Page'),
      ),
    );
  }
}

