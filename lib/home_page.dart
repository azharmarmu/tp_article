import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 24.0,
          semanticLabel: 'Back button pressed',
        ),
        title: const Text('Icon Widget'),
        actions: const [
          Icon(
            Icons.notification_add_sharp,
            color: Colors.white,
            size: 24.0,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
              'https://www.tutorialspoint.com/market/public/assets/images/logo-color.png'),
        ],
      ),
    );
  }
}
