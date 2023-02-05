import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TP Padding'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('all padding'),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(right: 35),
                  child: Text('Right padding'),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text('vertical padding'),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('left padding'),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 1.0,
                    style: BorderStyle.solid,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('horizontal padding'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
