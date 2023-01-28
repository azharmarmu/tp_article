import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double num1, num2, output = 0;
  final String add = '+';
  final String sub = '-';
  final String mul = '×';
  final String div = '÷';
  String? selectedOperator;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials Point'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Calculator',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                CustomTextField(
                  hint: '1st Number',
                  onChanged: (value) {
                    num1 = double.parse(value ?? '0');
                  },
                ),
                const SizedBox(width: 8),
                CustomTextField(
                  hint: '2nd Number',
                  onChanged: (value) {
                    num2 = double.parse(value ?? '0');
                  },
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  selectedOperator: selectedOperator,
                  symbol: add,
                  onTap: () {
                    setState(() {
                      selectedOperator = add;
                      output = (num1 + num2);
                    });
                  },
                ),
                CustomButton(
                  selectedOperator: selectedOperator,
                  symbol: sub,
                  onTap: () {
                    setState(() {
                      selectedOperator = sub;
                      output = (num1 - num2);
                    });
                  },
                ),
                CustomButton(
                  selectedOperator: selectedOperator,
                  symbol: mul,
                  onTap: () {
                    setState(() {
                      selectedOperator = mul;
                      output = (num1 * num2);
                    });
                  },
                ),
                CustomButton(
                  selectedOperator: selectedOperator,
                  symbol: div,
                  onTap: () {
                    setState(
                      () {
                        selectedOperator = div;
                        if (num2 == 0) {
                          output = -1;
                        } else {
                          output = (num1 / num2).toDouble();
                        }
                      },
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Output',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  output.toStringAsFixed(2),
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
