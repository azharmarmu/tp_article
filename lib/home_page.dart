import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int itemIndex = 0;
    final items = [
      const Item1(),
      const Item2(),
      const Item3(),
      const Item4(),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Tutorials Points",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 35,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: items[itemIndex],
      bottomNavigationBar: customBottomBar(context),
    );
  }
    Container customBottomBar(BuildContext context){
      return Container(
        height: 60,
        decoration:const  BoxDecoration(
          color: Colors.teal,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {
              setState(() {
                itemIndex = 0;
              });
            }, icon: itemIndex == 0 ?
            const Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 35,
            ):const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 35,
            ),
            ),
            IconButton(onPressed: () {
              setState(() {
                itemIndex= 1;
              });
            }, icon: itemIndex == 1 ?
            const Icon(
              Icons.work_rounded,
              color: Colors.white,
              size: 35,
            ) : const Icon(
              Icons.work_outline_outlined,
              color: Colors.white,
              size: 35,
            ),
            ),
            IconButton(onPressed: () {
              setState(() {
                itemIndex= 2;
              });
            }, icon: itemIndex == 2 ?
            const Icon(
              Icons.widgets_rounded,
              color: Colors.white,
              size: 35,
            ) : const Icon(
              Icons.widgets_outlined,
              color: Colors.white,
              size: 35,
            ),
            ),
            IconButton(onPressed: () {
              setState(() {
                itemIndex = 3;
              });
            }, icon: itemIndex == 3 ?
            const Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            ) : const Icon(
              Icons.person_outlined,
              color: Colors.white,
              size: 35,
            ),
            ),
          ],
        ),
      );
    }
}


class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.shade300,
      child: const Center(
        child: Text(
              "Home Page",
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          "Work",
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          "Settings",
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          "User",
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}




