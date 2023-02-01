import 'package:flutter/material.dart';
import 'package:tp_article/contact_list_using_circle_avatar.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorials Point',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactListCircleAvatar(),
    );
  }
}