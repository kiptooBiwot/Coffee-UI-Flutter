import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CoffeeType extends StatelessWidget {
  const CoffeeType({
    Key? key,
    required this.coffeeType,
    required this.isSelected,
  }) : super(key: key);

  final String coffeeType;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: Text(
        coffeeType,
        style: TextStyle(
          color: isSelected ? Colors.orange : Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
