//This is a Custom Button Widget.
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.selectedOperator,
    required this.onTap,
    required this.symbol,
  }) : super(key: key);

  final String? selectedOperator;
  final String symbol;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 64,
        width: 64,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(color: Colors.blueGrey),
          color: selectedOperator == symbol ? Colors.blueGrey : Colors.white,
        ),
        child: Center(
          child: Text(
            symbol,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color:
                  selectedOperator == symbol ? Colors.white : Colors.blueGrey,
            ),
          ),
        ),
      ),
    );
  }
}
