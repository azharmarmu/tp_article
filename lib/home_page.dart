import 'package:flutter/material.dart';
import 'package:tp_article/cart.dart';
import 'package:tp_article/home.dart';
import 'package:tp_article/profile.dart';
import 'package:tp_article/settings.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  final activePage = [const Home(), const Cart(),const Profile(),const Setting()];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body: activePage[currentPage],
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.shopping_cart, title: 'Favourite'),
          TabItem(icon: Icons.person, title: 'Profile'),
          TabItem(icon: Icons.settings, title: 'Settings'),
        ],
        initialActiveIndex: currentPage,
        onTap: (int index){
          setState(() {

            currentPage = index;
          });
        },
      ),
    );
  }
}


