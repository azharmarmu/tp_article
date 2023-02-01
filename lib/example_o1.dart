import 'package:flutter/material.dart';

class TextButtonEX extends StatefulWidget {
  const TextButtonEX({Key? key}) : super(key: key);
 
  @override
  State<TextButtonEX> createState() => _TextButtonEXState();
}
 
class _TextButtonEXState extends State<TextButtonEX> {
  String _buttonText = "Text Button";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TP TextButton Demo"),
        backgroundColor: Color.fromARGB(255, 79, 215, 84),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: Image.network(
                  "https://www.tutorialspoint.com/market/public/assets/images/logo-color.png"),
            ),
            TextButton(
              child: Text(
                _buttonText,
                style: TextStyle(fontSize: 25),
              ),
              onPressed: () {},
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  elevation: 2,
                  backgroundColor:  Color.fromARGB(255, 79, 215, 84)
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
